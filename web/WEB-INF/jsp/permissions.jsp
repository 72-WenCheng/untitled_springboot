<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>权限设置</title>
</head>
<style type="text/css">
    a{
        text-decoration:none;
        color:black ;
        transition: 0.5 s;
    }
    a:hover {
        color:red;
    }
    td{
        text-align:center;
        vertical-align:middle;
    }
    tr:hover{
        background-color:gray;
    }
    tr:first-child:hover {
        background-color: white;
    }
    #all{
        font-size: 40px;
        font-family: "仿宋";
        text-align: center;
        color: white;
    }
    table{
        font-size: 30px;
        font-family: "仿宋";
        color: white;
    }
    body {
        background-repeat: no-repeat;
        background-size: 100% 100%;
    }
</style>
<body background="../img/str.jpg">
<div id="all">
    <span>你当前的位置：【员工管理】-【权限设置】</span>
    <table border="1" cellspacing="0" cellpadding="0" align="center">
        <tr>
            <td>员工ID</td>
            <td>员工名称</td>
            <td>权限</td>
            <td>基本操作</td>
        </tr>
        <c:forEach items="${list}" var="c">
            <tr>
                <td name="id" id="id">${c.id}</td>
                <td>${c.employeename}</td>
                <td>${c.type}</td>
                <td><a href="updatepermissions?id=${c.id}" target="content">编辑</a></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
