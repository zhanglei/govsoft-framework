package com.govsoft.framework.service;

import org.springframework.dao.DataAccessException;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.govsoft.framework.common.service.GenericSerivce;
import com.govsoft.framework.model.User;

public interface UserService extends GenericSerivce<User, String>,
		UserDetailsService {
	User loadUserByUsername(String username) throws UsernameNotFoundException,
			DataAccessException;
}
