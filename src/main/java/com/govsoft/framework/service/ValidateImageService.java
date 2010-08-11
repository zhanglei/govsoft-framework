package com.govsoft.framework.service;

import java.io.ByteArrayOutputStream;

public interface ValidateImageService {
	/**
	 * 默认验证字符串
	 */
	String Default_ValidateCode = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
	/**
	 * 默认绘制干扰线的类型（不绘制干扰线）
	 */
	int Disturb_Type_Default = 0;
	/**
	 * 绘制单一色调的干扰线
	 */
	int Disturb_Type_Simple = 1;
	/**
	 * 绘制复杂的干扰线
	 */
	int Disturb_Type_Complex = 2;

	/**
	 * 生成验证图片并返回验证码
	 * 
	 * @param disturbType
	 * @param fontSize
	 * @param bos
	 * @param width
	 * @param height
	 * @param validateCode
	 * @param codeLength
	 * @return
	 */
	public abstract String createValidateCode(int disturbType, int fontSize,
			ByteArrayOutputStream bos, int width, int height,
			String validateCode, int codeLength);
}
