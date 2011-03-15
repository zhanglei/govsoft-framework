package com.govsoft.framework.web.spring.mvc;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.criterion.Criterion;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.govsoft.framework.Constants;
import com.govsoft.framework.common.spring.mvc.BaseController;
import com.govsoft.framework.model.User;
import com.govsoft.framework.service.UserService;

@Controller
public class UserController extends BaseController<User> {

	protected static final String PREFIX = Constants.SERVER_NAME
			+ "/system/user/";

	@Resource(name = "userService")
	private UserService userService;

	@RequestMapping(PREFIX + LIST)
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
