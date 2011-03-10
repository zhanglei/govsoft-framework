package com.govsoft.framework.web.struts2.action;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.interceptor.SessionAware;

import com.govsoft.framework.service.ValidateImageService;
import com.opensymphony.xwork2.ActionSupport;

@ParentPackage(value = "crud-default")
@Namespace(value = "")
public class ValidateImageAction extends ActionSupport implements SessionAware {

	private static final long serialVersionUID = 1L;

	private static final String Default_ValidateCode = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";

	private Map<String, Object> session;

	private int width;
	private int height;
	private int fontSize;
	private int codeLength;
	private String contentType;

	@Resource(name = "validateImageService")
	private ValidateImageService validateImageService;

	private ByteArrayInputStream inputStream;

	public String getContentType() {
		return contentType;
	}

	public void setContentType(String contentType) {
		this.contentType = contentType;
	}

	public ByteArrayInputStream getInputStream() {
		return inputStream;
	}

	public void setInputStream(ByteArrayInputStream inputStream) {
		this.inputStream = inputStream;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public ValidateImageAction() {
		width = 50;
		height = 20;
		fontSize = 16;
		codeLength = 4;
		contentType = "image/jpeg";
	}

	@Action(value = "validateCode", results = { @Result(name = "validateCode", type = "stream", params = {
			"contentType", "image/jpeg", "inputName", "inputStream" }, location = "random.do") })
	public String execute() throws Exception {
		session.put("validCode",
				createInputStream(ValidateImageService.Disturb_Type_Simple));
		return "validateCode";
	}

	private String createInputStream(int disturbType) throws IOException {
		ByteArrayOutputStream bos = new ByteArrayOutputStream();
		String validateCode = null;
		validateCode = validateImageService.createValidateCode(disturbType,
				fontSize, bos, width, height, Default_ValidateCode, codeLength);
		inputStream = new ByteArrayInputStream(bos.toByteArray());
		bos.close();
		return validateCode;
	}

}
