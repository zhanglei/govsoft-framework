package com.govsoft.framework.security.web.access.intercept;

import java.util.Collection;

import org.springframework.beans.factory.InitializingBean;
import org.springframework.security.access.ConfigAttribute;
import org.springframework.security.web.access.intercept.FilterInvocationSecurityMetadataSource;

public class SecureResourceFilterInvocationSecurityMetadataSource implements
		FilterInvocationSecurityMetadataSource, InitializingBean {

	public SecureResourceFilterInvocationSecurityMetadataSource() {
		super();
	}

	public Collection<ConfigAttribute> getAllConfigAttributes() {
		return null;
	}

	public Collection<ConfigAttribute> getAttributes(Object object)
			throws IllegalArgumentException {
		return null;
	}

	public boolean supports(Class<?> clazz) {
		return false;
	}

	public void afterPropertiesSet() throws Exception {

	}

}
