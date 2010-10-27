package com.govsoft.framework.model;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
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
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.hibernate.annotations.CacheConcurrencyStrategy;
import org.hibernate.annotations.ForeignKey;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.GrantedAuthorityImpl;
import org.springframework.security.core.userdetails.UserDetails;

import com.govsoft.framework.common.hibernate.BaseEntity;
import com.govsoft.framework.model.comparator.MenuComparator;

@Entity
@org.hibernate.annotations.Entity(dynamicInsert = true, dynamicUpdate = true)
@Table(name = "gov_user", uniqueConstraints = {})
@org.hibernate.annotations.Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class User extends BaseEntity implements UserDetails {

	private static final long serialVersionUID = 1L;

	/**
	 * 登陆账号
	 */
	@Column(name = "login_name", unique = true, nullable = false, insertable = true, updatable = true, length = 50)
	private String loginName;

	/**
	 * 真实姓名
	 */
	@Column(name = "real_name", unique = false, nullable = false, insertable = true, updatable = true, length = 50)
	private String realName;

	/**
	 * 密码
	 */
	@Column(name = "password", unique = false, nullable = false, insertable = true, updatable = true, length = 32, columnDefinition = "char(32)")
	private String password;

	/**
	 * 工号
	 */
	@Column(name = "work_code", unique = false, nullable = true, insertable = true, updatable = true, length = 20)
	private String workCode;

	/**
	 * 电子邮箱
	 */
	@Column(name = "email", unique = false, nullable = true, insertable = true, updatable = true, length = 100)
	private String email;

	/**
	 * 传真
	 */
	@Column(name = "fax", unique = false, nullable = true, insertable = true, updatable = true, length = 50)
	private String fax;

	/**
	 * 电话
	 */
	@Column(name = "tel", unique = false, nullable = true, insertable = true, updatable = true, length = 50)
	private String tel;

	/**
	 * 手机号
	 */
	@Column(name = "mobile", unique = false, nullable = true, insertable = true, updatable = true, length = 20)
	private String mobile;

	/**
	 * 邮编
	 */
	@Column(name = "zip", unique = false, nullable = true, insertable = true, updatable = true, length = 20)
	private String zip;

	/**
	 * 联系地址
	 */
	@Column(name = "address", unique = false, nullable = true, insertable = true, updatable = true, length = 255)
	private String address;

	/**
	 * 性别
	 */
	@Column(name = "gender", unique = false, nullable = false, insertable = true, updatable = true, columnDefinition = "TINYINT")
	private Integer gender;

	/**
	 * 出生年月
	 */
	@Temporal(TemporalType.DATE)
	@Column(name = "birthday", unique = false, nullable = true, insertable = true, updatable = true)
	private Date birthday;

	/**
	 * 头像路径
	 */
	@Column(name = "pic", unique = false, nullable = true, insertable = true, updatable = true, length = 50)
	private String pic;

	/**
	 * 随机加密字符串
	 */
	@Column(name = "SALT", unique = false, nullable = false, insertable = true, updatable = true)
	private Integer salt;

	/**
	 * 创建时间
	 */
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "create_time", unique = false, nullable = false, insertable = true, updatable = true, length = 20)
	private Date createTime;

	/**
	 * 最后登录时间
	 */
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "last_login_time", unique = false, nullable = true, insertable = true, updatable = true, length = 20)
	private Date lastLoginTime;

	/**
	 * 最后登录IP
	 */
	@Column(name = "last_login_ip", unique = false, nullable = true, insertable = true, updatable = true, length = 50)
	private String lastLoginIp;

	/**
	 * 当前登录时间
	 */
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "current_login_time", unique = false, nullable = true, insertable = true, updatable = true, length = 20)
	private Date currentLoginTime;

	/**
	 * 当前登录IP
	 */
	@Column(name = "current_login_ip", unique = false, nullable = true, insertable = true, updatable = true, length = 50)
	private String currentLoginIp;

	/**
	 * 总共登录次数
	 */
	@Column(name = "login_count", unique = false, nullable = true, insertable = true, updatable = true, length = 50)
	private Integer loginCount;

	/**
	 * 是否禁用0:禁用1:启用
	 */
	@Column(name = "is_disabled", unique = false, nullable = false, insertable = true, updatable = true)
	private Boolean disabled;

	/**
	 * 所属组织机构
	 */
	@ManyToOne(cascade = { CascadeType.ALL }, fetch = FetchType.LAZY, targetEntity = Org.class, optional = false)
	@JoinColumn(name = "org_id", unique = false, nullable = false, insertable = false, updatable = false)
	@ForeignKey(name = "fk_user_org")
	private Org org;

	/**
	 * 所属角色
	 */
	@ManyToMany
	@JoinTable(name = "gov_user_role", joinColumns = { @JoinColumn(name = "user_id", unique = false, nullable = false, insertable = true, updatable = false) }, inverseJoinColumns = { @JoinColumn(name = "role_id", unique = false, nullable = false, insertable = true, updatable = false) })
	@ForeignKey(name = "fk_user_role", inverseName = "fk_role_user")
	private Set<Role> roles = new HashSet<Role>(0);

	// @Transient
	// private Map<String, List<Menu>> roleMenus;

	// @Transient
	// private Set<Menu> menus = new HashSet<Menu>(0);

	public User() {
		super();
	}

	public User(String id) {
		setId(id);
	}

	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	public String getRealName() {
		return realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getWorkCode() {
		return workCode;
	}

	public void setWorkCode(String workCode) {
		this.workCode = workCode;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFax() {
		return fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getZip() {
		return zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Integer getGender() {
		return gender;
	}

	public void setGender(Integer gender) {
		this.gender = gender;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}

	public Integer getSalt() {
		return salt;
	}

	public void setSalt(Integer salt) {
		this.salt = salt;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Date getLastLoginTime() {
		return lastLoginTime;
	}

	public void setLastLoginTime(Date lastLoginTime) {
		this.lastLoginTime = lastLoginTime;
	}

	public String getLastLoginIp() {
		return lastLoginIp;
	}

	public void setLastLoginIp(String lastLoginIp) {
		this.lastLoginIp = lastLoginIp;
	}

	public Date getCurrentLoginTime() {
		return currentLoginTime;
	}

	public void setCurrentLoginTime(Date currentLoginTime) {
		this.currentLoginTime = currentLoginTime;
	}

	public String getCurrentLoginIp() {
		return currentLoginIp;
	}

	public void setCurrentLoginIp(String currentLoginIp) {
		this.currentLoginIp = currentLoginIp;
	}

	public Integer getLoginCount() {
		return loginCount;
	}

	public void setLoginCount(Integer loginCount) {
		this.loginCount = loginCount;
	}

	public Boolean getDisabled() {
		return disabled;
	}

	public void setDisabled(Boolean disabled) {
		this.disabled = disabled;
	}

	public Org getOrg() {
		return org;
	}

	public void setOrg(Org org) {
		this.org = org;
	}

	public Set<Role> getRoles() {
		return roles;
	}

	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}

	// @Transient
	// public Map<String, List<Menu>> getRoleMenus() {
	// if (this.roleMenus == null) {
	// this.roleMenus = new HashMap<String, List<Menu>>();
	// for (Role role : this.roles) {
	// String roleId = role.getId();
	// Set<Menu> menus = role.getMenus();
	// for (Menu menu : menus) {
	// String key = roleId;
	// if (!this.roleMenus.containsKey(key)) {
	// this.roleMenus.put(key, new ArrayList<Menu>());
	// }
	// this.roleMenus.get(key).add(menu);
	// }
	// }
	//
	// }
	// return this.roleMenus;
	// }

	@Transient
	public List<Menu> getMenus() {
		List<Menu> menus = new ArrayList<Menu>(0);
		List<Menu> result = new ArrayList<Menu>(0);
		for (Role role : this.roles) {
			for (Menu menu : role.getMenus()) {
				menus.add(menu);
			}
		}
		for (Menu menu : menus) {
			if (menu.isRoot()) {
				result.add(menu);
				for (Menu child : menus) {
					if (child.getParent() != null
							&& child.getParent().equals(menu)) {
						menu.getAuthorizedChild().add(child);
					}
				}
				Collections.sort(menu.getAuthorizedChild(),
						new MenuComparator());
			}
		}
		Collections.sort(result, new MenuComparator());
		return result;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o) {
			return true;
		}
		if (!(o instanceof Menu)) {
			return false;
		}
		User that = (User) o;
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

	@Transient
	public Collection<GrantedAuthority> getAuthorities() {
		List<GrantedAuthority> grantedAuthorities = new ArrayList<GrantedAuthority>();
		for (Role role : roles) {
			grantedAuthorities.add(new GrantedAuthorityImpl(role.getCode()));
		}
		return grantedAuthorities;
	}

	@Transient
	public String getAuthoritiesString() {
		List<String> authorities = new ArrayList<String>();
		for (GrantedAuthority authority : this.getAuthorities()) {
			authorities.add(authority.getAuthority());
		}
		return StringUtils.join(authorities, ",");
	}

	@Transient
	public String getUsername() {
		return loginName;
	}

	public boolean isAccountNonExpired() {
		return true;
	}

	@Transient
	public boolean isAccountNonLocked() {
		return true;
	}

	@Transient
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Transient
	public boolean isEnabled() {
		return !this.disabled;
	}

}
