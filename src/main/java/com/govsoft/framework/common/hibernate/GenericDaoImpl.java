package com.govsoft.framework.common.hibernate;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Projections;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.orm.ObjectRetrievalFailureException;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.util.Assert;

import com.govsoft.framework.common.util.ReflectionUtils;

public class GenericDaoImpl<T, PK extends Serializable> extends
		HibernateDaoSupport implements GenericDao<T, PK> {

	protected Logger logger = LoggerFactory.getLogger(getClass());

	private Class<T> persistentClass;

	public GenericDaoImpl() {
		super();
		this.persistentClass = ReflectionUtils
				.getSuperClassGenricType(getClass());
	}

	public Class<T> getPersistentClass() {
		return persistentClass;
	}

	/**
	 * 通过PK判断对象是否存在.
	 * 
	 * @param id
	 * @return boolean
	 */
	@SuppressWarnings("unchecked")
	public boolean exists(final PK id) {
		Assert.notNull(id);
		T entity = (T) super.getHibernateTemplate().get(this.persistentClass,
				id);
		return entity != null;
	}

	/**
	 * 通过PK标识查找某个对象.
	 * 
	 * @param id
	 * @return T
	 */
	@SuppressWarnings("unchecked")
	public T findById(final PK id) {
		Assert.notNull(id);
		T entity = (T) super.getHibernateTemplate().get(this.persistentClass,
				id);
		if (entity == null) {
			logger.warn("Uh oh, '" + this.persistentClass
					+ "' object with id '" + id + "' not found...");
			throw new ObjectRetrievalFailureException(this.persistentClass, id);
		}

		return entity;
	}

	/**
	 * 得到所有的对象.
	 * 
	 * @return List<T>
	 */
	@SuppressWarnings("unchecked")
	public List<T> findAll() {
		// DetachedCriteria detachedCriteria =
		// DetachedCriteria.forClass(getPersistentClass());
		// return findByCriteria(detachedCriteria);
		return (List<T>) super.getHibernateTemplate().loadAll(
				getPersistentClass());
	}

	/**
	 * 通过对象的实例查找记录
	 * 
	 * @param exampleInstance
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<T> findByExample(final T exampleInstance) {
		// Criteria crit = getSession().createCriteria(getPersistentClass());
		// Example example = Example.create(exampleInstance);
		// crit.add(example);
		// return crit.list();
		return super.getHibernateTemplate().findByExample(exampleInstance);
	}

	/**
	 * 通过namedQuery来查找
	 * 
	 * @param namedQuery
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List findByNamedQuery(final String namedQuery) {
		return super.getHibernateTemplate().findByNamedQuery(namedQuery);
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
		return super.getHibernateTemplate().findByNamedQuery(namedQuery,
				parameter);
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
		return super.getHibernateTemplate().findByNamedQuery(namedQuery,
				parameters);
	}

	/**
	 * 通过Criterion查询记录
	 * 
	 * @param criterion
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<T> findByCriteria(final DetachedCriteria detachedCriteria) {
		// Criteria criteria =
		// detachedCriteria.getExecutableCriteria(getSession());
		// return criteria.list();
		return super.getHibernateTemplate().findByCriteria(detachedCriteria);
	}

	/**
	 * 保存对象————瞬态状态调用,状态变为持久(POJO).
	 * 
	 * @param object
	 * @return PK
	 */
	@SuppressWarnings("unchecked")
	public PK save(final T object) {
		Assert.notNull(object);
		return (PK) super.getHibernateTemplate().save(object);
	}

	/**
	 * 保存对象————--脱管状态时候调用，状态变为持久.
	 * 
	 * @param object
	 */
	public void update(final T object) {
		Assert.notNull(object);
		super.getHibernateTemplate().update(object);
	}

	/**
	 * 保存对象————脱管状态时候调用，状态不变.
	 * 
	 * @param object
	 * @return T
	 */
	@SuppressWarnings("unchecked")
	public T merge(final T object) {
		Assert.notNull(object);
		return (T) super.getHibernateTemplate().merge(object);
	}

	/**
	 * 保存或更新对象.
	 * 
	 * @param object
	 */
	public void saveOrUpdate(final T object) {
		Assert.notNull(object);
		super.getHibernateTemplate().saveOrUpdate(object);
	}

	/**
	 * 持久状态调用,状态不变,可以不调用,session.close()时候自动update父子对象或者insert子对象.
	 */
	public void flush() {
		super.getHibernateTemplate().flush();
	}

	/**
	 * 通过Pk删除对象
	 * 
	 * @param id
	 */
	public void delete(final PK id) {
		Assert.notNull(id);
		super.getHibernateTemplate().delete(findById(id));
	}

	/**
	 * 通过T删除对象
	 * 
	 * @param object
	 */
	public void delete(final T object) {
		Assert.notNull(object);
		super.getHibernateTemplate().delete(object);
	}

	public int getCountByCriteria(final DetachedCriteria detachedCriteria) {
		Integer count = (Integer) getHibernateTemplate()
				.executeWithNativeSession(new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException {
						Criteria criteria = detachedCriteria
								.getExecutableCriteria(session);
						return criteria.setProjection(Projections.rowCount())
								.uniqueResult();
					}
				});
		return count.intValue();
	}

}
