package com.govsoft.framework.web.struts2.action;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.rubyeye.xmemcached.MemcachedClient;

import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.lang.StringUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.hibernate.Hibernate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.govsoft.framework.model.User;
import com.govsoft.framework.service.UserService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

@ParentPackage(value = "crud-default")
@Namespace("")
@Results( { @Result(name = "main", location = "main.do", type = "redirect"),
		@Result(name = "login", location = "login.do", type = "redirect") })
public class LoginAction extends ActionSupport implements ModelDriven<User>,
		Preparable {

	private static final long serialVersionUID = 1L;

	private static final String LOGINNAME_ERROR = "账号错误!";
	
	private static final String PASSWORD_ERROR = "密码错误!";
	
	private static final String LOGINNAME_OR_PASSWORD_ERROR = "账号或密码错误!";
	
	private static final String VALIDCODE_ERROR = "验证码错误!";
	
	private Logger logger = LoggerFactory.getLogger(getClass());

	private User entity;

	private String id;

	@Resource(name = "userService")
	private UserService userService;

	@Resource(name = "memcachedClient")
	private MemcachedClient memcachedClient;

	public void setId(String id) {
		this.id = id;
	}

	public User getModel() {
		return entity;
	}

	public void prepare() throws Exception {
		if (id != null) {
			entity = userService.findById(id);
		} else {
			entity = new User();
		}
	}

	public String login() throws Exception {
		logger.info("Entering 'login' method of " + getClass().getSimpleName());
		String loginName = entity.getLoginName();
		String password = entity.getPassword();
		String rememberPwd = getParameter("rememberPwd");

		if (getRequest().getMethod().equalsIgnoreCase("get")) {
			/* 自动登录 */
			Cookie[] cookies = getRequest().getCookies();
			if (cookies != null && cookies.length >= 3) {
				User user = userService.loadUserByUsername(cookies[0]
						.getValue());
				if (user != null
						&& StringUtils.equals(user.getPassword(), cookies[1]
								.getValue())) {
					return "main";
				}
			}
		}

		if (StringUtils.isEmpty(loginName)) {
			logger.info("帐号不能为空");
			return "login";
		}
		if (StringUtils.isEmpty(password)) {
			logger.info("密码不能为空");
			return "login";
		}
		String validCode = getParameter("validCode");
		logger.info("validCode:" + getSession().getAttribute("validCode"));
		if (!StringUtils.equalsIgnoreCase(validCode, (String) getSession()
				.getAttribute("validCode"))) {
			logger.info("验证码错误");
			addActionError("验证码错误");
			return "login";
		}
		String passwordMd5 = DigestUtils.md5Hex(password);
		User user = (User) userService.loadUserByUsername(loginName);
		if (null == user) {
			logger.info("帐号错误");
			addActionError("帐号错误");
			return "login";
		}
		if (!StringUtils.equals(user.getPassword(), passwordMd5)) {
			logger.info("密码错误");
			addActionError("密码错误");
			return "login";
		}
		if ("true".equalsIgnoreCase(rememberPwd)) {
			Cookie accountCookie = new Cookie("account", user.getLoginName());
			Cookie pwdCookie = new Cookie("pwd", user.getPassword());
			pwdCookie.setMaxAge(60 * 60 * 24 * 365);
			accountCookie.setMaxAge(60 * 60 * 24 * 365);
			getResponse().addCookie(accountCookie);
			getResponse().addCookie(pwdCookie);

		}

		// String ip = getRequest().getRemoteAddr().toString();
		// IPSeeker seeker = IPSeeker.getInstance();
		// String lastLoginIp = "58.251.95.16";
		// String lastLoginCountry = seeker.getCountry(lastLoginIp);
		// getSession().setAttribute("lastLoginCountry", lastLoginCountry);
		Hibernate.initialize(user.getOrg());
		getSession().setAttribute("user", user);
		getSession().setAttribute("menus", user.getMenus());

		return "main";
	}

	public HttpServletResponse getResponse() {
		return ServletActionContext.getResponse();
	}

	public HttpServletRequest getRequest() {
		return ServletActionContext.getRequest();
	}

	public String getParameter(String name) {
		return getRequest().getParameter(name);
	}

	public HttpSession getSession() {
		return ServletActionContext.getRequest().getSession();
	}

}
