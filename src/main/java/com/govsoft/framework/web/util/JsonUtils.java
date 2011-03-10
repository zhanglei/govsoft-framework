package com.govsoft.framework.web.util;

import java.beans.IntrospectionException;
import java.beans.Introspector;
import java.beans.PropertyDescriptor;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;
import net.sf.json.util.CycleDetectionStrategy;

import com.govsoft.framework.common.util.DateConvertUtils;

public class JsonUtils {

	private JsonUtils() {
		super();
	}

	/** */
	/**
	 * 从一个JSON 对象字符格式中得到一个java对象
	 * 
	 * @param jsonString
	 * @param pojoCalss
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public static Object getObjectFromJsonString(String jsonString,
			Class pojoCalss) {
		Object pojo;
		JSONObject jsonObject = JSONObject.fromObject(jsonString);
		pojo = JSONObject.toBean(jsonObject, pojoCalss);
		return pojo;
	}

	/**
	 * 从json HASH表达式中获取一个map，改map支持嵌套功能
	 * 
	 * @param jsonString
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public static Map getMapFromJson(String jsonString) {
		JSONObject jsonObject = JSONObject.fromObject(jsonString);
		Iterator keyIter = jsonObject.keys();
		String key;
		Object value;
		Map valueMap = new HashMap();

		while (keyIter.hasNext()) {
			key = (String) keyIter.next();
			value = jsonObject.get(key);
			valueMap.put(key, value);
		}

		return valueMap;
	}

	/** */
	/**
	 * 从json数组中得到相应java数组
	 * 
	 * @param jsonString
	 * @return
	 */
	public static Object[] getObjectArrayFromJson(String jsonString) {
		JSONArray jsonArray = JSONArray.fromObject(jsonString);
		return jsonArray.toArray();

	}

	/** */
	/**
	 * 从json对象集合表达式中得到一个java对象列表
	 * 
	 * @param jsonString
	 * @param pojoClass
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public static List getListFromJson(String jsonString, Class pojoClass) {

		JSONArray jsonArray = JSONArray.fromObject(jsonString);
		JSONObject jsonObject;
		Object pojoValue;

		List list = new ArrayList();
		for (int i = 0; i < jsonArray.size(); i++) {

			jsonObject = jsonArray.getJSONObject(i);
			pojoValue = JSONObject.toBean(jsonObject, pojoClass);
			list.add(pojoValue);

		}
		return list;

	}

	/** */
	/**
	 * 从json数组中解析出java字符串数组
	 * 
	 * @param jsonString
	 * @return
	 */
	public static String[] getStringArrayFromJson(String jsonString) {

		JSONArray jsonArray = JSONArray.fromObject(jsonString);
		String[] stringArray = new String[jsonArray.size()];
		for (int i = 0; i < jsonArray.size(); i++) {
			stringArray[i] = jsonArray.getString(i);

		}

		return stringArray;
	}

	/** */
	/**
	 * 从json数组中解析出javaLong型对象数组
	 * 
	 * @param jsonString
	 * @return
	 */
	public static Long[] getLongArrayFromJson(String jsonString) {

		JSONArray jsonArray = JSONArray.fromObject(jsonString);
		Long[] longArray = new Long[jsonArray.size()];
		for (int i = 0; i < jsonArray.size(); i++) {
			longArray[i] = jsonArray.getLong(i);

		}
		return longArray;
	}

	/** */
	/**
	 * 从json数组中解析出java Integer型对象数组
	 * 
	 * @param jsonString
	 * @return
	 */
	public static Integer[] getIntegerArrayFromJson(String jsonString) {

		JSONArray jsonArray = JSONArray.fromObject(jsonString);
		Integer[] integerArray = new Integer[jsonArray.size()];
		for (int i = 0; i < jsonArray.size(); i++) {
			integerArray[i] = jsonArray.getInt(i);

		}
		return integerArray;
	}

