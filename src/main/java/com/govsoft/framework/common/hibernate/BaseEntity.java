package com.govsoft.framework.common.hibernate;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;
import javax.persistence.Version;

import org.hibernate.annotations.GenericGenerator;

import com.govsoft.framework.common.util.DateConvertUtils;

@MappedSuperclass
public abstract class BaseEntity implements java.io.Serializable {

	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = 1L;

	protected static final String DATE_FORMAT = "yyyy-MM-dd";

	protected static final String TIME_FORMAT = "HH:mm:ss";

	protected static final String DATE_TIME_FORMAT = "yyyy-MM-dd HH:mm:ss";

	protected static final String TIMESTAMP_FORMAT = "yyyy-MM-dd HH:mm:ss.S";

	/**
	 * PK
	 */
	@Id
	@GeneratedValue(generator = "system-uuid")
	@GenericGenerator(name = "system-uuid", strategy = "uuid")
	@Column(name = "id", unique = true, nullable = false, insertable = true, updatable = true, length = 36, columnDefinition = "char(36)")
	private String id;

	/**
	 * Optimistic Locking
	 */
	@Temporal(TemporalType.TIMESTAMP)
	@Version
	@Column(name = "version", unique = false, nullable = false, insertable = true, updatable = true, length = 20)
	private Date version;

	public BaseEntity() {
		super();
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Date getVersion() {
		return version;
	}

	public void setVersion(Date version) {
		this.version = version;
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
