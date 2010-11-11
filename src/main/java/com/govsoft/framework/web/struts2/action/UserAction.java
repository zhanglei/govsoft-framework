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
import com.govsoft.framework.model.User;
import com.govsoft.framework.service.UserService;

@ParentPackage(value = "crud-default")
@Namespace("")
@Results( {
		@Result(name = "jsongrid", params = { "excludeProperties",
				".*hibernateLazyInitializer", "includeProperties",
				"^gridModel\\[\\d+\\]\\.\\w+,,rows, page, total, record",
				"noCache", "true", "ignoreHierarchy", "false",
				"excludeNullProperties", "true" }, type = "json"),
		@Result(name = "list", location = UserAction.PREFIX
				+ BaseStruts2Action.LIST, type = "redirect"),
		@Result(name = "form", location = UserAction.PREFIX
				+ BaseStruts2Action.EDIT, type = "redirect"),
		@Result(name = "SHOW", location = UserAction.PREFIX
				+ BaseStruts2Action.SHOW, type = "redirect") })
public class UserAction extends BaseStruts2Action<User> {

	private static final long serialVersionUID = 1L;

	protected static final String PREFIX = Constants.SERVER_NAME
			+ "/system/user/";

	private User entity;

	private String id;

	private List<User> users;

	@Resource(name = "userService")
	private UserService userService;

	public void setId(String id) {
		this.id = id;
	}

	@JSON
	public List<User> getUsers() {
		return users;
	}

	public User getModel() {
		return entity;
	}

	public void prepare() throws Exception {
		if (id != null) {
			entity = userService.findById(id);
		} else {
			entity = new User();
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
		return userService.getTotalCount();
	}

	@Override
	public List<User> listResults(int from, int length) {
		return userService.findByPage(from, length);
	}

	@Override
	public void sortResults(List<User> results, String field, String order) {

	}

	@Override
	public Long getResultSize(Criterion... criterions) {
		return userService.getTotalCount(criterions);
	}

	@Override
	public List<User> listResults(int firstResult, int maxResults,
			Criterion... criterions) {
		return userService.findByPage(firstResult, maxResults, criterions);
	}

}
