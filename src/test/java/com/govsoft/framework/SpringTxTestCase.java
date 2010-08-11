package com.govsoft.framework;

import org.hibernate.SessionFactory;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractTransactionalJUnit4SpringContextTests;

@ContextConfiguration(locations = { "/applicationContext-test.xml" })
public class SpringTxTestCase extends
		AbstractTransactionalJUnit4SpringContextTests {

	/**
	 * 刷新sessionFactory,强制Hibernate执行SQL以验证ORM配置.
	 * 
	 * sessionFactory名默认为"sessionFactory".
	 * 
	 * @see #flush(String)
	 */
	protected void flush() {
		flush("sessionFactory");
	}

	/**
	 * 刷新sessionFactory,强制Hibernate执行SQL以验证ORM配置. 因为没有执行commit操作,不会更改测试数据库.
	 * 
	 * @param sessionFactoryName
	 *            applicationContext中sessionFactory的名称.
	 */
	protected void flush(final String sessionFactoryName) {
		((SessionFactory) applicationContext.getBean(sessionFactoryName))
				.getCurrentSession().flush();
	}

	/**
	 * 将对象从session中消除, 用于测试初对象的始化情况.
	 * 
	 * sessionFactory名默认为"sessionFactory".
	 */
	protected void evict(Object entity) {
		evict(entity, "sessionFactory");
	}

	/**
	 * 将对象从session中消除, 用于测试初对象的始化情况.
	 * 
	 */
	protected void evict(final Object entity, final String sessionFactoryName) {
		((SessionFactory) applicationContext.getBean(sessionFactoryName))
				.getCurrentSession().evict(entity);
	}

	@Test
	public void dataSource() {
		Assert.assertNotNull(applicationContext.getBean("dataSource"));
	}

	@Test
	public void sessionFactory() {
		Assert.assertNotNull(applicationContext.getBean("sessionFactory"));
	}

}
