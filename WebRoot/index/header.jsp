<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<title></title>
<script type="text/javascript" src="./js/jquery.min.js"></script> 
<script type="text/javascript" src="./js/script.js"></script>
</head>
<body>

<div class="g-topBar f-fc1">
    <div class="m-barWrap f-elasticLN f-clear">
        <div class="contact">
            <span><i>&#xe902;</i>&nbsp;&nbsp;0773-7783107&nbsp;/&nbsp;07737783188</span>
            <span><i>&#xe903;</i>&nbsp;&nbsp;hongyuanny@163.com</span>
        </div>
        <div class="personInfo">
            <div><i>&#xe901;</i><a href="order.action">我的订单</a></div>
            <div><i>&#xe900;</i><a href="cart.action" rel="nofollow">购物车&nbsp;<span class="count no_product">(${indent.amount==null ? 0 :indent.amount})</span></a></div>
            <div><i>&#xe904;</i>
            	<s:if test="#session.user==null">
            		<a href="login.jsp">登陆</a><a href="register.jsp">注册</a>
            	</s:if>
            	<s:else>
                    <a href="cusInfo.jsp">${user.username}</a>
            		<a href="logout.action">注销</a>
            	</s:else>
            </div>
        </div>    
    </div>
</div>
<div class="m-nav">
    <div class="bWrap f-fc1 f-clear f-elasticLN">
        <form action="search.action" method="post" class="serh">
            <input type="text" name="search" value="${search}" placeholder="输入要搜索内容">
        </form>
        <ul>
            <li><a href="index.action">首页</a></li>
            <!-- <li><a href="#">马蹄粉</a></li> -->
            <li><a class="hover" href="productList.action">产品</a></li>
            <!-- <li><a href="#">葛根粉</a></li> -->
            <li><a href="#">关于我们</a></li>
        </ul>
    </div>
</div>
<div class="m-category f-fc3">
    <ul>
        <s:iterator value="categoryList">
            <li><a href="productList.action?categoryid=<s:property value="id"/>"><s:property value="name"/></a></li>
        </s:iterator>
    </ul>
</div>

</body>
</html>