<%--
  Created by IntelliJ IDEA.
  User: think
  Date: 2020/1/14
  Time: 23:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员登录</title>
    <style>
      #a{
          width: 500px;
          height: 400px;
          /*display: flex;*/
          background-color: cadetblue;
          margin-left: 350px;
          margin-top: 85px;

      }
        #b{
            display: flex;

            justify-content: center;
        }
        #b1{
            background-color: beige;
            width: 500px;
            display: flex;

            justify-content: center;
        }
        #c{
            margin-left: 160px;
            margin-top: 50px;
        }
        #button{
            display: flex;
            margin-left: 60px;
            margin-top: 30px;

        }


    </style>
</head>


<body>
<div id="a">
    <div id="b"><div id="b1"><h1>咔咔嗯嗯嘟嘟嘟二手车行</h1></div></div>
    <form action="/backed/user/login" method="post">
    <div id="c">
        <p>请输入账户名</p>
        <input type="text" placeholder="账户" name="username">
    <p>请输入密码</p>
        <input type="password" placeholder="密码" name="password">
        <input id="button" type="submit" value="登录">
    </div>
</form>
</div>
</body>
</html>
