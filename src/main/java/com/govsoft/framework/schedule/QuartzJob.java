package com.govsoft.framework.schedule;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class QuartzJob {

	private static Logger logger = LoggerFactory.getLogger(QuartzJob.class);
	
	public void execute() {
		logger.info("Execute QuartzJob ...");
	}
	
}
