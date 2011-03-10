package com.govsoft.framework.common.hibernate;

import java.util.Date;

import org.hibernate.HibernateException;
import org.hibernate.event.SaveOrUpdateEvent;
import org.hibernate.event.SaveOrUpdateEventListener;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.govsoft.framework.security.web.util.SpringSecurityUtils;

public class AuditListener implements SaveOrUpdateEventListener {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private static Logger logger = LoggerFactory.getLogger(AuditListener.class);

	@Override
	public void onSaveOrUpdate(SaveOrUpdateEvent event)
			throws HibernateException {
		Object object = event.getObject();

		// 如果对象是AuditableEntity子类,添加审计信息.
		if (object instanceof AuditableEntity) {
			AuditableEntity entity = (AuditableEntity) object;
			String loginName = SpringSecurityUtils.getCurrentUserName();

			if (entity.getId() == null) {
				// 创建新对象
				entity.setCreateTime(new Date());
				entity.setCreateBy(loginName);
			} else {
				// 修改旧对象
				entity.setLastModifyTime(new Date());
				entity.setLastModifyBy(loginName);

				logger.info("{}对象(ID:{}) 被 {} 在 {} 修改", new Object[] {
						event.getEntityName(), entity.getId(), loginName,
						new Date() });
			}
		}
	}
}
