package com.govsoft.framework.common.page;

import java.io.Serializable;
import java.util.Collections;
import java.util.List;

public class PageRequest<T> implements Serializable {

	private static final long serialVersionUID = 1L;
	/**
	 * 过滤参数
	 */
	private T filters;
	/**
	 * 页号码,页码从1开始
	 */
	private int pageNumber;
	/**
	 * 分页大小
	 */
	private int pageSize;
	/**
	 * 排序的多个列,如: username desc
	 */
	private String sortColumns;

	public PageRequest() {
		this(0, 0);
	}

	public PageRequest(T filters) {
		this(0, 0, filters);
	}

	public PageRequest(int pageNumber, int pageSize) {
		this(pageNumber, pageSize, (T) null);
	}

	public PageRequest(int pageNumber, int pageSize, T filters) {
		this(pageNumber, pageSize, filters, null);
	}

	public PageRequest(int pageNumber, int pageSize, String sortColumns) {
		this(pageNumber, pageSize, null, sortColumns);
	}

	public PageRequest(int pageNumber, int pageSize, T filters,
			String sortColumns) {
		this.pageNumber = pageNumber;
		this.pageSize = pageSize;
		setFilters(filters);
		setSortColumns(sortColumns);
	}

	public T getFilters() {
		return filters;
	}

	public void setFilters(T filters) {
		this.filters = filters;
	}

	public int getPageNumber() {
		return pageNumber;
	}

	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public String getSortColumns() {
		return sortColumns;
	}

	/**
	 * 排序的列,可以同时多列,使用逗号分隔,如 username desc,age asc
	 * 
	 * @return
	 */
	public void setSortColumns(String sortColumns) {
		this.sortColumns = sortColumns;
	}

	/**
	 * 将sortColumns进行解析以便返回SortInfo以便使用
	 * 
	 * @return
	 */
	public List<SortInfo> getSortInfos() {
		return Collections.unmodifiableList(SortInfo
				.parseSortColumns(sortColumns));
	}

}
