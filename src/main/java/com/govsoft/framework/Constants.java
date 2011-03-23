package com.govsoft.framework;

public class Constants {

	public static final String SERVER_NAME = "govsoft-framework";

	public static final String SESSION_KEY = "_session_key";

	public static final int SESSION_EXPIRY_TIME = 60 * 60;

	public static final String COOKIES_PATH = "/";

	public static final String COOKIES_DOMAIN = "";

	public static final String SESSION_COOKIE_ID = "_session_cookie_id";

	public static final String ATTACHED_PATH = "/attached";

	public static final String ATTACHED_DOCUMENT_PATH = ATTACHED_PATH
			+ "/document";

	public static final String ATTACHED_PHOTO_PATH = ATTACHED_PATH + "/photo";

	public static final String ATTACHED_PICTURE_PATH = ATTACHED_PATH
			+ "/picture";

    /**
     * File separator from System properties
     */
    public static final String FILE_SEP = System.getProperty("file.separator");
    
    
    /**
	 * UTF-8编码
	 */
	public static final String ENCODING_DEFAULT = "UTF-8";
	
	/**
	 * HTTP POST请求
	 */
	public static final String POST_METHOD = "POST";
	/**
	 * HTTP GET请求
	 */
	public static final String GET_METHOD = "GET";
    
    /**
	 * cookie中的JSESSIONID名称
	 */
	public static final String JSESSION_COOKIE = "JSESSIONID";
	/**
	 * url中的jsessionid名称
	 */
	public static final String JSESSION_URL = "jsessionid";
	
}
