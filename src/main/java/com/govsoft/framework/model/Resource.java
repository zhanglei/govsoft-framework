package com.govsoft.framework.model;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.hibernate.annotations.CacheConcurrencyStrategy;
import org.hibernate.annotations.ForeignKey;

import com.govsoft.framework.common.hibernate.BaseEntity;

@Entity
@org.hibernate.annotations.Entity(dynamicInsert = true, dynamicUpdate = true)
@Table(name = "gov_resource", uniqueConstraints = {})
@org.hibernate.annotations.Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class Resource extends BaseEntity {

	private static final long serialVersionUID = 1L;

	/**
	 * 资源类型
	 */
	@Column(name = "type", unique = false, nullable = false, insertable = true, updatable = true, length = 50)
	private String type;

	/**
	 * 资源值
	 */
	@Column(name = "value", unique = false, nullable = false, insertable = true, updatable = true, length = 200)
	private String value;

	/**
	 * 资源描述
	 */
	@Column(name = "description", unique = false, nullable = true, insertable = true, updatable = true, length = 200)
	private String description;

	@ManyToMany
	@JoinTable(name = "gov_role_resource", joinColumns = { @JoinColumn(name = "resource_id", unique = false, nullable = false, insertable = true, updatable = false) }, inverseJoinColumns = { @JoinColumn(name = "role_id", unique = false, nullable = false, insertable = true, updatable = false) })
	@ForeignKey(name = "fk_role_resource", inverseName = "fk_resource_role")
	private Set<Role> roles = new HashSet<Role>(0);

	public Resource() {
		super();
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Set<Role> getRoles() {
		return roles;
	}

	@Transient
	public String getRoleAuthorities() {
		List<String> roleAuthorities = new ArrayList<String>();
		for (Role role : roles) {
			roleAuthorities.add(role.getCode());
		}
		return StringUtils.join(roleAuthorities, ",");
	}
	
	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o) {
			return true;
		}
		if (!(o instanceof Menu)) {
			return false;
		}
		Resource that = (Resource) o;
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
