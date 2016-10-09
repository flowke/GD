<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商城首页</title>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/customerInfo.css">

</head>
<body>
<jsp:include page="header.jsp"/>

<div class="m-ctInfo f-LNm f-clearli f-clear">
    <h2>我的信息</h2>
    <form action="admin!userReset.action" method="post" id="mima">
    </form>
    <form action="admin!userUpdate.action" method="post" id="xinxi">
    </form>
        <ul>
            <li><span class="wid">用户名:</span><span class="na">${user.username}</span></li>
            <li><span class="wid">密码:</span><span class="pw">${user.password}</span><input type="text" class="rst" name="user.password" form="mima" value=""/></li>
            <li><span class="wid">手机号:</span><span class="phone upd">${user.phone}</span><input type="text" class="iupd" name="user.phone" form="xinxi" value="${user.phone}"/></li>
            <li><span class="wid">收货地址:</span><span class="ads upd">${user.address}</span><input type="text" class="iupd" name="user.address" form="xinxi" value="${user.address}"/></li>
        </ul>
        <!-- <span class="xm ann">修改密码</span><span class="xx ann">修改信息</span> -->
        <input type="submit" form="mima" class="rst" value="确定密码">
        <input type="submit" form="xinxi" class="iupd" value="确定信息">
    
</div>

<jsp:include page="footer.jsp"/>
<script>
    var oxm = document.querySelector('.xm');
    var oxx = document.querySelector('.xx');
    var opw = document.querySelector('.pw');
    var orst = document.querySelectorAll('.rst');
    var oupd = document.querySelectorAll('.upd');
    var oiupd = document.querySelectorAll('.iupd');
    oxm.onclick = function(){
        opw.style.display = 'none';
        
        for(var i=0; i<orst.length; i++){
            orst[i].style.display = 'inline-block';
        }
        for(var i=0; i<oupd.length; i++){
            oupd[i].style.display = 'inline';
        }
        for(var i=0; i<oiupd.length; i++){
            oiupd[i].style.display = 'none';
        }
    };
    oxx.onclick = function(){
        opw.style.display = 'inline';

        for(var i=0; i<orst.length; i++){
            orst[i].style.display = 'none';
        }
        for(var i=0; i<oupd.length; i++){
            oupd[i].style.display = 'none';
        }
        for(var i=0; i<oiupd.length; i++){
            oiupd[i].style.display = 'inline-block';
        }
    };
</script>
</body>
</html>