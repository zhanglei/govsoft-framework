package com.govsoft.framework.service.impl;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.govsoft.framework.common.service.GenericSerivceImpl;
import com.govsoft.framework.dao.DegreeDao;
import com.govsoft.framework.model.Degree;

@Service("degreeService")
@Transactional
public class DegreeServiceImpl extends GenericSerivceImpl<Degree, String>
		implements com.govsoft.framework.service.DegreeService {
	@Resource(name = "degreeDao")
	private DegreeDao degreeDao;

	@SuppressWarnings("unused")
	@PostConstruct
	private void init() {
		super.setGenericDao(degreeDao);
	}
}
