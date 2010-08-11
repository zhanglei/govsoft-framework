package com.govsoft.framework.service;

import com.govsoft.framework.common.service.GenericSerivce;
import com.govsoft.framework.model.User;

public interface UserService extends GenericSerivce<User, String> {

	User loadUserByLoginName(String loginName);

}
