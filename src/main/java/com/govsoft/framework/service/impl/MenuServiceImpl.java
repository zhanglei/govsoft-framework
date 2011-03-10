package com.govsoft.framework.service.impl;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.govsoft.framework.common.service.GenericSerivceImpl;
import com.govsoft.framework.dao.MenuDao;
import com.govsoft.framework.model.Menu;

@Service("menuService")
@Transactional
public class MenuServiceImpl extends GenericSerivceImpl<Menu, String> implements
		com.govsoft.framework.service.MenuService {

	@Resource(name = "menuDao")
	private MenuDao menuDao;

	@SuppressWarnings("unused")
	@PostConstruct
	private void init() {
		super.setGenericDao(menuDao);
	}
}
