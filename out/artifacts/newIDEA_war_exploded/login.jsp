<%--
  Created by IntelliJ IDEA.
  User: 温
  Date: 2021/6/28
  Time: 20:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<html>
<head>
    <title>登录</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.5.1.min.js"></script>
    <script type="text/javascript">
        $(function (){
            $("#submitMsg").submit(function (){

                alert(11);
                var username = $("username").val();
                var password = $("password").val();
                $.ajax({
                    type:"post",
                    data:"username=" + username + "&password=" + password,
                    url:"${pageContext.request.contextPath}/User/login",
                    dataType:"JSON",
                    success:function (result){
                        if (result.success){//如果success的值是true
                            //成功跳转到查所有的界面
                            location.href="${pageContext.request.contextPath}/selectAll.jsp";
                        }else {//success的值是false
                            $("#Psg").html("<font color='aqua'>" + result.message + "</font>");
                        }
                    }
                });
            })
        });
    </script>
</head>
<body>
    <form action="" method="post" enctype="application/x-www-form-urlencoded" id="submitMsg">
        <span id="Psg"></span> <br>
        用户名:<input type="text" id="username" name="username"> </span> <br>
        密码: <input type="password" id="password" name="username"><br>
        <input id="login" type="submit" value="登&nbsp;录">
    </form>
</body>
</html>
