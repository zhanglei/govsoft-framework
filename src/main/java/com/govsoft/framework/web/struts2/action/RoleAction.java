package com.govsoft.framework.web.struts2.action;

import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.apache.struts2.json.annotations.JSON;
import org.hibernate.criterion.Criterion;

import com.govsoft.framework.Constants;
import com.govsoft.framework.common.struts2.BaseStruts2Action;
import com.govsoft.framework.model.Role;
import com.govsoft.framework.service.RoleService;

@ParentPackage(value = "crud-default")
@Namespace("")
@Results( {
		@Result(name = "jsongrid", params = { "excludeProperties",
				".*hibernateLazyInitializer", "includeProperties",
				"^gridModel\\[\\d+\\]\\.\\w+,,rows, page, total, record",
				"noCache", "true", "ignoreHierarchy", "false",
				"excludeNullProperties", "true" }, type = "json"),
		@Result(name = "list", location = RoleAction.PREFIX
				+ BaseStruts2Action.LIST, type = "redirect"),
		@Result(name = "form", location = RoleAction.PREFIX
				+ BaseStruts2Action.EDIT, type = "redirect"),
		@Result(name = "show", location = RoleAction.PREFIX
				+ BaseStruts2Action.SHOW, type = "redirect") })
public class RoleAction extends BaseStruts2Action<Role> {

	private static final long serialVersionUID = 1L;

	protected static final String PREFIX = Constants.SERVER_NAME
			+ "/system/role/";

	private Role entity;

	private String id;

	private List<Role> roles;

	@Resource(name = "roleService")
	private RoleService roleService;

	public void setId(String id) {
		this.id = id;
	}

	@JSON
	public List<Role> getRoles() {
		return roles;
	}

	public Role getModel() {
		return entity;
	}

	public void prepare() throws Exception {
		if (id != null) {
			entity = roleService.findById(id);
		} else {
			entity = new Role();
		}
	}

	public String query() throws Exception {
		return this.refreshGridModel();
	}

	public String list() throws Exception {
		return "list";
	}

	@Override
	public Long getResultSize() {
		return roleService.getTotalCount();
	}

	@Override
	public List<Role> listResults(int firstResult, int maxResults) {
		return roleService.findByPage(firstResult, maxResults);
	}

	@Override
	public void sortResults(List<Role> results, String field, String order) {

	}

	@Override
	public Long getResultSize(Criterion... criterions) {
		return roleService.getTotalCount(criterions);
	}

	@Override
	public List<Role> listResults(int firstResult, int maxResults,
			Criterion... criterions) {
		return roleService.findByPage(firstResult, maxResults, criterions);
	}

}
