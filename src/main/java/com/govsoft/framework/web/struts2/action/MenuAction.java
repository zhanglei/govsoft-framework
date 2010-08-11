package com.govsoft.framework.web.struts2.action;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;
import net.sf.json.JsonConfig;

import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.apache.struts2.json.annotations.JSON;

import com.govsoft.framework.Constants;
import com.govsoft.framework.common.struts2.BaseStruts2Action;
import com.govsoft.framework.model.Menu;
import com.govsoft.framework.service.MenuService;
import com.govsoft.framework.web.util.DateJsonValueProcessor;

@ParentPackage(value = "crud-default")
@Namespace("")
@Results( {
		@Result(name = "list", params = { "excludeProperties",
				".*hibernateLazyInitializer" }, type = "json"),
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

	public void setId(String id) {
		this.id = id;
	}

	// public String get_gt_json() {
	// return _gt_json;
	// }
	//
	// public void set_gt_json(String gtJson) {
	// _gt_json = gtJson;
	// }

	@JSON(name = "data")
	public String getMenuString() {
		return menuString;
	}

	@JSON(serialize = false)
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

	public String list() throws Exception {
		menus = menuService.findAll();
		// menuString = JsonUtils.getJsonStringFromJavaPOJO(menus,
		// DateJsonValueProcessor.DEFAULT_DATE_PATTERN);
		JsonConfig config = new JsonConfig();
		config.setExcludes(new String[] { "execludeField", "sequence",
				"parent", "childs", "roles", "authorizedChild" });
		config.registerJsonValueProcessor(Date.class,
				new DateJsonValueProcessor("yyyy-MM-dd"));
		JSONArray jsonObject = JSONArray.fromObject(menus, config);
		logger.info(jsonObject.toString());
		menuString = jsonObject.toString();
		return "list";
	}
}
