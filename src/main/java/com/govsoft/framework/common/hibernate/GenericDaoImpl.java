package com.govsoft.framework.common.hibernate;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.CriteriaSpecification;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Projection;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.hibernate.impl.CriteriaImpl;
import org.hibernate.transform.ResultTransformer;
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
	public List<T> findAll() {
		// DetachedCriteria detachedCriteria =
		// DetachedCriteria.forClass(getPersistentClass());
		// return findByCriteria(detachedCriteria);
		return (List<T>) super.getHibernateTemplate().loadAll(
				getPersistentClass());
	}

	/**
	 * 返回唯一的对象
	 */
	@SuppressWarnings("unchecked")
	public T findByUnique(String propertyName, Object value) {
		Assert.hasText(propertyName, "propertyName不能为空");
		Criterion criterion = Restrictions.eq(propertyName, value);
		return (T) createCriteria(criterion).uniqueResult();
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

	@SuppressWarnings("unchecked")
	public List<T> findByPage(final int firstResult, final int maxResults) {
		return (List<T>) super.getHibernateTemplate().executeWithNativeSession(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException {
						Criteria criteria = session
								.createCriteria(getPersistentClass());
						criteria.setFirstResult(firstResult);
						criteria.setMaxResults(maxResults);
						return criteria.list();
					}
				});
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> findByPage(final int firstResult, final int maxResults,
			Criterion... criterions) {
		Criteria criteria = createCriteria(criterions);
		criteria.setFirstResult(firstResult);
		criteria.setMaxResults(maxResults);
		return criteria.list();

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

	/**
	 * 批量删除对象
	 * 
	 */
	public void deleteAll(Collection<T> entities) {
		Assert.notNull(entities);
		super.getHibernateTemplate().deleteAll(entities);
	}

	@SuppressWarnings("unchecked")
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

	@SuppressWarnings("unchecked")
	public Query createQuery(final String queryString, final Object... values) {
		Assert.hasText(queryString, "queryString不能为空");
		return (Query) getHibernateTemplate().executeWithNativeSession(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException {
						Query query = session.createQuery(queryString);
						if (values != null) {
							for (int i = 0; i < values.length; i++) {
								query.setParameter(i, values[i]);
							}
						}
						return query;
					}
				});

	}

	@SuppressWarnings("unchecked")
	public Criteria createCriteria(final Criterion... criterions) {
		return (Criteria) getHibernateTemplate().executeWithNativeSession(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException {
						Criteria criteria = session
								.createCriteria(getPersistentClass());
						for (Criterion c : criterions) {
							criteria.add(c);
						}
						return criteria;
					}
				});

	}

	/**
	 * 执行count查询获得本次Criteria查询所能获得的对象总数.
	 */

	@SuppressWarnings("unchecked")
	protected Long countCriteriaResult(final Criteria c) {
		CriteriaImpl impl = (CriteriaImpl) c;

		// 先把Projection、ResultTransformer、OrderBy取出来,清空三者后再执行Count操作
		Projection projection = impl.getProjection();
		ResultTransformer transformer = impl.getResultTransformer();

		List<CriteriaImpl.OrderEntry> orderEntries = null;
		try {
			orderEntries = (List) ReflectionUtils.getFieldValue(impl,
					"orderEntries");
			ReflectionUtils
					.setFieldValue(impl, "orderEntries", new ArrayList());
		} catch (Exception e) {
			logger.error("不可能抛出的异常:{}", e.getMessage());
		}

		// 执行Count查询
		Long totalCountObject = (Long) c.setProjection(Projections.rowCount())
				.uniqueResult();
		Long totalCount = (totalCountObject != null) ? totalCountObject : 0;

		// 将之前的Projection,ResultTransformer和OrderBy条件重新设回去
		c.setProjection(projection);

		if (projection == null) {
			c.setResultTransformer(CriteriaSpecification.ROOT_ENTITY);
		}
		if (transformer != null) {
			c.setResultTransformer(transformer);
		}
		try {
			ReflectionUtils.setFieldValue(impl, "orderEntries", orderEntries);
		} catch (Exception e) {
			logger.error("不可能抛出的异常:{}", e.getMessage());
		}

		return totalCount;
	}

	private String prepareCountHql() {
		String countHql = "select count(*) from "
				+ getPersistentClass().getName();
		return countHql;
	}

	@Override
	public Long getTotalCount() {
		String countHql = prepareCountHql();
		return (Long) createQuery(countHql).uniqueResult();
	}

	@Override
	public Long getTotalCount(Criterion... criterions) {
		return countCriteriaResult(createCriteria(criterions));
	}

}
