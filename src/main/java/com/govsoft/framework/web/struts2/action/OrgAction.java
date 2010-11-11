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
import com.govsoft.framework.model.Org;
import com.govsoft.framework.service.OrgService;

@ParentPackage(value = "crud-default")
@Namespace("")
@Results( {
		@Result(name = "jsongrid", params = { "excludeProperties",
				".*hibernateLazyInitializer", "includeProperties",
				"^gridModel\\[\\d+\\]\\.\\w+,,rows, page, total, record",
				"noCache", "true", "ignoreHierarchy", "false",
				"excludeNullProperties", "true" }, type = "json"),
		@Result(name = "list", location = OrgAction.PREFIX
				+ BaseStruts2Action.LIST, type = "redirect"),
		@Result(name = "form", location = OrgAction.PREFIX
				+ BaseStruts2Action.EDIT, type = "redirect"),
		@Result(name = "show", location = OrgAction.PREFIX
				+ BaseStruts2Action.SHOW, type = "redirect") })
public class OrgAction extends BaseStruts2Action<Org> {

	private static final long serialVersionUID = 1L;

	protected static final String PREFIX = Constants.SERVER_NAME
			+ "/system/org/";

	private Org entity;

	private String id;

	private List<Org> orgs;

	@Resource(name = "orgService")
	private OrgService orgService;

	public void setId(String id) {
		this.id = id;
	}

	@JSON
	public List<Org> getOrgs() {
		return orgs;
	}

	public Org getModel() {
		return entity;
	}

	public void prepare() throws Exception {
		if (id != null) {
			entity = orgService.findById(id);
		} else {
			entity = new Org();
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
		return orgService.getTotalCount();
	}

	@Override
	public List<Org> listResults(int firstResult, int maxResults) {
		return orgService.findByPage(firstResult, maxResults);
	}

	@Override
	public void sortResults(List<Org> results, String field, String order) {

	}

	@Override
	public Long getResultSize(Criterion... criterions) {
		return orgService.getTotalCount(criterions);
	}

	@Override
	public List<Org> listResults(int firstResult, int maxResults,
			Criterion... criterions) {
		return orgService.findByPage(firstResult, maxResults, criterions);
	}

}
