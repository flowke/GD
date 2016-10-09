<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录后台管理</title>
<style type="text/css">
body{background: #4C5A62;}
.m-form{ width: 380px; margin: 40px auto 0; padding: 0 40px; border: 1px solid #d8d8d8; border-radius: 10px; overflow: hidden; background: #fff; padding-bottom: 20px; margin-top: 200px;}
.m-form form{text-align: center;}
.m-form input{ display:block; box-sizing: border-box; width: 100%; height:40px; margin-top: 20px; padding: 0 10px; border:1px solid #d8d8d8; border-radius: 6px; font-size: 18px;}
.m-form .adn{text-align: center; font-size: 20px; color: #fff; border: 1px solid #41b92f; background: #4BC339; cursor: pointer;}
.m-form .adn a{color: #84a3e3;}
</style>

</head>

<body>
<s:actionerror/>
<div class="m-form">
	<form action="admin!login.action" method="post" id="form_login">
		<input type="text" name="admin.username" placeholder="用户名">
		<input type="password" name="admin.password" placeholder="密码">
		<input type="submit" class="adn" value="登录">
	</form>
</div>



</body>
</html>
