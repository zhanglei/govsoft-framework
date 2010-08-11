package com.govsoft.framework.service.impl;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.govsoft.framework.common.service.GenericSerivceImpl;
import com.govsoft.framework.dao.OrgDao;
import com.govsoft.framework.model.Org;
@Service("orgService")
@Transactional
public class OrgServiceImpl extends GenericSerivceImpl<Org, String> implements
		com.govsoft.framework.service.OrgService {
	@Resource(name = "orgDao")
	private OrgDao orgDao;

	@SuppressWarnings("unused")
	@PostConstruct
	private void init() {
		super.setGenericDao(orgDao);
	}
}
