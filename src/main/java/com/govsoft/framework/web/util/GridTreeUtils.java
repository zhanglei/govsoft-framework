package com.govsoft.framework.web.util;

import java.lang.reflect.InvocationTargetException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;


public class GridTreeUtils {
    protected static Log log = LogFactory.getLog("GridTreeUtil"); 
    /**
     * 取得起始行和终止行.
     * @param request 请求
     * @param allCount 总行数
     * @param pageSize 每页数目
     * @return 整型数组
     */
    public static int[] getStartAndEndInfo(HttpServletRequest request,
            int allCount, int pageSize) {
        int start = 0;
        //默认的分页行数就是传入的每页行数
        int limit = pageSize;
        String oper = null;
        //新的起始位置
        int newStart = 0;
        int newEnd = 0;
        //在点击翻页按钮的时候,会传递gtstart参数到后台.
        if (request.getParameter("gtstart") != null) {
            start = Integer.parseInt(request.getParameter("gtstart"));
            limit = Integer.parseInt(request.getParameter("gtlimit"));
            oper = request.getParameter("gtoper");
        }
        //否则就说明是第一次进入页面进行的查询
        else{
            limit = Integer.parseInt(request.getParameter("gtlimit"));
        }
        request.setAttribute("gtlimit", limit);
        //第一页
        if ("first".equals(oper)) {
            request.setAttribute("gtcurrentpage", "1");
            return new int[] { 1, limit + 1 };
        }
        //最后一页
        else if ("last".equals(oper)) {
            request.setAttribute("gtcurrentpage", (int) Math.ceil(allCount
                    / (limit * 1.0)));
            return new int[] { (allCount / limit) * limit+1, allCount + 1 };
        }
        //前一页
        else if ("pre".equals(oper)) {
            newStart = start - limit;
            newEnd = start;
            request.setAttribute("gtcurrentpage", (newStart / limit + 1));
            return new int[] { newStart+1, newEnd + 1 };
        }
        //后一页
        else if ("after".equals(oper)) {
            newStart = start + limit;
            newEnd = (start + limit * 2) > allCount ? allCount
                    : (start + limit * 2);
            request.setAttribute("gtcurrentpage", (newStart / limit + 1));
            return new int[] { newStart+1, newEnd + 1 };
        }
        //直接指向指定页数.这种情况下start传入的表示是新的页码而不是起始位置.
        else if ("refresh".equals(oper)) {
            newStart = (start - 1) * limit;
            newEnd = start * limit > allCount ? allCount : start * limit;
            request.setAttribute("gtcurrentpage", start);
            return new int[] { newStart+1, newEnd + 1 };
        }
        //重新分页
        else if ("repaging".equals(oper)) {
            request.setAttribute("gtcurrentpage", "1");
            return new int[] { 1, limit + 1 };
        }
        //如果是第一次显示,而且要显示分页栏,就说明只显示第一页之间的数据
        if(limit!=-1)
            return new int[] { 1, limit + 1 };
        //说明是第一次显示页面,而且不用显示分页栏,就是要返回全部的数据.
        else{
            return new int[] { 1, allCount + 1 };
        }
    }

    /**
     * 从请求中得到全部的行数.
     * @param request 请求
     * @param totalRows 数据库查询出来的总行数
     * @return 如果请求中没有总行数,就返回-1
     */
    public static int getCountFromRequest(HttpServletRequest request,
            int totalRows) {
        String count = request.getParameter("gtcount");
        String idColumn = request.getParameter("idColumn");
        String parentColumn = request.getParameter("parentColumn");
        request.setAttribute("idColumn", idColumn);
        request.setAttribute("parentColumn", parentColumn);
        int ans = 0;
        try {
            ans = Integer.parseInt(count);
        } catch (Exception e) {
            //如果gtcount不存在就会报错,就说明是第一次进入页面显示的时候.
            request.setAttribute("gtcurrentpage", "1");
            request.setAttribute("gtcount", totalRows);
            return totalRows;
        }
        request.setAttribute("gtcount", ans);
        return ans;
    }
    
