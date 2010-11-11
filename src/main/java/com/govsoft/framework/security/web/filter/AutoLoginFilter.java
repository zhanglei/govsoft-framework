package com.govsoft.framework.security.web.filter;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Required;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.filter.GenericFilterBean;

import com.govsoft.framework.security.web.util.SpringSecurityUtils;
import com.govsoft.framework.service.UserService;

public class AutoLoginFilter extends GenericFilterBean {

	private boolean enabled = false;

	private String defaultUserName;

	@Resource(name = "userService")
	private UserService userService;

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	@Required
	public void setDefaultUserName(String defaultUserName) {
		this.defaultUserName = defaultUserName;
	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		// 如果被激活且当前用户未登录则进行登录
		if (enabled && SpringSecurityUtils.getCurrentUser() == null) {
			UserDetails userDetails = userService
					.loadUserByUsername(defaultUserName);

			if (userDetails == null) {
				throw new RuntimeException("默认用户" + defaultUserName + "不存在");
			}

			SpringSecurityUtils.saveUserDetailsToContext(userDetails,
					(HttpServletRequest) request);
		}

		chain.doFilter(request, response);
	}

}
