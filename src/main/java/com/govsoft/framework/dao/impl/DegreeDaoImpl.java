package com.govsoft.framework.dao.impl;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.govsoft.framework.common.hibernate.GenericDaoImpl;
import com.govsoft.framework.dao.DegreeDao;
import com.govsoft.framework.model.Degree;

@Repository("degreeDao")
public class DegreeDaoImpl extends GenericDaoImpl<Degree, String> implements
		DegreeDao {
	@Resource(name = "sessionFactory")
	private SessionFactory sessionFactory;

	@SuppressWarnings("unused")
	@PostConstruct
	private void init() {
		super.setSessionFactory(sessionFactory);
	}
}
