<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>奖金设置</title>
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
  <span>你当前的位置：【参数管理】-【奖金管理】</span>
  <table border="1" cellspacing="0" cellpadding="0" align="center">
    <tr>
      <td>员工ID</td>
      <td>奖金名</td>
      <td>奖金（元）</td>
      <td>获得奖金年月</td>
      <td>基本操作</td>
    </tr>
    <c:forEach items="${list}" var="c">
      <tr>
        <td name="id" id="id">${c.id}</td>
        <td>${c.prizename}</td>
        <td>${c.prize}</td>
        <td>
          <fmt:formatDate value="${c.prizetime}" pattern="yyyy-MM-dd"/>
        </td>
        <td><a href="updateprize?id=${c.id}" target="content">编辑</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="deleteprize?id=${c.id}">删除</a></td>
      </tr>
    </c:forEach>
  </table>
</div>
<span style="text-align: center;display:block;"><a href="addprize" target="content" id="xz">新增</a></span>
</body>
</html>