	/** */
	/**
	 * 从json数组中解析出java Date 型对象数组，使用本方法必须保证
	 * 
	 * @param jsonString
	 * @return
	 */
	public static Date[] getDateArrayFromJson(String jsonString, String DataFormat) {

		JSONArray jsonArray = JSONArray.fromObject(jsonString);
		Date[] dateArray = new Date[jsonArray.size()];
		String dateString;
		Date date;

		for (int i = 0; i < jsonArray.size(); i++) {
			dateString = jsonArray.getString(i);
			date = DateConvertUtils.parse(dateString, DataFormat);
			dateArray[i] = date;

		}
		return dateArray;
	}

	/** */
	/**
	 * 从json数组中解析出java Integer型对象数组
	 * 
	 * @param jsonString
	 * @return
	 */
	public static Double[] getDoubleArrayFromJson(String jsonString) {

		JSONArray jsonArray = JSONArray.fromObject(jsonString);
		Double[] doubleArray = new Double[jsonArray.size()];
		for (int i = 0; i < jsonArray.size(); i++) {
			doubleArray[i] = jsonArray.getDouble(i);

		}
		return doubleArray;
	}

	/** */
	/**
	 * 将java对象转换成json字符串
	 * 
	 * @param javaObj
	 * @return
	 */
	public static String getJsonStringFromJavaPOJO(Object javaObj) {

		JSONObject json;
		json = JSONObject.fromObject(javaObj);
		return json.toString();

	}

	/** */
	/**
	 * 将java对象转换成json字符串,并设定日期格式
	 * 
	 * @param javaObj
	 * @param dataFormat
	 * @return
	 */
	public static String getJsonStringFromJavaPOJO(Object javaObj,
			String dataFormat) {

		JSONObject json;
		JsonConfig jsonConfig = configJson(dataFormat);
		json = JSONObject.fromObject(javaObj, jsonConfig);
		return json.toString();

	}

	/** */
	/**
	 * JSON 时间解析器具
	 * 
	 * @param datePattern
	 * @return
	 */
	public static JsonConfig configJson(String datePattern) {
		JsonConfig jsonConfig = new JsonConfig();
		jsonConfig.setExcludes(new String[] { "" });
		jsonConfig.setIgnoreDefaultExcludes(false);
		jsonConfig.setCycleDetectionStrategy(CycleDetectionStrategy.LENIENT);
		jsonConfig.registerJsonValueProcessor(Date.class,
				new DateJsonValueProcessor(datePattern));

		return jsonConfig;
	}

	/** */
	/**
	 * 
	 * @param excludes
	 * @param datePattern
	 * @return
	 */
	public static JsonConfig configJson(String[] excludes, String datePattern) {
		JsonConfig jsonConfig = new JsonConfig();
		jsonConfig.setExcludes(excludes);
		jsonConfig.setIgnoreDefaultExcludes(false);
		jsonConfig.setCycleDetectionStrategy(CycleDetectionStrategy.LENIENT);
		jsonConfig.registerJsonValueProcessor(Date.class,
				new DateJsonValueProcessor(datePattern));

		return jsonConfig;
	}

