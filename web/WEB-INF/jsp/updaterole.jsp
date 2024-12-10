<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>角色修改</title>
</head>
<style type="text/css">
  body {
    background-repeat: no-repeat;
    background-size: 100% 100%;
  }
  #xiala{
    width: 150px;
    height: 30px;
  }
  #all{
    font-size: 30px;
    font-family: "仿宋";
    text-align: center;
    color: white;
  }
  #btn {
    font-size: 25px;
    width: 100px;
    font-family: "仿宋";
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
<c:forEach items="${list}" var="c">
<div id="all">
  <span>你当前的位置：【员工管理】-【角色管理】-【角色修改】</span>
  <form action="updateroletll" method="post" name="tll" onsubmit="return false">
    <span>角色名称：</span>
    <select id="xiala" name="rolename" placeholder="${c.rolename}">
      <option value="" disabled selected hidden>请选择</option>
      <option value="管理员">管理员</option>
      <option value="店长">店长</option>
      <option value="普通员工">普通员工</option>
    </select>
    <input type="submit" id="btn" value="修改">
  </form>
</div>
</c:forEach>
<script type="text/javascript">
  //角色修改
  $("#btn").click(function(){
    var pwc = document.getElementById("xiala")
    if(xiala.value==""){
      alert("角色名称不能为空");
    }else{
      alert("修改成功！")
      document.tll.onsubmit="return turn"
    }
  });
</script>
</body>
</html>
