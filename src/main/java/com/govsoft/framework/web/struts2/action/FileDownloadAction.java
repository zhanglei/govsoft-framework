package com.govsoft.framework.web.struts2.action;

import java.io.InputStream;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class FileDownloadAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	
	private String inputPath;

	public void setInputPath(String value) {
		inputPath = value;
	}

	public InputStream getInputStream() throws Exception {
		return ServletActionContext.getServletContext().getResourceAsStream(
				inputPath);
	}

}
