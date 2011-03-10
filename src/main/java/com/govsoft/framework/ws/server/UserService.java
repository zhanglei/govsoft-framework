package com.govsoft.framework.ws.server;

import javax.jws.WebParam;
import javax.jws.WebService;

import com.govsoft.framework.ws.server.result.GetUserResult;

@WebService(name = "UserService", targetNamespace = WsConstants.NS)
public interface UserService {
	GetUserResult getUser(@WebParam(name = "id") String id);
}
