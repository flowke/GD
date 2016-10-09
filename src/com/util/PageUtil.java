package com.util;

import java.util.Enumeration;
import javax.servlet.http.HttpServletRequest;

/**
 * 分页工具类
 */
public class PageUtil {
	
	/**
	 * 获取分页代码
	 * @param total 总记录数
	 * @param page 当前页面
	 * @param size 每页数量
	 * @return
	 */
	public static String getPageTool(HttpServletRequest request, long total, int page, int size){
		if (total <= 0) {
			return null;
		}
		// 计算总页数
		int pages = (int) (total % size ==0 ? total/size : total /size + 1);
		pages = pages == 0 ? 1 : pages;
		// 请求地址
		String url = request.getRequestURL().toString();
		// 请求参数
		StringBuilder paramBuilder = new StringBuilder();
		Enumeration<String> params = request.getParameterNames();
		while (params.hasMoreElements()) {
			String param = params.nextElement();
			if(param.indexOf("page") > -1) {
				continue;
			}
			paramBuilder.append("&").append(param).append("=").append(request.getParameter(param));
		}
		
		// 分页字符串
		StringBuilder pageBuilder = new StringBuilder();
		pageBuilder.append("<ul class='f-clear'>");
		// 上一页
		if (page <= 1) { // 如果已经是第一页, 上一页按钮disabled
			pageBuilder.append("<li class='arrow'><a><i>&#xe908;</i></a></li>");
		}else{
			pageBuilder.append("<li class='arrow'>").append("<a href='").append(url).append("?").append("page=").append(page-1)
			.append(paramBuilder).append("'>").append("<i>&#xe908;</i>").append("</a>").append("</li>");
		}
		
		// 下一页
		if (page >= pages) { // 如果已经是最后一页, 上一页按钮disabled
			pageBuilder.append("<li class='arrow'><a><i>&#xe907;</i></a></li>");
		}else{
			pageBuilder.append("<li class='arrow'>").append("<a href='").append(url).append("?").append("page=").append(page+1)
			.append(paramBuilder).append("'>").append("<i>&#xe907;</i>").append("</a>").append("</li>");
		}
		// 中间数字页码
		pageBuilder.append("<li><span>").append(page).append("</span>&nbsp;/&nbsp;<span>").append(pages).append("</span></li>");
		pageBuilder.append("</ul>");

		return pageBuilder.toString();

		
	}

	
	/**
	 * 后台管理分页
	 * @param request
	 * @param total
	 * @param page
	 * @param size
	 * @return
	 */
	public static String getPageToolAdmin(HttpServletRequest request, long total, int page, int size) {
		if (total <= 0) {
			return null;
		}
		// 计算总页数
		int pages = (int) (total % size ==0 ? total/size : total /size + 1);
		pages = pages == 0 ? 1 : pages;
		// 请求地址
		String url = request.getRequestURL().toString();
		// 请求参数
		StringBuilder paramBuilder = new StringBuilder();
		Enumeration<String> params = request.getParameterNames();
		while (params.hasMoreElements()) {
			String param = params.nextElement();
			if(param.indexOf("page") > -1) {
				continue;
			}
			paramBuilder.append("&").append(param).append("=").append(request.getParameter(param));
		}
		
		// 分页字符串
		StringBuilder pageBuilder = new StringBuilder();
		pageBuilder.append("<div style='width:140px;float:right;'>");
		// 上一页
		if (page <= 1) { // 如果已经是第一页, 上一页按钮disabled
			pageBuilder.append("<span style='color:lightgray'>上一页</span>");
		}else{
			pageBuilder.append("<span>").append("<a href='").append(url).append("?").append("page=").append(page-1)
			.append(paramBuilder).append("'>").append("上一页").append("</a>").append("</span>");
		}
		// 中间数字页码
		pageBuilder.append("[").append(page).append("/").append(pages).append("]");
		// 下一页
		if (page >= pages) { // 如果已经是最后一页, 上一页按钮disabled
			pageBuilder.append("<span style='color:lightgray'>下一页</span>");
		}else{
			pageBuilder.append("<span>").append("<a href='").append(url).append("?").append("page=").append(page+1)
			.append(paramBuilder).append("'>").append("下一页").append("</a>").append("</span>");
		}
		pageBuilder.append("</div>");
		return pageBuilder.toString();
	}

}
