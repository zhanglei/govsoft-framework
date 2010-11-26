package com.govsoft.framework.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.hibernate.annotations.CacheConcurrencyStrategy;

import com.govsoft.framework.common.hibernate.BaseEntity;

@Entity
@org.hibernate.annotations.Entity(dynamicInsert = true, dynamicUpdate = true)
@Table(name = "race", uniqueConstraints = {})
@org.hibernate.annotations.Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class Race extends BaseEntity {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Column(name = "name", unique = false, nullable = false, insertable = true, updatable = true, length = 50)
	private String name;

	@Column(name = "rome", unique = false, nullable = false, insertable = true, updatable = true, length = 50)
	private String rome;

	@Column(name = "sz_code", unique = false, nullable = false, insertable = true, updatable = true, length = 2, columnDefinition = "char(2)")
	private String szCode;

	@Column(name = "zm_code", unique = false, nullable = false, insertable = true, updatable = true, length = 20)
	private String zmCode;

	@Column(name = "is_disabled", unique = false, nullable = false, insertable = true, updatable = true)
	private Boolean disabled;

	public Race() {
		super();
	}

	public Race(String id) {
		setId(id);
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRome() {
		return rome;
	}

	public void setRome(String rome) {
		this.rome = rome;
	}

	public String getSzCode() {
		return szCode;
	}

	public void setSzCode(String szCode) {
		this.szCode = szCode;
	}

	public String getZmCode() {
		return zmCode;
	}

	public void setZmCode(String zmCode) {
		this.zmCode = zmCode;
	}

	public Boolean getDisabled() {
		return disabled;
	}

	public void setDisabled(Boolean disabled) {
		this.disabled = disabled;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o) {
			return true;
		}
		if (!(o instanceof Race)) {
			return false;
		}
		Race that = (Race) o;
		if (this.getId() != null && that.getId() != null) {
			return new EqualsBuilder().append(this.getId(), that.getId())
					.isEquals();
		}
		return false;
	}

	@Override
	public int hashCode() {
		if (this.getId() != null) {
			return new HashCodeBuilder().append(getId()).toHashCode();
		} else {
			return 0;
		}
	}

	@Override
	public String toString() {
		if (this.getId() != null) {
			return new ToStringBuilder(this).append("id", getId()).toString();
		} else {
			return null;
		}
	}

}
