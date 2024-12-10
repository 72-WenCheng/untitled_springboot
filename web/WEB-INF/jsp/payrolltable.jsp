<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>工资表导出</title>
</head>
<style type="text/css">
    body {
        background-repeat: no-repeat;
        background-size: 100% 100%;
    }
    #t{
        text-align:center;
        vertical-align:middle;
        font-size: 25px;
        color: white;
        font-family: "仿宋";
    }
    h1{
        font-family: "仿宋";
        color: white;
    }
</style>
<body background="../img/3.jpg">
<form action="Payrolltable" method="post" style="font-size: 30px;text-align: center;font-family: 仿宋">
    <span style="color: white">导出月份：&nbsp;</span><input type="text" name="date" style="height: 32px;">&nbsp;&nbsp;&nbsp;<input id="" type="submit" value="导出" style="font-size: 19px;width: 70px;font-family: 仿宋;">
</form>
    <div style="text-align: center;color: white;font-size: 35px;font-family: 仿宋;">
        <h1>工资表导出展示</h1>
    <c:forEach items="${list}" var="c">
        <tr id="t" style="color: white">
            员工ID:<td name="id" id="id">${c.id}</td><br>
            员工工号:<td>${c.jobnumber}</td><br>
            员工名字:<td>${c.employeename}</td><br>
            店铺名称:<td>${c.shopname}</td><br>
            等级名称:<td>${c.gradename}</td><br>
            基本工资:<td>${c.foundationsalary}</td><br>
            补贴金额:<td>${c.subsidynumber}</td><br>
            奖金:<td>${c.prize}</td><br>
            考勤扣款:<td>${c.deductions}</td><br>
            工资年月:<td>
                <fmt:formatDate value="${c.salarytime}" pattern="yyyy-MM-dd"/>
            </td><br>
            应发工资:<td>${c.foundationsalary+c.subsidynumber+c.prize}</td><br>
            实发工资:<td>${c.foundationsalary+c.subsidynumber+c.prize+c.deductions}</td>
        </tr>
    </c:forEach>
    </div>
</body>
</html>