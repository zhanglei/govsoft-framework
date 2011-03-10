package com.govsoft.framework.ws.server.result;

import javax.xml.bind.annotation.XmlType;

import com.govsoft.framework.ws.server.WsConstants;
import com.govsoft.framework.ws.server.dto.UserDTO;

@XmlType(name = "GetUserResult", namespace = WsConstants.NS)
public class GetUserResult extends WSResult {
	
	private UserDTO user;

	public UserDTO getUser() {
		return user;
	}

	public void setUser(UserDTO user) {
		this.user = user;
	}
}
