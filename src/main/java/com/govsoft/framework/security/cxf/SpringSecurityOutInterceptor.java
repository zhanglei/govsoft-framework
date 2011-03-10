/**
 * Copyright (c) 2005-2010 springside.org.cn
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * 
 * $Id: Log4jMBean.java 1192 2010-09-03 15:42:13Z calvinxiu $
 */
package com.govsoft.framework.security.cxf;

import org.apache.cxf.interceptor.Fault;
import org.apache.cxf.message.Message;
import org.apache.cxf.phase.AbstractPhaseInterceptor;
import org.apache.cxf.phase.Phase;
import org.springframework.security.core.context.SecurityContextHolder;

/**
 * 清除SecurityContext的Interceptor.
 * 
 * @author calvin
 */
public class SpringSecurityOutInterceptor extends AbstractPhaseInterceptor<Message> {

	public SpringSecurityOutInterceptor() {
		super(Phase.PRE_PROTOCOL);
	}

	@Override
	public void handleMessage(Message message) throws Fault {
		SecurityContextHolder.clearContext();
	}
}
