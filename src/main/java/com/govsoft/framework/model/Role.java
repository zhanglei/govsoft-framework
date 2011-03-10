package com.govsoft.framework.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.hibernate.annotations.CacheConcurrencyStrategy;
import org.hibernate.annotations.ForeignKey;

import com.govsoft.framework.common.hibernate.BaseEntity;

@Entity
@org.hibernate.annotations.Entity(dynamicInsert = true, dynamicUpdate = true)
@Table(name = "gov_role", uniqueConstraints = {})
@org.hibernate.annotations.Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class Role extends BaseEntity {

	private static final long serialVersionUID = 1L;

	/**
	 * 角色名称
	 */
	@Column(name = "name", unique = false, nullable = false, insertable = true, updatable = true, length = 50)
	private String name;

	/**
	 * 角色代码
	 */
	@Column(name = "code", unique = false, nullable = false, insertable = true, updatable = true, length = 20)
	private String code;

	/**
	 * 角色描述
	 */
	@Column(name = "description", unique = false, nullable = true, insertable = true, updatable = true, length = 255)
	private String description;

	/**
	 * 是否禁用 0:禁用 1:启用
	 */
	@Column(name = "is_disabled", unique = false, nullable = false, insertable = true, updatable = true)
	private Boolean disabled;

	/**
	 * 用户
	 */
	@ManyToMany(cascade = { CascadeType.ALL }, fetch = FetchType.LAZY, mappedBy = "roles")
	private Set<User> users = new HashSet<User>(0);

	/**
	 * 菜单
	 */
	@ManyToMany
	@JoinTable(name = "gov_role_menu", joinColumns = { @JoinColumn(name = "role_id", unique = false, nullable = false, insertable = true, updatable = false) }, inverseJoinColumns = { @JoinColumn(name = "menu_id", unique = false, nullable = false, insertable = true, updatable = false) })
	@ForeignKey(name = "fk_role_menu", inverseName = "fk_menu_role")
	private Set<Menu> menus = new HashSet<Menu>(0);

	/**
	 * 访问资源
	 */
	@ManyToMany
	@JoinTable(name = "gov_role_resource", joinColumns = { @JoinColumn(name = "role_id", unique = false, nullable = false, insertable = true, updatable = false) }, inverseJoinColumns = { @JoinColumn(name = "resource_id", unique = false, nullable = false, insertable = true, updatable = false) })
	@ForeignKey(name = "fk_role_resource", inverseName = "fk_resource_role")
	private Set<Resource> resources = new HashSet<Resource>(0);

	public Role() {
		super();
	}

	public Role(String id) {
		setId(id);
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Boolean getDisabled() {
		return disabled;
	}

	public void setStatus(Boolean disabled) {
		this.disabled = disabled;
	}

	public Set<User> getUsers() {
		return users;
	}

	public void setUsers(Set<User> users) {
		this.users = users;
	}

	public Set<Menu> getMenus() {
		return menus;
	}

	public void setMenus(Set<Menu> menus) {
		this.menus = menus;
	}

	public Set<Resource> getResources() {
		return resources;
	}

	public void setResources(Set<Resource> resources) {
		this.resources = resources;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o) {
			return true;
		}
		if (!(o instanceof Menu)) {
			return false;
		}
		Role that = (Role) o;
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
