package com.govsoft.framework.common.hibernate;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;

import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.DetachedCriteria;

public interface GenericDao<T, PK extends Serializable> {

	/**
	 * 通过PK判断对象是否存在.
	 * 
	 * @param id
	 * @return boolean
	 */
	boolean exists(final PK id);

	/**
	 * 通过PK标识查找某个对象.
	 * 
	 * @param id
	 * @return T
	 */
	T findById(final PK id);

	/**
	 * 得到所有的对象.
	 * 
	 * @return List<T>
	 */
	List<T> findAll();

	/**
	 * 返回唯一的对象
	 * 
	 * @param propertyName
	 * @param value
	 * @return
	 */
	T findByUnique(final String propertyName, final Object value);

	/**
	 * 通过对象的实例查找记录
	 * 
	 * @param exampleInstance
	 * @return
	 */
	List<T> findByExample(final T exampleInstance);

	/**
	 * 分页查询
	 * 
	 * @param from
	 * @param length
	 * @return
	 */
	List<T> findByPage(final int firstResult, final int maxResults);

	List<T> findByPage(final int firstResult, final int maxResults,
			final Criterion... criterions);

	Long getTotalCount();
	
	Long getTotalCount(final Criterion... criterions);
	
	/**
	 * 通过namedQuery来查找
	 * 
	 * @param namedQuery
	 * @return
	 */
	@SuppressWarnings("unchecked")
	List findByNamedQuery(final String namedQuery);

	/**
	 * 通过namedQuery来查找
	 * 
	 * @param namedQuery
	 * @param parameter
	 * @return
	 */
	@SuppressWarnings("unchecked")
	List findByNamedQuery(final String namedQuery, final Object parameter);

	/**
	 * 通过namedQuery来查找
	 * 
	 * @param namedQuery
	 * @param parameters
	 * @return
	 */
	@SuppressWarnings("unchecked")
	List findByNamedQuery(final String namedQuery, final Object[] parameters);

	/**
	 * 通过Criterion查询记录
	 * 
	 * @param criterion
	 * @return
	 */
	List<T> findByCriteria(final DetachedCriteria detachedCriteria);

	/**
	 * 保存对象————瞬态状态调用,状态变为持久(POJO).
	 * 
	 * @param object
	 * @return PK
	 */
	PK save(final T object);

	/**
	 * 保存对象————--脱管状态时候调用，状态变为持久.
	 * 
	 * @param object
	 */
	void update(final T object);

	/**
	 * 保存对象————脱管状态时候调用，状态不变.
	 * 
	 * @param object
	 * @return T
	 */
	T merge(final T object);

	/**
	 * 保存或更新对象.
	 * 
	 * @param object
	 */
	void saveOrUpdate(final T object);

	/**
	 * 持久状态调用,状态不变,可以不调用,session.close()时候自动update父子对象或者insert子对象.
	 */
	void flush();

	/**
	 * 通过Pk删除对象
	 * 
	 * @param id
	 */
	void delete(final PK id);

	/**
	 * 通过T删除对象
	 * 
	 * @param object
	 */
	void delete(final T object);

	/**
	 * 批量删除对象
	 * 
	 * @param entities
	 */
	void deleteAll(final Collection<T> entities);
}
