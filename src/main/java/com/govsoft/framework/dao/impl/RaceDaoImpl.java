package com.govsoft.framework.dao.impl;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.govsoft.framework.common.hibernate.GenericDaoImpl;
import com.govsoft.framework.dao.RaceDao;
import com.govsoft.framework.model.Race;

@Repository("raceDao")
public class RaceDaoImpl extends GenericDaoImpl<Race, String> implements
		RaceDao {
	@Resource(name = "sessionFactory")
	private SessionFactory sessionFactory;

	@SuppressWarnings("unused")
	@PostConstruct
	private void init() {
		super.setSessionFactory(sessionFactory);
	}
}
