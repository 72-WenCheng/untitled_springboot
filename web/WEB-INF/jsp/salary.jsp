<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
  <meta charset="utf-8">
  <title>生产工资表</title>
</head>
<style type="text/css">
  tr:hover{
    background-color:gray
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
<body background="../img/3.jpg">
<div id="all">
  <span>你当前的位置：【工资管理】-【员工工资表信息】</span>
  <table border="1" cellspacing="0" cellpadding="0" align="center">
    <tr>
      <td>员工ID</td>
      <td>员工工号</td>
      <td>员工名字</td>
      <td>店铺名称</td>
      <td>等级名称</td>
      <td>基本工资</td>
      <td>补贴金额</td>
      <td>奖金</td>
      <td>考勤扣款</td>
      <td>工资年月</td>
      <td>应发工资</td>
      <td>实发工资</td>
    </tr>
    <c:forEach items="${list}" var="c">
      <tr>
        <td name="id" id="id">${c.id}</td>
        <td>${c.jobnumber}</td>
        <td>${c.employeename}</td>
        <td>${c.shopname}</td>
        <td>${c.gradename}</td>
        <td>${c.foundationsalary}</td>
        <td>${c.subsidynumber}</td>
        <td>${c.prize}</td>
        <td>${c.deductions}</td>
        <td>
          <fmt:formatDate value="${c.salarytime}" pattern="yyyy-MM-dd"/>
        </td>
        <td>${c.foundationsalary+c.subsidynumber+c.prize}</td>
        <td>${c.foundationsalary+c.subsidynumber+c.prize+c.deductions}</td>
      </tr>
    </c:forEach>
  </table>
</div>
</body>
</html>
