<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <meta charset="utf-8">
  <title>等级项修改</title>
</head>
<style type="text/css">
  input:focus{
    outline: 0;
    border: 1px solid #f95d5d;
    box-shadow: 0px 0px 10px 0px #f95d5d;
  }
  input{
    font-size: 25px;
    width: 100px;
  }
  #xiala{
    width: 200px;
    height: 30px;
  }
  #all{
    font-size: 30px;
    font-family: "仿宋";
    text-align: center;
    color: white;
  }
  #btn{
    font-size: 25px;
    width: 100px;
    font-family: "仿宋";
  }
  select{
    font-family: "仿宋";
  }
  body {
    background-repeat: no-repeat;
    background-size: 100% 100%;
  }
  #btn{
    margin-top: 10px;
  }
</style>
<script src="../js/jquery-1.8.3.min.js"></script>
<body background="../img/3.jpg">
<c:forEach items="${list}" var="c">
  <div id="all">
    <span>你当前的位置：【参数管理】-【员工级别项管理】-【等级项修改】</span>
    <form action="updategradetll" method="post" name="tll" onsubmit="return false">
      <span>等级名称：</span>
      <select id="xiala" name="gradename" placeholder="${c.gradename}">
        <option value="" disabled selected hidden>请选择</option>
        <option value="门店-实习生">门店-实习生</option>
        <option value="门店-专一级">门店-专一级</option>
        <option value="门店-专二级">门店-专二级</option>
        <option value="门店-专三级">门店-专三级</option>
        <option value="门店-专四级">门店-专四级</option>
        <option value="事业发展-实习生">事业发展-实习生</option>
        <option value="事业发展-专一级">事业发展-专一级</option>
        <option value="事业发展-专二级">事业发展-专二级</option>
        <option value="事业发展-专三级">事业发展-专三级</option>
        <option value="事业发展-专四级">事业发展-专四级</option>
        <option value="采购-实习生">采购-实习生</option>
        <option value="采购-专一级">采购-专一级</option>
        <option value="采购-专二级">采购-专二级</option>
        <option value="采购-专二级">采购-专二级</option>
        <option value="采购-专四级">采购-专四级</option>
        <option value="行政-实习生">行政-实习生</option>
        <option value="行政-专一级">行政-专一级</option>
        <option value="行政-专二级">行政-专二级</option>
        <option value="行政-专二级">行政-专二级</option>
        <option value="行政-专三级">行政-专三级</option>
        <option value="行政-专四级">行政-专四级</option>
        <option value="人事-实习生">人事-实习生</option>
        <option value="人事-专一级">人事-专一级</option>
        <option value="人事-专二级">人事-专二级</option>
        <option value="人事-专三级">人事-专三级</option>
        <option value="人事-专四级">人事-专四级</option>
      </select>
      <br>
      <input type="submit" id="btn" value="修改">
    </form>
  </div>
</c:forEach>
<script type="text/javascript">
  //等级项修改
  $("#btn").click(function(){
    var pwc = document.getElementById("xiala")
    if(xiala.value==""){
      alert("等级名称不能为空");
    }else{
      alert("修改成功！")
      document.tll.onsubmit="return turn"
    }
  });
</script>
</body>
</html>
