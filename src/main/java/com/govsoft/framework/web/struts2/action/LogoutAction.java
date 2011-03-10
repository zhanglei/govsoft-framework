package com.govsoft.framework.web.struts2.action;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.opensymphony.xwork2.ActionSupport;

@ParentPackage(value = "crud-default")
@Namespace("")
@Results( { @Result(name = "logout", location = "login.do", type = "redirect") })
public class LogoutAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private Logger logger = LoggerFactory.getLogger(getClass());

	public String logout() throws Exception {
		logger
				.info("Entering 'logout' method of "
						+ getClass().getSimpleName());
		getSession().removeAttribute("user");
		return "logout";
	}

	public HttpSession getSession() {
		return ServletActionContext.getRequest().getSession();
	}

}
