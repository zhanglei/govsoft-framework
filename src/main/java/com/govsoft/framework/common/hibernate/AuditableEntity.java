package com.govsoft.framework.common.hibernate;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;
import javax.persistence.Version;

import com.govsoft.framework.common.util.DateConvertUtils;

@MappedSuperclass
public abstract class AuditableEntity implements java.io.Serializable {

	private static final long serialVersionUID = 1L;

	protected static final String DATE_FORMAT = "yyyy-MM-dd";

	protected static final String TIME_FORMAT = "HH:mm:ss";

	protected static final String DATE_TIME_FORMAT = "yyyy-MM-dd HH:mm:ss";

	protected static final String TIMESTAMP_FORMAT = "yyyy-MM-dd HH:mm:ss.S";

	/**
	 * PK
	 */
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id", unique = true, nullable = false, insertable = true, updatable = false)
	private Long id;

	/**
	 * Optimistic Locking
	 */
	@Temporal(TemporalType.TIMESTAMP)
	@Version
	@Column(name = "version", unique = false, nullable = false, insertable = true, updatable = true, length = 20)
	private Date version;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "create_time", unique = false, nullable = true, insertable = true, updatable = false, length = 20)
	private Date createTime;

	@Column(name = "create_by", unique = false, nullable = true, insertable = true, updatable = false, length = 50)
	private String createBy;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "last_modify_time", unique = false, nullable = true, insertable = false, updatable = true, length = 20)
	private Date lastModifyTime;

	@Column(name = "last_modify_by", unique = false, nullable = true, insertable = false, updatable = true, length = 50)
	private String lastModifyBy;

	public AuditableEntity() {
		super();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Date getVersion() {
		return version;
	}

	public void setVersion(Date version) {
		this.version = version;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public String getCreateBy() {
		return createBy;
	}

	public void setCreateBy(String createBy) {
		this.createBy = createBy;
	}

	public Date getLastModifyTime() {
		return lastModifyTime;
	}

	public void setLastModifyTime(Date lastModifyTime) {
		this.lastModifyTime = lastModifyTime;
	}

	public String getLastModifyBy() {
		return lastModifyBy;
	}

	public void setLastModifyBy(String lastModifyBy) {
		this.lastModifyBy = lastModifyBy;
	}

	@Transient
	public String convertDateToString(java.util.Date date, String dateFormat) {
		return DateConvertUtils.format(date, dateFormat);
	}

	@Transient
	public <T extends java.util.Date> T convertStringToDate(String dateString,
			String dateFormat, Class<T> targetResultType) {
		return DateConvertUtils.parse(dateString, dateFormat, targetResultType);
	}

	public abstract String toString();

	public abstract boolean equals(Object o);

	public abstract int hashCode();

}
