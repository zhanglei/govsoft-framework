package com.govsoft.framework.web.spring.mvc;

import java.util.List;

import org.hibernate.criterion.Criterion;
import org.springframework.stereotype.Controller;

import com.govsoft.framework.common.spring.mvc.BaseController;
import com.govsoft.framework.model.Menu;

@Controller
public class MenuController extends BaseController<Menu> {

	@Override
	public Long getResultSize() {
		return null;
	}

	@Override
	public List<Menu> listResults(int firstResult, int maxResults) {
		return null;
	}

	@Override
	public Long getResultSize(Criterion... criterions) {
		return null;
	}

	@Override
	public List<Menu> listResults(int firstResult, int maxResults,
			Criterion... criterions) {
		return null;
	}

	@Override
	public void sortResults(List<Menu> results, String field, String order) {

	}

}
