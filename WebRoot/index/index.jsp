<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商城首页</title>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/index.css">
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
    <form action="search.action" method="post" class="serh">
        <input type="text" name="search" value="${search}" placeholder="输入要搜索内容">
    </form>
    <div class="bWrap f-fc1 f-clear f-elasticLN">
        <ul>
            <li><a href="index.action">首页</a></li>
            <!-- <li><a href="#">马蹄粉</a></li> -->
            <li><a class="hover" href="productList.action">产品</a></li>
            <!-- <li><a href="#">葛根粉</a></li> -->
            <li><a href="#">关于我们</a></li>
        </ul>
    </div>
</div>
<div class="g-banner f-clear">
    <div class="m-picScroll">
        <div class="picWrap"><a href="#"><img src="img/banner_caizuo.jpg" alt=""></a></div>
    </div>
</div>
<div class="g-pdGallery f-LNm">
    <div class="m-pdTit f-clear f-lt40">
        <div class="lmd">
            <h2 class="f-fs14">生态</h2>
            <h3 class="f-fs24">食物中的尤物</h3>
        </div>
        <div class="rmd f-fs12 f-fc2">
            <p>所有的诚意来自产品，所有的产品都来自于我们的自建生态园。我们并不使用农药，为了在健康的探索上精进又精进，果蔬与有机生物肥成为了伙伴；而站在刀尖上的生态，是肉食。</p>
        </div>
    </div>
    <div class="m-pdList f-clear f-lt40">
    	<s:iterator value="showList" status="status">
	        <div class="it">
	            <div class="picWrap"><img src="../<s:property value="product.cover"/>" alt="<s:property value="product.name"/>"/>&nbsp;</div>
	            <h3><s:property value="product.name"/></h3>
	            <h5>¥<s:property value="product.price"/></h5>
	            <a href="detail.action?productid=<s:property value="product.id"/>"></a>
	        </div>
	    </s:iterator>
    </div>
</div>
<div class="m-bfInfo f-LNm f-clear f-lt40">
    <div class="lb1 bk">
        <a href="#"><img src="img/bfInfo_bk.jpg" alt=""></a>
    </div>
    <div class="rb2 bk">
        <a href="#"><img src="img/bfInfo_bk1.jpg" alt=""></a>
    </div>
    <div class="bb3">
        <a href="#"><img src="img/bfInfo_bb3.jpg" alt=""></a>
    </div>
</div>
<jsp:include page="footer.jsp"/>

</body>
</html>