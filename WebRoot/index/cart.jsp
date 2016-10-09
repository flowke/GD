<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>购物车</title>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/cart.css">
<script type="text/javascript" src="./js/jquery.min.js"></script> 
<script type="text/javascript" src="./js/script.js"></script>
</head>
<body>
<jsp:include page="header.jsp"/>
<div class="m-cart f-LNm">
    
    <s:if test="#session.indent != null">
        <h2>我的购物车</h2>
        <ul class="tit f-clear">
            <li>商品名称</li>
            <li>单价</li>
            <li>数量</li>
            <li>小计</li>
            <li>操作</li>
        </ul>
        <s:iterator value="#session.indent.itemList">
            <ul class="item f-clear">
                <li>
                    <div class="picWrap"><a href="detail.action?productid=${product.id}"><img src="../${product.cover}"/></a></div>
                    <h3>${product.name}</h3>
                </li>
                <li>¥<span class="price">${product.price}</span></li>
                <li class="asBtn">
                    <a class="sub arr bbt" href="javascript:lessen(${product.id});">-</a>
                    <span class="count bbt">${amount}</span>
                    <a class="add arr bbt" href="javascript:buy(${product.id});">+</a>
                </li>
                <li>¥<span>${total}</span></li>
                <li class="del"><a href="javascript:deletes(${product.id});">删除</a></li>
            </ul>
        </s:iterator>
        <div class="total f-clear">
            <a href="save.action">现在结算</a>
            <span>总计 ¥<i class="ttprice"><s:property value="#session.indent.total"/></i></span>
            
        </div>
    </s:if>
    <s:else>
        <h2>购物车为空</h2>
    </s:else>
</div>

<jsp:include page="footer.jsp"/>

</div>

</body>
</html>