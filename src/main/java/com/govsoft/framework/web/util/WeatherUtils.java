package com.govsoft.framework.web.util;

import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.DOMException;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class WeatherUtils {

	private static String SERVICES_HOST = "www.webxml.com.cn";
	private static String WEATHER_SERVICES_URL = "http://webservice.webxml.com.cn/WebServices/WeatherWS.asmx/";
	private static String GET_CITY_CODE = WEATHER_SERVICES_URL
			+ "getSupportCityString?theRegionCode=";

	private static String WEATHER_QUERY_URL = WEATHER_SERVICES_URL
			+ "getWeather?theUserID=&theCityCode=";

	private static String GET_REGION_BY_IP = "http://www.webxml.com.cn/WebServices/IpAddressSearchWebService.asmx/getGeoIPContext";

	private static String GET_PROVINCE_CODE = WEATHER_SERVICES_URL
			+ "getRegionProvince";

	private WeatherUtils() {
	}

	public static InputStream getSoapInputStream(String url) {
		InputStream is = null;

		try {
			URL U = new URL(url);
			URLConnection conn = U.openConnection();
			conn.setRequestProperty("Host", SERVICES_HOST);
			conn.connect();
			is = conn.getInputStream();
		} catch (MalformedURLException e) {

			e.printStackTrace();
		} catch (IOException e) {

			e.printStackTrace();
		}
		return is;
	}

	public static List<String> getWeather(int cityCode) {
		List<String> weatherList = new ArrayList<String>();
		Document doc;
		DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
		dbf.setNamespaceAware(true);

		try {
			DocumentBuilder db = dbf.newDocumentBuilder();

			InputStream is = getSoapInputStream(WEATHER_QUERY_URL + cityCode);
			doc = db.parse(is);
			NodeList nl = doc.getElementsByTagName("string");

			int len = nl.getLength();

			for (int i = 0; i < len; i++) {
				Node n = nl.item(i);
				String weather = n.getFirstChild().getNodeValue();
				weatherList.add(weather);
			}
			is.close();
		} catch (UnsupportedEncodingException e) {

			e.printStackTrace();
		} catch (DOMException e) {

			e.printStackTrace();
		} catch (ParserConfigurationException e) {

			e.printStackTrace();
		} catch (SAXException e) {

			e.printStackTrace();
		} catch (IOException e) {

			e.printStackTrace();
		}
		return weatherList;
	}

	public static void main(String[] args) throws Exception {

		getRegion();

		String[] pInfo = getRegion();

		String provinceName = pInfo[0];
		String cityName = pInfo[1];

		int provinceCode = getProvinceCode(provinceName);

		int cityCode = getCityCode(provinceCode, cityName);

		List<String> weatherList = WeatherUtils.getWeather(cityCode);

		for (String weather : weatherList) {
			System.out.println(weather);
		}

	}

	public static String[] getRegion() {
		Document doc;
		DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
		dbf.setNamespaceAware(true);
		String[] regionInfo = new String[5];

		try {

			DocumentBuilder db = dbf.newDocumentBuilder();
			InputStream is = getSoapInputStream(GET_REGION_BY_IP);
			doc = db.parse(is);
			NodeList nl = doc.getElementsByTagName("string");
			int len = nl.getLength();

			for (int i = 0; i < len; i++) {
				if (i == 1) {
					Node n = nl.item(i);

					String[] provinceInfo = n.getFirstChild().getNodeValue()
							.split("ʡ");

					String province = provinceInfo[0];

					String[] cityInfo = provinceInfo[1].split("��");

					String city = cityInfo[0];

					regionInfo[0] = province;
					regionInfo[1] = city;

				}

			}
			is.close();

		} catch (DOMException e) {

			e.printStackTrace();
		} catch (ParserConfigurationException e) {

			e.printStackTrace();
		} catch (SAXException e) {

			e.printStackTrace();
		} catch (IOException e) {

			e.printStackTrace();
		}

		return regionInfo;

	}

	public static int getProvinceCode(String provinceName) {
		Document doc;
		DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
		dbf.setNamespaceAware(true);
		int provinceCode = 0;

		try {

			DocumentBuilder db = dbf.newDocumentBuilder();
			InputStream is = getSoapInputStream(GET_PROVINCE_CODE);
			doc = db.parse(is);
			NodeList nl = doc.getElementsByTagName("string");
			int len = nl.getLength();

			for (int i = 0; i < len; i++) {
				Node n = nl.item(i);

				String result = n.getFirstChild().getNodeValue();

				String[] address = result.split(",");

				String pName = address[0];
				String pCode = address[1];

				if (pName.equalsIgnoreCase(provinceName)) {
					provinceCode = Integer.parseInt(pCode);
				}

			}
			is.close();

		} catch (DOMException e) {

			e.printStackTrace();
		} catch (ParserConfigurationException e) {

			e.printStackTrace();
		} catch (SAXException e) {

			e.printStackTrace();
		} catch (IOException e) {

			e.printStackTrace();
		}

		return provinceCode;

	}

	public static int getCityCode(int provinceCode, String cityName) {
		Document doc;
		DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
		dbf.setNamespaceAware(true);
		int cityCode = 0;

		try {

			DocumentBuilder db = dbf.newDocumentBuilder();
			InputStream is = getSoapInputStream(GET_CITY_CODE + provinceCode);
			doc = db.parse(is);

			NodeList nl = doc.getElementsByTagName("string");
			int len = nl.getLength();

			for (int i = 0; i < len; i++) {
				Node n = nl.item(i);

				String result = n.getFirstChild().getNodeValue();

				String[] address = result.split(",");

				String cName = address[0];
				String cCode = address[1];

				if (cName.equalsIgnoreCase(cityName)) {
					cityCode = Integer.parseInt(cCode);
				}

			}
			is.close();

		} catch (DOMException e) {

			e.printStackTrace();
		} catch (ParserConfigurationException e) {

			e.printStackTrace();
		} catch (SAXException e) {

			e.printStackTrace();
		} catch (IOException e) {

			e.printStackTrace();
		}

		return cityCode;

	}

}
