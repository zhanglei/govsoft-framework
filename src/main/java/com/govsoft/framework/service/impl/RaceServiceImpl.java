package com.govsoft.framework.service.impl;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.govsoft.framework.common.service.GenericSerivceImpl;
import com.govsoft.framework.dao.RaceDao;
import com.govsoft.framework.model.Race;
import com.govsoft.framework.service.RaceService;

@Service("raceService")
@Transactional
public class RaceServiceImpl extends GenericSerivceImpl<Race, String> implements
		RaceService {
	@Resource(name = "raceDao")
	private RaceDao raceDao;

	@SuppressWarnings("unused")
	@PostConstruct
	private void init() {
		super.setGenericDao(raceDao);
	}
}
