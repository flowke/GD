<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商城首页</title>
<link rel="stylesheet" href="css/main.css">
</head>
<body>
<jsp:include page="header.jsp"/>

<div class="m-sigup m-form">
    <h2>注册</h2>
    <s:actionmessage style="color:red;"/>
    <form action="register.action" method="post">
        <input type="text" name="user.username" class="username" placeholder="用户名">
        <input type="password" name="user.password" class="pw" placeholder="密码">
        <input name="user.phone" type="text" placeholder="电话" maxlength="11">
        <input type="text" name="user.address" placeholder="收货地址">
        <input type="submit" value="注册" class="lnBtn">
    </form>
</div>
<jsp:include page="footer.jsp"/>

</body>
</html>