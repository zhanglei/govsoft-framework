package com.govsoft.framework.ws.server.dto;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlType;

import com.govsoft.framework.ws.server.WsConstants;

@XmlType(name = "User", namespace = WsConstants.NS)
public class UserDTO implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

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
