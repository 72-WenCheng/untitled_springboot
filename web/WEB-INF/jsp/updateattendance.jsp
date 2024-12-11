<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
  <meta charset="utf-8">
  <title>考勤项修改</title>
</head>
<style type="text/css">
  input:focus{
    outline: 0;
    border: 1px solid #f95d5d;
    box-shadow: 0px 0px 10px 0px #f95d5d;
  }
  span{
    font-size: 30px;
  }
  input{
    font-size: 25px;

  }
  #xiala1{
    width: 200px;
    height: 30px;
  }
  #xiala2{
    width: 200px;
    height: 30px;
  }
  #xiala3{
    width: 200px;
    height: 30px;
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
<body background="../img/str.jpg">
<c:forEach items="${list}" var="c">
  <div id="all" style="font-size: 25px;text-align: center;font-family: 仿宋;color: white;">
    <span>你当前的位置：【参数管理】-【考勤管理】-【考勤项修改】</span>
    <form action="updateattendancetll" method="post" name="tll" onsubmit="return false">
      <span>考勤名称：</span>
      <select id="xiala1" name="attendancename" placeholder="${c.attendancename}">
        <option value="" disabled selected hidden>请选择</option>
        <option value="迟到">迟到</option>
        <option value="早退">早退</option>
        <option value="矿工">矿工</option>
        <option value="(迟到+早退)">(迟到+早退)</option>
        <option value="(迟到+矿工)">(迟到+矿工)</option>
        <option value="(早退+矿工)">(早退+矿工)</option>
        <option value="(早退+迟到+矿工)">(早退+迟到+矿工)</option>
      </select>
      <br>
      <span>所扣百分比：</span>
      <select id="xiala2" name="percentage" placeholder="${c.percentage}">
        <option value="" disabled selected hidden>请选择</option>
        <option value="0.20">20%(迟到)</option>
        <option value="0.30">30%(早退)</option>
        <option value="0.50">50%(矿工)</option>
        <option value="0.60">60%(迟到+早退)</option>
        <option value="0.70">70%(迟到+矿工)</option>
        <option value="0.80">80%(早退+矿工)</option>
        <option value="1.00">100%(早退+迟到+矿工)</option>
      </select>
      <br>
      <span>缺勤扣款：</span>
      <select id="xiala3" name="deductions" placeholder="${c.deductions}">
        <option value="" disabled selected hidden>请选择</option>
        <option value="-200">200(迟到)</option>
        <option value="-300">300(早退)</option>
        <option value="-500">500(矿工)</option>
        <option value="-600">600(迟到+早退)</option>
        <option value="-700">700(迟到+矿工)</option>
        <option value="-800">800(早退+矿工)</option>
        <option value="-1000">1000(早退+迟到+矿工)</option>
      </select>
      <br>
      <span>缺勤年月：</span><input type="date" name="attendancetime" placeholder="${c.attendancetime}" id="attendancetime" style="width: 200px;height: 30px;">&nbsp;&nbsp;&nbsp;时间格式：<fmt:formatDate value="${c.attendancetime}" pattern="yyyy-MM-dd hh:mm:ss"/><br>
      <input type="submit" id="btn" value="修改" style="font-size: 25px;width: 100px;font-family: 仿宋">
    </form>
  </div>
</c:forEach>
<script type="text/javascript">
  //考勤项修改
  $("#btn").click(function(){
    var pwc1 = document.getElementById("xiala1")
    var pwc2 = document.getElementById("xiala2")
    var pwc3 = document.getElementById("xiala3")
    var pwc4 = $("#attendancetime").val();
    if(xiala1.value==""){
      alert("考勤名称不能为空");
    }else if(xiala2.value==""){
      alert("所扣百分比不能为空")
    }else if(xiala3.value==""){
      alert("缺勤扣款不能为空")
    }else if(pwc4==""){
      alert("缺勤年月不能为空")
    }else{
      alert("修改成功！")
      document.tll.onsubmit="return turn"
    }
  });
</script>
<%--原生js--%>
<script>
  let values = []
  let opts = []
  let select = document.getElementById("xiala1")
  for(let i=0;i<select.length;i++){
    opts.push(select.item(i))
  }
  let optionHide = document.createElement('option')
  optionHide.hidden=true
  select.appendChild(optionHide)
  select.addEventListener('input',function (){
    let value = this.options[this.selectedIndex].value
    this.options[this.selectedIndex].style="background: pink"
    let index = values.indexOf(value)
    if(index>-1){
      values.splice(index,1);
      opts.filter(function (opt){
        if(opt.value === value){
          opt.style="";
        }
      })
    }else {
      values.push(value)
    }
    this.options[this.length-1].text=values.toString()
    if(values.length>0){
      this.options[this.length-1].selected=true
    }else {
      this.options[0].selected=true
    }
    console.log(select.value)
  })
</script>
</body>
</html>
