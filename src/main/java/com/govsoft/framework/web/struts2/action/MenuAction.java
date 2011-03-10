package com.govsoft.framework.web.struts2.action;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;
import net.sf.json.JsonConfig;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.hibernate.criterion.Criterion;

import com.govsoft.framework.Constants;
import com.govsoft.framework.common.struts2.BaseStruts2Action;
import com.govsoft.framework.model.Menu;
import com.govsoft.framework.model.User;
import com.govsoft.framework.security.web.util.SpringSecurityUtils;
import com.govsoft.framework.service.MenuService;
import com.govsoft.framework.service.UserService;
import com.govsoft.framework.web.util.DateJsonValueProcessor;

@ParentPackage(value = "crud-default")
@Namespace("")
@Results( {
		@Result(name = "jsongrid", params = { "excludeProperties",
				".*hibernateLazyInitializer", "includeProperties",
				"^gridModel\\[\\d+\\]\\.\\w+,,rows, page, total, record",
				"noCache", "true", "ignoreHierarchy", "false",
				"excludeNullProperties", "true" }, type = "json"),
		@Result(name = "list", location = MenuAction.PREFIX
				+ BaseStruts2Action.LIST, type = "redirect"),
		@Result(name = "form", location = MenuAction.PREFIX
				+ BaseStruts2Action.EDIT, type = "redirect"),
		@Result(name = "show", location = MenuAction.PREFIX
				+ BaseStruts2Action.SHOW, type = "redirect") })
public class MenuAction extends BaseStruts2Action<Menu> {

	private static final long serialVersionUID = 1L;

	protected static final String PREFIX = Constants.SERVER_NAME
			+ "/system/menu/";

	private Menu entity;

	private String id;

	// private String _gt_json;

	private String menuString;

	private List<Menu> menus;

	@Resource(name = "menuService")
	private MenuService menuService;

	@Resource(name = "userService")
	private UserService userService;

	public void setId(String id) {
		this.id = id;
	}

	public String getMenuString() {
		return menuString;
	}

	public List<Menu> getMenus() {
		return menus;
	}

	public Menu getModel() {
		return entity;
	}

	public void prepare() throws Exception {
		if (id != null) {
			entity = menuService.findById(id);
		} else {
			entity = new Menu();
		}
	}

	@Action("leftmenu")
	public void leftMenu() {
		User user = (User) SpringSecurityUtils.getCurrentUser();
		menus = userService.findById(user.getId()).getMenus();
		JsonConfig config = new JsonConfig();
		config.setExcludes(new String[] { "execludeField", "sequence",
				"parent", "childs", "roles" });
		config.registerJsonValueProcessor(Date.class,
				new DateJsonValueProcessor("yyyy-MM-dd"));
		JSONArray jsonObject = JSONArray.fromObject(menus, config);
		logger.info(jsonObject.toString());
		menuString = jsonObject.toString();
		String[] headers = { "encoding:UTF-8", "no-cache:false" };
		renderJson(menuString, headers);
	}

	public String query() throws Exception {
		return this.refreshGridModel();
	}

	public String list() throws Exception {
		return "list";
	}

	@Override
	public Long getResultSize() {
		return menuService.getTotalCount();
	}

	@Override
	public List<Menu> listResults(int firstResult, int maxResults) {
		return menuService.findByPage(firstResult, maxResults);
	}

	@Override
	public void sortResults(List<Menu> results, String field, String order) {

	}

	@Override
	public Long getResultSize(Criterion... criterions) {
		return menuService.getTotalCount(criterions);
	}

	@Override
	public List<Menu> listResults(int firstResult, int maxResults,
			Criterion... criterions) {
		return menuService.findByPage(firstResult, maxResults, criterions);
	}
}
