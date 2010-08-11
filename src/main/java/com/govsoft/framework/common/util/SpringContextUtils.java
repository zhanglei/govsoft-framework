package com.govsoft.framework.common.util;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.BeanCreationException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;

public class SpringContextUtils implements ApplicationContextAware {

	private static Log log = LogFactory.getLog(SpringContextUtils.class);

	private static ApplicationContext applicationContext;

	public SpringContextUtils() {
		super();
	}

	@SuppressWarnings("static-access")
	public void setApplicationContext(ApplicationContext context)
			throws BeansException {
		if (this.applicationContext != null) {
			throw new BeanCreationException(
					"ApplicationContextHolder already holded 'applicationContext'.");
		}
		this.applicationContext = context;
		log.info("holded applicationContext,displayName:"
				+ context.getDisplayName());
	}

	public static ApplicationContext getApplicationContext() {
		if (applicationContext == null)
			throw new IllegalStateException(
					"'applicationContext' property is null,ApplicationContextHolder not yet init.");
		return applicationContext;
	}

	@SuppressWarnings("unchecked")
	public static <T> T getBean(String beanName) {
		return (T)getApplicationContext().getBean(beanName);
	}

}
