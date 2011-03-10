package com.govsoft.framework.rs.dto;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class UserDTO {

	private String id;

	private String loginName;

	private String realName;

	public UserDTO() {

	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	public String getRealName() {
		return realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

}
