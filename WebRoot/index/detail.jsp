<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品详情</title>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/detail.css">
</head>
<body>
<s:action name="header" executeResult="true"/>
<div class="m-pdDetail f-LNm f-clear">
    <div class="md ml">
        <div class="picWrap"><img src="../${product.cover}" alt="" /></div>
    </div>
    <div class="md mr">
        <ul>
            <li>
                <h2 class="pdName">${product.name}</h2>
                <p class="bf">${product.intro}</p>
            </li>
            <li><span class="jiage">价格</span>&nbsp;&nbsp;<span class="syb">¥<span class="price">${product.price}</span></span></li>
            <li class="f-clear">
                <!-- <div class="asBtn">
                    <span class="sub arr">-</span>
                    <span class="count">1</span>
                    <span class="add arr">+</span>
                </div> -->
                <a class="addCart" href="javascript:buy(${product.id});">加入购物车</a>
            </li>
        </ul>
    </div>
</div>

<jsp:include page="footer.jsp"/>

</body>
</html>