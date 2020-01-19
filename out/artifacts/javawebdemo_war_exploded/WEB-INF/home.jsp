<%--
  Created by IntelliJ IDEA.
  User: think
  Date: 2020/1/14
  Time: 23:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="errorpage.jsp" %>
<html>
<head>
    <title>后台首页</title>
    <style>
        #left{
            width: 30%;
            height: 100%;
            float: left;
            background-color: coral;
        }
        #right{
            width: 70%;
            float: right;
            background-color: salmon;
        }
    </style>
</head>
<body>
<div id="left">

    <h1>欢迎${us.username}登录管理后台</h1>
    <p>
        <a href="/backed/indx/home">返回首页</a>
    </p>
    <a href="/backed/product/getall">获取所有商品数据</a>
</div>
<div id="right">

</div>
</body>
</html>
