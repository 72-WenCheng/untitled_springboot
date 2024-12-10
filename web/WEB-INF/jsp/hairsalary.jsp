<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta charset="utf-8">
    <title>员工发工资管理</title>
</head>
<style type="text/css">
    #agonizing:visited {
        color: red;
    }
    a{
        text-decoration:none;
        color:black ;
        transition: 0.5 s;
    }
    a:hover {
        color:blueviolet;
    }
    td{
        text-align:center;
        vertical-align:middle;
        font-size: 25px;
    }
    tr:hover{
        background-color:gray;
    }
    tr:first-child:hover {
        background-color: white;
    }
    #all{
        font-size: 30px;
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
<script src="../js/jquery-1.8.3.min.js"></script>
<body background="../img/3.jpg">
<div id="all">
    <span>你当前的位置：【工资管理】-【员工发工资管理】</span>
    <table border="1" cellspacing="0" cellpadding="0" align="center">
        <tr>
            <td>员工ID</td>
            <td>员工工号</td>
            <td>员工名字</td>
            <td>基本工资</td>
            <td>工资年月</td>
            <td>工资状态</td>
            <td>员工发工资操作</td>
        </tr>

        <c:forEach items="${list}" var="c">

            <c:if test="${c.states eq 1}">
                <tr style="background-color: aquamarine;">
            </c:if>

            <c:if test="${c.states eq 0}">
                <tr>
            </c:if>
            <td name="id" id="id">${c.id}</td>
            <td>${c.jobnumber}</td>
            <td>${c.employeename}</td>
            <td>${c.foundationsalary}</td>
            <td>
            <fmt:formatDate value="${c.salarytime}" pattern="yyyy-MM-dd"/>
            </td><br>

            <c:if test="${c.states eq 1}">
                <td>已发工资</td>
                <td><a href="updatehairsalarysel?id=${c.id}">修改工资</a></td>
            </c:if>

            <c:if test="${c.states eq 0}">
                <td>未发工资</td>
                <td>
                    <a href="updatehairsalarystate?id=${c.id}">核销</a>
                </td>
            </c:if>
            </tr>
        </c:forEach>
        <a href="addhairsalary?id=${c.id}" target="content" id="agonizing">发工资</a>
    </table>
</div>
</body>
</html>
