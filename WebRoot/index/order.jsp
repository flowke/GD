<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>订单</title>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/order.css">
</head>
<body>
<jsp:include page="header.jsp"/>
<s:actionmessage/>
    <div class="m-order f-LNm">
        <s:if test="indentList != null">
            <h2>我的订单</h2>
            <s:iterator value="indentList">
                <ul class="tit f-clear">
                    <li><span class="time"><s:date name="systime" format="yyyy-MM-dd HH:mm:ss"/></span></li>
                    <li>价格</li>
                    <li>数量</li>
                    <li>小计</li>
                    <li>状态:&nbsp;&nbsp;<s:if test="status==1">未处理</s:if>
                            <s:if test="status==2">已处理</s:if>
                            <s:if test="status==3">已删除</s:if></li>
                </ul>
                <s:iterator value="itemList">
                    <ul class="item f-clear">
                        <li>
                            <div class="picWrap"><a href="detail.action?productid=${product.id}"><img src="../${product.cover}"/></a></div>
                            <h3>${product.name}</h3>
                        </li>
                        <li>¥<span>${product.price}</span></li>
                        <li>${amount}</li>
                        <li>${total}</li>
                        <!-- <li>
                            <s:if test="status==1">未处理</s:if>
                            <s:if test="status==2">已处理</s:if>
                            <s:if test="status==3">已删除</s:if>
                        </li> -->
                    </ul>
                </s:iterator>
                <div class="mw">总价：<span class="ads"><s:property value="total"/></span></div>
            </s:iterator>
        </s:if>
        <s:else>
            <h2>订单为空</h2>
        </s:else>   
    </div>

<s:else>
    <h2>订单为空</h2>
</s:else>
<jsp:include page="footer.jsp"/>
</body>
</html>