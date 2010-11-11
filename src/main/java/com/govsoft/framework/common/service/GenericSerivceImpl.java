package com.govsoft.framework.common.service;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;

import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.DetachedCriteria;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.transaction.annotation.Transactional;

import com.govsoft.framework.common.hibernate.GenericDao;

public class GenericSerivceImpl<T, PK extends Serializable> implements
		GenericSerivce<T, PK> {

	protected Logger logger = LoggerFactory.getLogger(getClass());

	private GenericDao<T, PK> genericDao;

	public GenericSerivceImpl() {
		super();
	}

	// public GenericSerivceImpl(final GenericDao<T, PK> genericDao) {
	// this.genericDao = genericDao;
	// }

	public void setGenericDao(GenericDao<T, PK> genericDao) {
		this.genericDao = genericDao;
	}

	/**
	 * 通过PK判断对象是否存在.
	 * 
	 * @param id
	 * @return boolean
	 */
	@Transactional(readOnly = true)
	public boolean exists(final PK id) {
		return genericDao.exists(id);
	}

	/**
	 * 通过PK标识查找某个对象.
	 * 
	 * @param id
	 * @return T
	 */
	@Transactional(readOnly = true)
	public T findById(final PK id) {
		return genericDao.findById(id);
	}

	/**
	 * 得到所有的对象.
	 * 
	 * @return List<T>
	 */
	@Transactional(readOnly = true)
	public List<T> findAll() {
		return genericDao.findAll();
	}

	/**
	 * 通过对象的实例查找记录
	 * 
	 * @param exampleInstance
	 * @return
	 */
	@Transactional(readOnly = true)
	public List<T> findByExample(final T exampleInstance) {
		return genericDao.findByExample(exampleInstance);
	}

	@Transactional(readOnly = true)
	public List<T> findByPage(final int firstResult, final int maxResults) {
		return genericDao.findByPage(firstResult, maxResults);
	}

	@Transactional(readOnly = true)
	public List<T> findByPage(final int firstResult, final int maxResults,
			final Criterion... criterions) {
		return genericDao.findByPage(firstResult, maxResults, criterions);
	}

	@Transactional(readOnly = true)
	public Long getTotalCount() {
		return genericDao.getTotalCount();
	}

	@Transactional(readOnly = true)
	public Long getTotalCount(Criterion... criterions) {
		return genericDao.getTotalCount(criterions);
	}

	/**
	 * 通过namedQuery来查找
	 * 
	 * @param namedQuery
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List findByNamedQuery(final String namedQuery) {
		return genericDao.findByNamedQuery(namedQuery);
	}

	/**
	 * 通过namedQuery来查找
	 * 
	 * @param namedQuery
	 * @param parameter
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List findByNamedQuery(final String namedQuery, final Object parameter) {
		return genericDao.findByNamedQuery(namedQuery, parameter);
	}

	/**
	 * 通过namedQuery来查找
	 * 
	 * @param namedQuery
	 * @param parameters
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List findByNamedQuery(final String namedQuery,
			final Object[] parameters) {
		return genericDao.findByNamedQuery(namedQuery, parameters);
	}

	/**
	 * 通过Criterion查询记录
	 * 
	 * @param criterion
	 * @return
	 */
	@Transactional(readOnly = true)
	public List<T> findByCriteria(final DetachedCriteria detachedCriteria) {
		return genericDao.findByCriteria(detachedCriteria);
	}

	/**
	 * 保存对象————瞬态状态调用,状态变为持久(POJO).
	 * 
	 * @param object
	 * @return PK
	 */
	@Transactional
	public PK save(final T object) {
		return genericDao.save(object);
	}

	/**
	 * 保存对象————--脱管状态时候调用，状态变为持久.
	 * 
	 * @param object
	 */
	@Transactional
	public void update(final T object) {
		genericDao.update(object);
	}

	/**
	 * 通过Pk删除对象
	 * 
	 * @param id
	 */
	@Transactional
	public void delete(final PK id) {
		genericDao.delete(id);
	}

	/**
	 * 通过T删除对象
	 * 
	 * @param object
	 */
	@Transactional
	public void delete(final T object) {
		delete(object);
	}

	@Transactional
	public void deleteAll(Collection<T> entities) {
		deleteAll(entities);
	}

}
