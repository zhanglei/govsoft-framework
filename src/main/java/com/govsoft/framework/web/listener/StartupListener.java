package com.govsoft.framework.web.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class StartupListener implements ServletContextListener {

	private static final Log log = LogFactory.getLog(StartupListener.class);

	public void contextInitialized(ServletContextEvent servletContextEvent) {
		log.debug("Initializing context...");
	}

	public void contextDestroyed(ServletContextEvent servletContextEvent) {
	}

}
