<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>员工信息管理</title>
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
    #xz{
        font-size: 30px;
        font-family: "仿宋";
    }
    body {
        background-repeat: no-repeat;
        background-size: 100% 100%;
    }
</style>
<body background="../img/str.jpg">
<div id="all">
    <span>你当前的位置：【员工管理】-【员工信息管理】</span>
    <table border="1" cellspacing="0" cellpadding="0" align="center">
        <tr>
            <td>员工工号</td>
            <td>员工密码</td>
            <td>员工ID</td>
            <td>员工姓名</td>
            <td>性别</td>
            <td>等级名称</td>
            <td>角色名称</td>
            <td>所属店铺</td>
            <td>所属部门</td>
            <td>状态</td>
            <td>地址</td>
            <td>电话号码</td>
            <td>邮箱</td>
            <td>基本操作</td>
        </tr>
        <c:forEach items="${list}" var="c">
             <tr>
                 <td>${c.jobnumber}</td>
                 <td>${c.password}</td>
                <td name="id" id="id">${c.id}</td>
                <td>${c.employeename}</td>
                <td>${c.sex}</td>
                <td>${c.gradename}</td>
                <td>${c.rolename}</td>
                <td>${c.shopname}</td>
                <td>${c.departmentname}</td>
                <td>${c.state}</td>
                <td>${c.location}</td>
                <td>${c.number}</td>
                <td>${c.email}</td>
                <td><a href="updateemployee?id=${c.id}" target="content">编辑</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="deleteemployee?id=${c.id}">删除</a></td>
            </tr>
        </c:forEach>
    </table>
</div>
<span style="text-align: center;display:block;"><a href="addemployee" target="content" id="xz">新增</a></span>
</body>
</html>
