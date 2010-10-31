package com.govsoft.framework.security.web.session;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.session.SessionInformation;
import org.springframework.security.core.session.SessionRegistry;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.logout.LogoutHandler;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.security.web.util.UrlUtils;
import org.springframework.util.Assert;

public class ConcurrentSessionFilter extends
		org.springframework.security.web.session.ConcurrentSessionFilter {

	private SessionRegistry sessionRegistry;
	private String expiredUrl;
	private LogoutHandler[] handlers = new LogoutHandler[] { new SecurityContextLogoutHandler() };
	private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();

	// @Resource(name = "memcachedClient")
	// private MemcachedClient memcachedClient;

	// ~ Methods
	// ========================================================================================================

	@Override
	public void afterPropertiesSet() {
		Assert.notNull(sessionRegistry, "SessionRegistry required");
		Assert.isTrue(expiredUrl == null
				|| UrlUtils.isValidRedirectUrl(expiredUrl), expiredUrl
				+ " isn't a valid redirect URL");
	}

	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) res;

		HttpSession session = request.getSession(false);

		if (session != null) {
			SessionInformation info = sessionRegistry
					.getSessionInformation(session.getId());

			if (info != null) {

				if (info.isExpired()) {
					// Expired - abort processing
					doLogout(request, response);
					// try {
					// memcachedClient.delete(Constants.SESSION_KEY);
					// } catch (TimeoutException e) {
					// e.printStackTrace();
					// } catch (InterruptedException e) {
					// e.printStackTrace();
					// } catch (MemcachedException e) {
					// e.printStackTrace();
					// }
					String targetUrl = determineExpiredUrl(request, info);

					if (targetUrl != null) {
						redirectStrategy.sendRedirect(request, response,
								targetUrl);

						return;
					} else {
						response
								.getWriter()
								.print(
										"This session has been expired (possibly due to multiple concurrent "
												+ "logins being attempted as the same user).");
						response.flushBuffer();
					}

					return;
				} else {
					// Non-expired - update last request date/time
					info.refreshLastRequest();
					// try {
					// UserDetails userDetails = (UserDetails) memcachedClient
					// .get(Constants.SESSION_KEY);
					// if (userDetails != null) {
					// memcachedClient.set(Constants.SESSION_KEY,
					// Constants.SESSION_EXPIRY_TIME, userDetails);
					// }
					//
					// } catch (TimeoutException e) {
					// e.printStackTrace();
					// } catch (InterruptedException e) {
					// e.printStackTrace();
					// } catch (MemcachedException e) {
					// e.printStackTrace();
					// }

				}
			}
		}

		chain.doFilter(request, response);
	}

	protected String determineExpiredUrl(HttpServletRequest request,
			SessionInformation info) {
		return expiredUrl;
	}

	private void doLogout(HttpServletRequest request,
			HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();

		for (int i = 0; i < handlers.length; i++) {
			handlers[i].logout(request, response, auth);
		}
	}

	public void setExpiredUrl(String expiredUrl) {
		this.expiredUrl = expiredUrl;
	}

	public void setSessionRegistry(SessionRegistry sessionRegistry) {
		this.sessionRegistry = sessionRegistry;
	}

	public void setLogoutHandlers(LogoutHandler[] handlers) {
		Assert.notNull(handlers);
		this.handlers = handlers;
	}

	public void setRedirectStrategy(RedirectStrategy redirectStrategy) {
		this.redirectStrategy = redirectStrategy;
	}

}
