<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <title>修改面膜</title>
</head>
<style type="text/css">
  input:focus{
    outline: 0;
    border: 1px solid #f95d5d;
    box-shadow: 0px 0px 10px 0px #f95d5d;
  }
  #btn{
    margin-top: 10px;
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
  #btn{
    font-size: 30px;
    font-family: "仿宋";
  }
  #password{
    width: 180px;
    height: 33px;
    font-size: 20px;
  }
  #password1{
    width: 180px;
    height: 33px;
    font-size: 20px;
  }
  body {
    background-repeat: no-repeat;
    background-size: 100% 100%;
  }
</style>
<script src="../js/jquery-1.8.3.min.js"></script>
<body background="../img/str.jpg">
<div id="all">
  <span>你当前的位置：【系统管理】-【密码修改】</span>
  <div id="cll">
    <form action="Update" method="post" name="tll" onsubmit="return false">
      <table border="2" cellspacing="0" cellpadding="0" align="center">
        <tr>
          <td>密码：</td>
          <td><input type="text" name="password" id="password"></td>
        </tr>
        <tr>
          <td>确认密码：</td>
          <td><input type="text" name="password1" id="password1"></td>
        </tr>
      </table>
      <input type="submit" value="确认修改" id="btn">
    </form>
  </div>
</div>
<script type="text/javascript">
  //修改密码
  $("#btn").click(function(){
    var pwd = $("#password").val();
    var pwd1 = $("#password1").val();
    if(pwd==""){
      alert("密码不能为空");
    }else if(pwd1==""){
      alert("确认密码不能为空")
    }else if(pwd1!=pwd){
      alert("确认密码不一致")
    }else{
      alert("修改成功！")
      document.tll.onsubmit="return turn"
    }
  });
</script>
</body>
</html>
