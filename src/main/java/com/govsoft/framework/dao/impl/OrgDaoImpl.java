package com.govsoft.framework.dao.impl;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.govsoft.framework.common.hibernate.GenericDaoImpl;
import com.govsoft.framework.model.Org;

@Repository("orgDao")
public class OrgDaoImpl extends GenericDaoImpl<Org, String> implements
		com.govsoft.framework.dao.OrgDao {
	
	@Resource(name = "sessionFactory")
	private SessionFactory sessionFactory;

	@SuppressWarnings("unused")
	@PostConstruct
	private void init() {
		super.setSessionFactory(sessionFactory);
	}
}
