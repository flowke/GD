<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品列表</title>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/product.css">
</head>
<body>
<s:action name="header" executeResult="true"/>

<div class="m-pdList m-pdList1 f-LNm f-clear">
	<s:iterator value="productList" status="status">
	    <div class="it">
	        <div class="picWrap"><img src="../<s:property value="cover"/>" alt="<s:property value="name"/>"/>&nbsp;</div>
	        <h3><s:property value="name"/></h3>
	        <h5>¥<s:property value="price"/></h5>
	        <a href="detail.action?productid=<s:property value="id"/>"></a>
	    </div>
	</s:iterator>
</div>
<div class="m-paging f-LNm">${pageTool}</div>
<!-- <li><span>1</span> / <span>5</span></li> -->

<jsp:include page="footer.jsp"/>


</body>
</html>