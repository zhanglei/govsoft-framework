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
import javax.persistence.ManyToMany;
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
@Table(name = "gov_menu", uniqueConstraints = {})
@org.hibernate.annotations.Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class Menu extends BaseEntity {

	private static final long serialVersionUID = 1L;

	/**
	 * 菜单名称
	 */
	@Column(name = "name", unique = false, nullable = false, insertable = true, updatable = true, length = 50)
	private String name;

	/**
	 * 菜单路径
	 */
	@Column(name = "url", unique = false, nullable = false, insertable = true, updatable = true, length = 255)
	private String url;

	/**
	 * 排列顺序
	 */
	@Column(name = "sequence", unique = false, nullable = false, insertable = true, updatable = true)
	private Integer sequence;

	/**
	 * 所属父菜单
	 */
	@ManyToOne(cascade = { CascadeType.ALL }, fetch = FetchType.LAZY, targetEntity = Menu.class, optional = false)
	@JoinColumn(name = "parent_id", unique = false, nullable = true, insertable = true, updatable = true, columnDefinition = "char(36)")
	@ForeignKey(name = "fk_menu")
	private Menu parent;

	/**
	 * 描述
	 */
	@Column(name = "description", unique = false, nullable = true, insertable = true, updatable = true, length = 255)
	private String description;

	/**
	 * 是否禁用 0:禁用 1:启用
	 */
	@Column(name = "is_disabled", unique = false, nullable = false, insertable = true, updatable = true)
	private Boolean disabled;

	/**
	 * 子菜单
	 */
	@OneToMany(cascade = { CascadeType.ALL }, fetch = FetchType.LAZY, mappedBy = "parent")
	private Set<Menu> childs = new HashSet<Menu>(0);

	/**
	 * 角色
	 */
	@ManyToMany(cascade = { CascadeType.ALL }, fetch = FetchType.LAZY, mappedBy = "menus")
	private Set<Role> roles = new HashSet<Role>(0);

	@Transient
	private List<Menu> authorizedChild = new ArrayList<Menu>();

	public Menu() {
		super();
	}

	public Menu(String id) {
		setId(id);
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Integer getSequence() {
		return sequence;
	}

	public void setSequence(Integer sequence) {
		this.sequence = sequence;
	}

	public Menu getParent() {
		return parent;
	}

	public void setParent(Menu parent) {
		this.parent = parent;
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

	public void setDisabled(Boolean disabled) {
		this.disabled = disabled;
	}

	public Set<Menu> getChilds() {
		return childs;
	}

	public void setChilds(Set<Menu> childs) {
		this.childs = childs;
	}

	public Set<Role> getRoles() {
		return roles;
	}

	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}

	@Transient
	public Boolean isRoot() {
		return parent == null ? true : false;
	}

	@Transient
	public void addChild(Menu menu) {
		getChilds().add(menu);
		menu.setParent(this);
	}

	@Transient
	public List<Menu> getAuthorizedChild() {
		return authorizedChild;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o) {
			return true;
		}
		if (!(o instanceof Menu)) {
			return false;
		}
		Menu that = (Menu) o;
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