    /**
     * 形成json字符串,返回到前台即可.
     * @param list
     * @param rowCount
     * @param pageSize
     */
    @SuppressWarnings("unchecked")
	public static String getJsonStr(List list, HttpServletRequest request) {
        StringBuffer buf = new StringBuffer();
		String idColumn = (String) request.getAttribute("idColumn");
		String parentColumn = (String) request.getAttribute("parentColumn");
		try {
			JSONObject jsonObj = new JSONObject();
			JSONArray jsonArr = new JSONArray();
			JSONObject idToNodeMap = new JSONObject();
			//节点id到节点的映射
			//Map idToNodeMap = new HashMap();
			//节点的父亲节点映射
			JSONObject idToParent = new JSONObject();
			//父亲节点到孩子节点的映射
			JSONObject parentToChildMap = new JSONObject();
			JSONArray parents = new JSONArray();
			//存储应该显示在第一级节点的节点id的集合
			JSONArray firstLevelNodes = new JSONArray();
			//用来存储那些不存在的父亲节点的id的集合
			JSONArray notExistsParent = new JSONArray();
			//只在后台分页模式下面进行后台的分析,否则就在前台进行树形的分析.
			if (request.getAttribute("pageingMode") != "client") {
				//循环对每个节点进行处理
				for (int i = 0; i < list.size(); i++) {
					Object obj = list.get(i);
					jsonArr.add(obj);
					String nodeStr = JsonUtils.object2json(obj);
					String id;
					id = "_node" + BeanUtils.getProperty(obj, idColumn);
					String parent = "_node"
							+ BeanUtils.getProperty(obj, parentColumn);
					//添加id到节点json串的映射
					//idToNodeMap.put(id, nodeStr);
					idToNodeMap.put(id, nodeStr);
					idToParent.put(id, parent);
					if (!parents.contains(parent)) {
						parents.add(parent);
					}

					if (parentToChildMap.keySet().contains(parent)) {
						JSONArray childs = (JSONArray) parentToChildMap
								.get(parent);
						childs.add(id);
						parentToChildMap.put(parent, childs);
					} else {
						JSONArray childs = new JSONArray();
						childs.add(id);
						parentToChildMap.put(parent, childs);
					}
				}
				for (int i = 0; i < parents.size(); i++) {
					Object aParent = parents.get(i);
					//如果父亲节点不是在id映射中存在的节点就说明应该显示在第一层位置的节点的父亲们！！
					if (!idToNodeMap.keySet().contains(aParent)) {
						JSONArray childs = (JSONArray) parentToChildMap
								.get(aParent);
						firstLevelNodes.addAll(childs);
						//如果不在节点中，就说明这个父亲节点是不存在的，应该从parents中删除
						notExistsParent.add(aParent);
					}
				}
				//在父亲节点集合中删除不存在的那些节点
				for (int i = 0; i < notExistsParent.size(); i++) {
					parents.remove(notExistsParent.get(i));
				}
			}
			long a = System.currentTimeMillis();
			jsonObj.put("allCount", request.getAttribute("gtcount"));
			jsonObj.put("pageSize", request.getAttribute("gtlimit"));
			jsonObj.put("currentPage", request.getAttribute("gtcurrentpage"));
			jsonObj.put("parents", parents);
			jsonObj.put("idToParent", idToParent);
			jsonObj.put("idToNodeMap", idToNodeMap);
			jsonObj.put("parentToChildMap", parentToChildMap);
			jsonObj.put("firstLevelNodes", firstLevelNodes);
			jsonObj.put("data", jsonArr);
			buf.append(jsonObj.toString());

			long b = System.currentTimeMillis();
			System.out.println(b - a);
		} catch (IllegalAccessException e) {
			log.error("GridTreeUtil--getJsonStr--1:", e);
		} catch (InvocationTargetException e) {
			log.error("GridTreeUtil--getJsonStr--1:", e);
		} catch (Exception e) {
			log.error("GridTreeUtil--getJsonStr--1:", e);
		}

		return buf.toString();
    }
}
