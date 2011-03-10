package com.govsoft.framework.common.spring;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;

import org.junit.Test;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.govsoft.framework.common.util.ReflectionUtils;

public class SpringContextHolderTest {

	@Test
	public void testGetBean() {

		SpringContextHolder.clear();
		// try {
		// SpringContextHolder.getBean("foo");
		// fail("No exception throw for applicationContxt hadn't been init.");
		// } catch (IllegalStateException e) {
		//
		// }

		ConfigurableApplicationContext context = new ClassPathXmlApplicationContext(
				"classpath:/applicationContext-test.xml");
		assertNotNull(SpringContextHolder.getApplicationContext());

		SpringContextHolder holderByName = SpringContextHolder
				.getBean("springContextHolder");
		assertEquals(SpringContextHolder.class, holderByName.getClass());

		SpringContextHolder holderByClass = SpringContextHolder
				.getBean(SpringContextHolder.class);
		assertEquals(SpringContextHolder.class, holderByClass.getClass());

		context.close();
		assertNull(ReflectionUtils.getFieldValue(holderByName,
				"applicationContext"));

	}
}