	@SuppressWarnings("unchecked")
	public static String object2json(Object obj) {  
	    StringBuilder json = new StringBuilder();  
	    if (obj == null) {  
	      json.append("\"\"");  
	    } else if (obj instanceof String ||
	         obj instanceof Integer ||
	         obj instanceof Float  ||
	         obj instanceof Boolean ||
	         obj instanceof Short ||
	         obj instanceof Double || 
	         obj instanceof Long ||
	         obj instanceof BigDecimal ||
	         obj instanceof BigInteger || 
	         obj instanceof Byte) {  
	      json.append("\"").append(string2json(obj.toString())).append("\"");  
	    } else if (obj instanceof Object[]) {  
	      json.append(array2json((Object[]) obj));  
	    } else if (obj instanceof List) {  
	      json.append(list2json((List<?>) obj));  
	    } else if (obj instanceof Map) {  
	      json.append(map2json((Map<?, ?>) obj));  
	    } else if (obj instanceof Set) {  
	      json.append(set2json((Set<?>) obj));  
	    } else {  
	      json.append(bean2json(obj));  
	    }  
	    return json.toString();  
	  }  
	 
	   
	  public static String bean2json(Object bean) {  
	    StringBuilder json = new StringBuilder();  
	    json.append("{");  
	    PropertyDescriptor[] props = null;  
	    try {  
	      props = Introspector.getBeanInfo(bean.getClass(), Object.class).getPropertyDescriptors();  
	    } catch (IntrospectionException e) {}  
	    if (props != null) {  
	      for (int i = 0; i < props.length; i++) {  
	        try {  
	          String name = object2json(props[i].getName());  
	          String value = object2json(props[i].getReadMethod().invoke(bean));  
	          json.append(name);  
	          json.append(":");  
	          json.append(value);  
	          json.append(",");  
	        } catch (Exception e) {}  
	      }  
	      json.setCharAt(json.length() - 1, '}');  
	    } else {  
	      json.append("}");  
	    }  
	    return json.toString();  
	  }  
	 
	   
	  public static String list2json(List<?> list) {  
	    StringBuilder json = new StringBuilder();  
	    json.append("[");  
	    if (list != null && list.size() > 0) {  
	      for (Object obj : list) {  
	        json.append(object2json(obj));  
	        json.append(",");  
	      }  
	      json.setCharAt(json.length() - 1, ']');  
	    } else {  
	      json.append("]");  
	    }  
	    return json.toString();  
	  }  
	 
	   
	  public static String array2json(Object[] array) {  
	    StringBuilder json = new StringBuilder();  
	    json.append("[");  
	    if (array != null && array.length > 0) {  
	      for (Object obj : array) {  
	        json.append(object2json(obj));  
	        json.append(",");  
	      }  
	      json.setCharAt(json.length() - 1, ']');  
	    } else {  
	      json.append("]");  
	    }  
	    return json.toString();  
	  }  
	 
	   
	  public static String map2json(Map<?, ?> map) {  
	    StringBuilder json = new StringBuilder();  
	    json.append("{");  
	    if (map != null && map.size() > 0) {  
	      for (Object key : map.keySet()) {  
	        json.append(object2json(key));  
	        json.append(":");  
	        json.append(object2json(map.get(key)));  
	        json.append(",");  
	      }  
	      json.setCharAt(json.length() - 1, '}');  
	    } else {  
	      json.append("}");  
	    }  
	    return json.toString();  
	  }  
	 
	   
	  public static String set2json(Set<?> set) {  
	    StringBuilder json = new StringBuilder();  
	    json.append("[");  
	    if (set != null && set.size() > 0) {  
	      for (Object obj : set) {  
	        json.append(object2json(obj));  
	        json.append(",");  
	      }  
	      json.setCharAt(json.length() - 1, ']');  
	    } else {  
	      json.append("]");  
	    }  
	    return json.toString();  
	  }  
	 
	   
	  public static String string2json(String s) {  
	    if (s == null)  
	      return "";  
	    StringBuilder sb = new StringBuilder();  
	    for (int i = 0; i < s.length(); i++) {  
	      char ch = s.charAt(i);  
	      switch (ch) {  
	      case '"':  
	        sb.append("\\\"");  
	        break;  
	      case '\\':  
	        sb.append("\\\\");  
	        break;  
	      case '\b':  
	        sb.append("\\b");  
	        break;  
	      case '\f':  
	        sb.append("\\f");  
	        break;  
	      case '\n':  
	        sb.append("\\n");  
	        break;  
	      case '\r':  
	        sb.append("\\r");  
	        break;  
	      case '\t':  
	        sb.append("\\t");  
	        break;  
	      case '/':  
	        sb.append("\\/");  
	        break;  
	      default:  
	        if (ch >= '\u0000' && ch <= '\u001F') {  
	          String ss = Integer.toHexString(ch);  
	          sb.append("\\u");  
	          for (int k = 0; k < 4 - ss.length(); k++) {  
	            sb.append('0');  
	          }  
	          sb.append(ss.toUpperCase());  
	        } else {  
	          sb.append(ch);  
	        }  
	      }  
	    }  
	    return sb.toString();  
	  }  
	
}
