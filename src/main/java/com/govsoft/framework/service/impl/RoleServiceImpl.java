package com.govsoft.framework.service.impl;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.govsoft.framework.common.service.GenericSerivceImpl;
import com.govsoft.framework.dao.RoleDao;
import com.govsoft.framework.model.Role;

@Service("roleService")
@Transactional
public class RoleServiceImpl extends GenericSerivceImpl<Role, String> implements
		com.govsoft.framework.service.RoleService {

	@Resource(name = "roleDao")
	private RoleDao roleDao;

	@SuppressWarnings("unused")
	@PostConstruct
	private void init() {
		 super.setGenericDao(roleDao);
	}

}
