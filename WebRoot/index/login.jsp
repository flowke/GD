<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商城首页</title>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/login.css">
</head>
<body>
<jsp:include page="header.jsp"/>

<div class="m-login m-form">
    <h2>登录</h2>
    <s:actionerror style="color:red;"/>
    <form action="login.action" method="post" id="form_login">
        <input type="text" name="user.username" class="username" placeholder="用户名">
        <input type="password" name="user.password" class="pw" placeholder="密码">
        <p class="adn"><a href="register.jsp">注册新用户</a></p>
        <input type="submit" value="登录" class="lnBtn">
    </form>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>