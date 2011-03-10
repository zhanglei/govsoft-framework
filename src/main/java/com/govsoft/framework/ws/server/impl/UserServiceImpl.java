package com.govsoft.framework.ws.server.impl;

import javax.annotation.Resource;
import javax.jws.WebService;

import org.dozer.DozerBeanMapper;
import org.hibernate.ObjectNotFoundException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.Assert;

import com.govsoft.framework.model.User;
import com.govsoft.framework.ws.server.UserService;
import com.govsoft.framework.ws.server.WsConstants;
import com.govsoft.framework.ws.server.dto.UserDTO;
import com.govsoft.framework.ws.server.result.GetUserResult;
import com.govsoft.framework.ws.server.result.WSResult;

@WebService(serviceName = "UserService", portName = "UserServicePort", endpointInterface = "com.govsoft.framework.ws.server.UserService", targetNamespace = WsConstants.NS)
public class UserServiceImpl implements UserService {

	private static Logger logger = LoggerFactory
			.getLogger(UserServiceImpl.class);

	@Resource(name = "userService")
	private com.govsoft.framework.service.UserService userService;
	
	@Resource(name = "dozer")
	private DozerBeanMapper dozer;

	@Override
	public GetUserResult getUser(String id) {
		// 校验请求参数
		try {
			Assert.notNull(id, "id参数为空");
		} catch (IllegalArgumentException e) {
			logger.error(e.getMessage());
			return WSResult.buildResult(GetUserResult.class,
					WSResult.PARAMETER_ERROR, e.getMessage());
		}
		try {
			User entity = userService.findById(id);
			UserDTO dto = dozer.map(entity, UserDTO.class);
			GetUserResult result = new GetUserResult();
			result.setUser(dto);
			return result;
		} catch (ObjectNotFoundException e) {
			String message = "用户不存在(id:" + id + ")";
			logger.error(message, e);
			return WSResult.buildResult(GetUserResult.class,
					WSResult.PARAMETER_ERROR, message);
		} catch (RuntimeException e) {
			logger.error(e.getMessage(), e);
			return WSResult.buildDefaultErrorResult(GetUserResult.class);
		}
	}

}
