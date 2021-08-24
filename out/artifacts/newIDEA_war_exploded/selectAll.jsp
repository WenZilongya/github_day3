<%--
  Created by IntelliJ IDEA.
  User: 温
  Date: 2021/6/28
  Time: 21:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<html>
<head>
    <title>查询所有员工</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.5.1.min.js"></script>
    <script type="text/javascript">
        $(function (){
            $("#btn").click(function (){
                $.ajax({
                    type:"post",
                    url:"${pageContext.request.contextPath}/Employee/selectAll",
                    dataType:"JSON",
                    success:function (res){
                        //转为js对象
                        var jsArray = eval("(" + res + ")");
                        //清空上一次数据
                        $("#users").empty();
                        //遍历
                        $.each(jsArray,function (idx,user){
                            var ul = $("<ul/>");
                            var idLi = $("<li/>").text(user.id);
                            var nameLi = $("<li/>").text(user.name);
                            var salaryLi = $("<li/>").text(user.salary);
                            var ageLi = $("<li/>").text(user.age);
                            var birLi = $("<li/>").text(user.bir);
                            ul.append(idLi).append(nameLi).append(salaryLi).append(ageLi).append(birLi);
                            $("#users").append(ul);
                        });
                    }
                });
            })
        });
    </script>
</head>
<body>
    <button id="btn">查询所有员工</button>
    <hr>

    <div id="users">
    </div>
</body>
</html>
