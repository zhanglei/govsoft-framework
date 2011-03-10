package com.govsoft.framework.service;

import java.io.ByteArrayOutputStream;
import java.io.IOException;

import javax.annotation.Resource;

import org.junit.Assert;
import org.junit.Test;

import com.govsoft.framework.SpringTxTestCase;
import com.govsoft.framework.service.ValidateImageService;

public class ValidateImageServiceTest extends SpringTxTestCase {
	@Resource(name = "validateImageService")
	private ValidateImageService validateImageService;

	@Test
	public void createValidateCode() throws IOException {
		int width = 80;
		int height = 20;
		int fontSize = 16;
		int codeLength = 4;
		ByteArrayOutputStream bos = new ByteArrayOutputStream();
		String validateCode = null;
		validateCode = validateImageService.createValidateCode(
				ValidateImageService.Disturb_Type_Simple, fontSize, bos, width,
				height, ValidateImageService.Default_ValidateCode, codeLength);
		// ByteArrayInputStream inputStream = new ByteArrayInputStream(bos
		// .toByteArray());
		bos.close();
		Assert.assertNotNull(validateCode);
	}
}
