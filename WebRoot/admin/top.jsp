<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.STYLE1 {
	font-size: 12px;
	color: #FFFFFF;
}
.STYLE2 {
	font-size: 12px;
	color: #333333;
}
-->
a:link {font-size:12px; color:#000000; text-decoration:none;}
a:visited {font-size:12px; color:#000000; text-decoration:none;}
a:hover {font-size:12px; color:#00CCFF;text-decoration:none;}
.STYLE4 {font-size: 12px}
</style></head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="36" background="images/main_07.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
             <td width="282" height="52">
        	<span style="font-size:24px;font-weight:bolder;margin-left:60px;">
        		在线商店后台</span>
        </td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td>
	            <span class="STYLE4">
	            <a href="main.jsp"  target=_top>回首页</a>
	            </span>
	            <span class="STYLE1"> 
	            </span>&nbsp;&nbsp;&nbsp;&nbsp;
	            <span class="STYLE4">
	            	<a href="login.jsp"  onclick="if (confirm('确定要退出吗？')) return true; else return false;" target=_top>
	            		退出系统</a>
	            </span>
	            <span class="STYLE1"> </span>
            </td>
          </tr>
        </table></td>
        <td width="247" background="images/main_08.gif">&nbsp;</td>
        <td width="283" background="images/main_09.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td>
            	<span class="STYLE2"> 当前用户：<s:property value="#session.admin"></s:property></span>
            </td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
