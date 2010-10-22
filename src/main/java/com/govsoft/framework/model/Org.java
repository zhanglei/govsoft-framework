package com.govsoft.framework.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.hibernate.annotations.CacheConcurrencyStrategy;
import org.hibernate.annotations.ForeignKey;

import com.govsoft.framework.common.hibernate.BaseEntity;

@Entity
@org.hibernate.annotations.Entity(dynamicInsert = true, dynamicUpdate = true)
@Table(name = "gov_org", uniqueConstraints = {})
@org.hibernate.annotations.Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class Org extends BaseEntity {

	private static final long serialVersionUID = 1L;

	/**
	 * 组织机构名称
	 */
	@Column(name = "name", unique = false, nullable = false, insertable = true, updatable = true, length = 50)
	private String name;

	/**
	 * 描述
	 */
	@Column(name = "description", unique = false, nullable = true, insertable = true, updatable = true, length = 255)
	private String description;

	/**
	 * 所属父机构
	 */
	@ManyToOne(cascade = { CascadeType.ALL }, fetch = FetchType.LAZY, targetEntity = Org.class, optional = false)
	@JoinColumn(name = "parent_id", unique = false, nullable = true, insertable = true, updatable = true, columnDefinition = "char(36)")
	@ForeignKey(name = "fk_org")
	private Org parent;

	/**
	 * 是否禁用 0:禁用 1:启用
	 */
	@Column(name = "is_disabled", unique = false, nullable = false, insertable = true, updatable = true)
	private Boolean disabled;

	/**
	 * 用户
	 */
	@OneToMany(cascade = { CascadeType.ALL }, fetch = FetchType.LAZY, mappedBy = "org")
	private Set<User> users = new HashSet<User>();

	/**
	 * 子机构
	 */
	@OneToMany(cascade = { CascadeType.ALL }, fetch = FetchType.LAZY, mappedBy = "parent")
	private Set<Org> childs = new HashSet<Org>();

	public Org() {
		super();
	}

	public Org(String id) {
		setId(id);
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Org getParent() {
		return parent;
	}

	public void setParent(Org parent) {
		this.parent = parent;
	}

	public Boolean getDisabled() {
		return disabled;
	}

	public void setDisabled(Boolean disabled) {
		this.disabled = disabled;
	}

	public Set<User> getUsers() {
		return users;
	}

	public void setUsers(Set<User> users) {
		this.users = users;
	}

	public Set<Org> getChilds() {
		return childs;
	}

	public void setChilds(Set<Org> childs) {
		this.childs = childs;
	}

	@Transient
	public Boolean isRoot() {
		return parent == null ? true : false;
	}

	@Transient
	public Org getRootOrg() {
		if (isRoot()) {
			return this;
		} else {
			return parent.getRootOrg();
		}
	}

	@Transient
	public void addChild(Org org) {
		getChilds().add(org);
		org.setParent(this);
	}

	@Override
	public boolean equals(Object o) {
		if (this == o) {
			return true;
		}
		if (!(o instanceof Org)) {
			return false;
		}
		Org that = (Org) o;
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
