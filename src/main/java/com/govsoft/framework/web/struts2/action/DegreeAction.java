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
import com.govsoft.framework.model.Degree;
import com.govsoft.framework.service.DegreeService;

@ParentPackage(value = "crud-default")
@Namespace("")
@Results( {
		@Result(name = "jsongrid", params = { "excludeProperties",
				".*hibernateLazyInitializer", "includeProperties",
				"^gridModel\\[\\d+\\]\\.\\w+,,rows, page, total, record",
				"noCache", "true", "ignoreHierarchy", "false",
				"excludeNullProperties", "true" }, type = "json"),
		@Result(name = "list", location = DegreeAction.PREFIX
				+ BaseStruts2Action.LIST, type = "redirect"),
		@Result(name = "form", location = DegreeAction.PREFIX
				+ BaseStruts2Action.EDIT, type = "redirect"),
		@Result(name = "show", location = DegreeAction.PREFIX
				+ BaseStruts2Action.SHOW, type = "redirect") })
public class DegreeAction extends BaseStruts2Action<Degree> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected static final String PREFIX = Constants.SERVER_NAME
			+ "/basedata/degree/";

	private Degree entity;

	private String id;

	private List<Degree> degrees;

	@Resource(name = "degreeService")
	private DegreeService degreeService;

	public void setId(String id) {
		this.id = id;
	}
	
	@JSON
	public List<Degree> getDegrees() {
		return degrees;
	}

	@Override
	public Degree getModel() {
		return entity;
	}

	@Override
	public void prepare() throws Exception {
		if (id != null) {
			entity = degreeService.findById(id);
		} else {
			entity = new Degree();
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
		return degreeService.getTotalCount();
	}

	@Override
	public Long getResultSize(Criterion... criterions) {
		return degreeService.getTotalCount(criterions);
	}

	@Override
	public List<Degree> listResults(int firstResult, int maxResults) {
		return degreeService.findByPage(firstResult, maxResults);
	}

	@Override
	public List<Degree> listResults(int firstResult, int maxResults,
			Criterion... criterions) {
		return degreeService.findByPage(firstResult, maxResults, criterions);
	}

	@Override
	public void sortResults(List<Degree> results, String field, String order) {

	}

}
