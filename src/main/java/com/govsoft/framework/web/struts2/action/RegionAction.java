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
import com.govsoft.framework.model.Region;
import com.govsoft.framework.service.RegionService;

@ParentPackage(value = "crud-default")
@Namespace("")
@Results( {
		@Result(name = "jsongrid", params = { "excludeProperties",
				".*hibernateLazyInitializer", "includeProperties",
				"^gridModel\\[\\d+\\]\\.\\w+,,rows, page, total, record",
				"noCache", "true", "ignoreHierarchy", "false",
				"excludeNullProperties", "true" }, type = "json"),
		@Result(name = "list", location = RegionAction.PREFIX
				+ BaseStruts2Action.LIST, type = "redirect"),
		@Result(name = "form", location = RegionAction.PREFIX
				+ BaseStruts2Action.EDIT, type = "redirect"),
		@Result(name = "show", location = RegionAction.PREFIX
				+ BaseStruts2Action.SHOW, type = "redirect") })
public class RegionAction extends BaseStruts2Action<Region>{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected static final String PREFIX = Constants.SERVER_NAME
	+ "/basedata/region/";
	

	private Region entity;

	private String id;

	private List<Region> regions;

	@Resource(name = "regionService")
	private RegionService regionService;

	public void setId(String id) {
		this.id = id;
	}
	
	@JSON
	public List<Region> getRegions() {
		return regions;
	}

	@Override
	public Region getModel() {
		return entity;
	}

	@Override
	public void prepare() throws Exception {
		if (id != null) {
			entity = regionService.findById(id);
		} else {
			entity = new Region();
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
		return regionService.getTotalCount();
	}

	@Override
	public Long getResultSize(Criterion... criterions) {
		return regionService.getTotalCount(criterions);
	}

	@Override
	public List<Region> listResults(int firstResult, int maxResults) {
		return regionService.findByPage(firstResult, maxResults);
	}

	@Override
	public List<Region> listResults(int firstResult, int maxResults,
			Criterion... criterions) {
		return regionService.findByPage(firstResult, maxResults, criterions);
	}

	@Override
	public void sortResults(List<Region> results, String field, String order) {
		
	}

}
