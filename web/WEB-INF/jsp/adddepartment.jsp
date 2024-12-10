<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
  <meta charset="utf-8">
  <title>部门项添加</title>
</head>
<style type="text/css">
  body {
    background-repeat: no-repeat;
    background-size: 100% 100%;
  }
  select{
    font-family: "仿宋";
  }
  #btn{
    margin-top: 10px;
  }
</style>
<script src="../js/jquery-1.8.3.min.js"></script>
<body background="../img/3.jpg">
<div id="all" style="font-size: 25px;text-align: center;font-family: 仿宋;color: white;">
  <span>你当前的位置：【参数管理】-【部门管理】-【部门项添加】</span>
  <form action="Adddepartment" method="post" name="tll" onsubmit="return false">
    <span>部门名称：</span>
    <select id="xiala" name="departmentname" style="width: 200px;height: 30px;">
      <option value="" disabled selected hidden>请选择</option>
      <option value="门店部">门店部</option>
      <option value="事业发展部">事业发展部</option>
      <option value="采购部">采购部</option>
      <option value="行政部">行政部</option>
      <option value="人事部">人事部</option>
    </select>
    <br>
    <input type="submit" id="btn" value="新增" style="font-size: 25px;width: 100px;font-family: 仿宋">
  </form>
</div>
<script type="text/javascript">
  //部门项项添加
  $("#btn").click(function(){
    var pwc = document.getElementById("xiala")
    if(xiala.value==""){
      alert("部门名称不能为空");
    }else{
      alert("添加成功！")
      document.tll.onsubmit="return turn"
    }
  });
</script>
</body>
</html>
