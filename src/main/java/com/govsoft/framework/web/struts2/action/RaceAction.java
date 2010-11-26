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
import com.govsoft.framework.model.Race;
import com.govsoft.framework.service.RaceService;

@ParentPackage(value = "crud-default")
@Namespace("")
@Results( {
		@Result(name = "jsongrid", params = { "excludeProperties",
				".*hibernateLazyInitializer", "includeProperties",
				"^gridModel\\[\\d+\\]\\.\\w+,,rows, page, total, record",
				"noCache", "true", "ignoreHierarchy", "false",
				"excludeNullProperties", "true" }, type = "json"),
		@Result(name = "list", location = RaceAction.PREFIX
				+ BaseStruts2Action.LIST, type = "redirect"),
		@Result(name = "form", location = RaceAction.PREFIX
				+ BaseStruts2Action.EDIT, type = "redirect"),
		@Result(name = "show", location = RaceAction.PREFIX
				+ BaseStruts2Action.SHOW, type = "redirect") })
public class RaceAction extends BaseStruts2Action<Race> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected static final String PREFIX = Constants.SERVER_NAME
			+ "/basedata/race/";

	private Race entity;

	private String id;

	private List<Race> races;

	@Resource(name = "raceService")
	private RaceService raceService;

	public void setId(String id) {
		this.id = id;
	}

	@JSON
	public List<Race> getRaces() {
		return races;
	}

	@Override
	public Race getModel() {
		return entity;
	}

	@Override
	public void prepare() throws Exception {
		if (id != null) {
			entity = raceService.findById(id);
		} else {
			entity = new Race();
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
		return raceService.getTotalCount();
	}

	@Override
	public Long getResultSize(Criterion... criterions) {
		return raceService.getTotalCount(criterions);
	}

	@Override
	public List<Race> listResults(int firstResult, int maxResults) {
		return raceService.findByPage(firstResult, maxResults);
	}

	@Override
	public List<Race> listResults(int firstResult, int maxResults,
			Criterion... criterions) {
		return raceService.findByPage(firstResult, maxResults, criterions);
	}

	@Override
	public void sortResults(List<Race> results, String field, String order) {

	}

}
