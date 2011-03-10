package com.govsoft.framework.service.impl;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.govsoft.framework.common.service.GenericSerivceImpl;
import com.govsoft.framework.dao.RegionDao;
import com.govsoft.framework.model.Region;
import com.govsoft.framework.service.RegionService;

@Service("regionService")
@Transactional
public class RegionServiceImpl extends GenericSerivceImpl<Region, String>
		implements RegionService {
	@Resource(name = "regionDao")
	private RegionDao regionDao;

	@SuppressWarnings("unused")
	@PostConstruct
	private void init() {
		super.setGenericDao(regionDao);
	}

}
