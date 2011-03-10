package com.govsoft.framework.schedule;

import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.scheduling.quartz.QuartzJobBean;

public class QuartzClusterableJob extends QuartzJobBean {
	private static Logger logger = LoggerFactory
			.getLogger(QuartzClusterableJob.class);

	@Override
	protected void executeInternal(JobExecutionContext context)
			throws JobExecutionException {
		logger.info("executeInternal QuartzClusterableJob ...");
	}

}
