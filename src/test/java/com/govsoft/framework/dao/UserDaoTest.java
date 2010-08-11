package com.govsoft.framework.dao;

import javax.annotation.Resource;

import org.junit.Test;

import com.govsoft.framework.SpringTxTestCase;
import com.govsoft.framework.dao.UserDao;

public class UserDaoTest extends SpringTxTestCase {
	
	@SuppressWarnings("unused")
	@Resource(name = "userDao")
	private UserDao userDao;

	@Test
	public void find(){
		
	}
	
	@Test
	public void save() {

	}

	@Test
	public void update() {

	}

	@Test
	public void delete() {

	}
}
