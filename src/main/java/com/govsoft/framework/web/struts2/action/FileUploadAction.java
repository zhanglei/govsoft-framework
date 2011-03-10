package com.govsoft.framework.web.struts2.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class FileUploadAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private File file;

	@SuppressWarnings("unused")
	private String fileContentType;

	private String fileFileName;

	@SuppressWarnings("unused")
	private String name;

	public void setFile(File file) {
		this.file = file;
	}

	public void setFileContentType(String fileContentType) {
		this.fileContentType = fileContentType;
	}

	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public HttpServletRequest getRequest() {
		return ServletActionContext.getRequest();
	}
	
	public HttpServletResponse getResponse() {
		return ServletActionContext.getResponse();
	}

	public String upload() throws Exception {
		 // the directory to upload to
        String uploadDir = ServletActionContext.getServletContext().getRealPath("/resources")
                + "/" + getRequest().getRemoteUser() + "/";

     // write the file to the file specified
        File dirPath = new File(uploadDir);
        
        if (!dirPath.exists()) {
            dirPath.mkdirs();
        }
        
        //retrieve the file data
        InputStream stream = new FileInputStream(file);
        
        //write the file to the file specified
        OutputStream bos = new FileOutputStream(uploadDir + fileFileName);
        int bytesRead;
        byte[] buffer = new byte[8192];

        while ((bytesRead = stream.read(buffer, 0, 8192)) != -1) {
            bos.write(buffer, 0, bytesRead);
        }

        bos.close();
        stream.close();
        
		return null;
	}

}
