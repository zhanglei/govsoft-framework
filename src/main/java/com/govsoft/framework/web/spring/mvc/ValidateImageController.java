package com.govsoft.framework.web.spring.mvc;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.govsoft.framework.service.ValidateImageService;

@Controller
public class ValidateImageController {

	private static final String Default_ValidateCode = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
	
	private Map<String, Object> session;
	
	private int width;
	private int height;
	private int fontSize;
	private int codeLength;
	private String contentType;

	private ByteArrayInputStream inputStream;
	
	@Resource(name = "validateImageService")
	private ValidateImageService validateImageService;
	
	public ValidateImageController() {
		width = 50;
		height = 20;
		fontSize = 16;
		codeLength = 4;
		contentType = "image/jpeg";
	}
	
	
	@RequestMapping(value="validateCode",params={
			"contentType", "image/jpeg", "inputName", "inputStream" })
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
