package com.govsoft.framework.service;

import javax.annotation.Resource;

import org.junit.Assert;
import org.junit.Test;

import com.govsoft.framework.SpringTxTestCase;
import com.govsoft.framework.model.User;

public class UserServiceTest extends SpringTxTestCase {
	
	@Resource(name = "userService")
	private UserService userService;
	
	@Test
	public void find(){
		User user = userService.findById("93fa48c8-d360-11df-ac02-459a394bcf2c");
		Assert.assertNotNull(user);
		//Assert.assertEquals("ADMIN", user.getLoginName());
	}
	
	@Test
	public void save(){
		
	}
	
	@Test
	public void update(){
		
	}
	
	@Test
	public void delete(){
		
	}
}
