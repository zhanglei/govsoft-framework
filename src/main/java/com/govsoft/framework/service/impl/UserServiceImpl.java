package com.govsoft.framework.service.impl;

import java.util.List;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;

import org.springframework.dao.DataAccessException;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.govsoft.framework.common.service.GenericSerivceImpl;
import com.govsoft.framework.dao.UserDao;
import com.govsoft.framework.model.User;

@Service("userService")
@Transactional
public class UserServiceImpl extends GenericSerivceImpl<User, String> implements
		com.govsoft.framework.service.UserService {

	@Resource(name = "userDao")
	private UserDao userDao;

	@SuppressWarnings("unused")
	@PostConstruct
	private void init() {
		super.setGenericDao(userDao);
	}

	@Transactional(readOnly = true)
	public User loadUserByUsername(String userName)
			throws UsernameNotFoundException, DataAccessException {
		User exampleInstance = new User();
		exampleInstance.setLoginName(userName);
		List<User> list = userDao.findByExample(exampleInstance);
		if (!list.isEmpty()) {
			User user = userDao.findByExample(exampleInstance).get(0);
			return user;
		} else {
			return null;
		}
	}

}
