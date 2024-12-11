<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
  <meta charset="utf-8">
  <title>员工奖金记录修改</title>
</head>
<style type="text/css">
  input:focus{
    outline: 0;
    border: 1px solid #f95d5d;
    box-shadow: 0px 0px 10px 0px #f95d5d;
  }
  #xiala1{
    width: 200px;
    height: 30px;
  }
  #xiala2{
    width: 200px;
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
  <div id="all">
    <span>你当前的位置：【员工管理】-【员工奖金记录管理】-【员工奖金记录修改】</span>
    <form action="updateprizerecordingtll" method="post" name="tll" onsubmit="return false">
      <span>员工工号：</span><input type="text" name="jobnumber" placeholder="${c.jobnumber}" id="jobnumber" readOnly="true" style="width: 200px;height: 30px;"><br>
      <span>员工姓名：</span><input type="text" name="employeename" placeholder="${c.employeename}" id="employeename" readOnly="true" style="width: 200px;height: 30px;"><br>
      <span>奖金名称：</span>
      <select id="xiala1" name="prizename" placeholder="${c.prizename}">
        <option value="" disabled selected hidden>请选择</option>
        <option value="业务突出贡献奖">业务突出贡献奖</option>
        <option value="业务能手奖">业务能手奖</option>
        <option value="全勤奖">全勤奖</option>
        <option value="(业务突出贡献奖+业务能手奖)">(业务突出贡献奖+业务能手奖)</option>
        <option value="(业务突出贡献奖+全勤奖)">(业务突出贡献奖+全勤奖)</option>
        <option value="(业务能手奖+全勤奖)">(业务能手奖+全勤奖)</option>
        <option value="(业务突出贡献奖+业务能手奖+全勤奖)">(业务突出贡献奖+业务能手奖+全勤奖)</option>
      </select>
      <br>
      <span>补贴金额：</span>
      <select id="xiala2" name="prize" placeholder="${c.prize}">
        <option value="" disabled selected hidden>请选择</option>
        <option value="50">500(业务突出贡献奖)</option>
        <option value="100">200(业务能手奖)</option>
        <option value="200">1000(全勤奖)</option>
        <option value="150">700(业务突出贡献奖+业务能手奖)</option>
        <option value="100">1500(业务突出贡献奖+全勤奖)</option>
        <option value="200">1200(业务能手奖+全勤奖)</option>
        <option value="350">1700(业务突出贡献奖+业务能手奖+全勤奖)</option>
      </select>
      <br>
      <span>获得奖金年月：</span><input type="date" name="prizetime" placeholder="${c.prizetime}" id="prizetime" style="width: 200px;height: 30px;">&nbsp;&nbsp;&nbsp;时间格式：<fmt:formatDate value="${c.prizetime}" pattern="yyyy-MM-dd"/><br>
      <input type="submit" id="btn" value="修改">
    </form>
  </div>
</c:forEach>
<script type="text/javascript">
  //奖金记录修改
  $("#btn").click(function(){
    var pwc1 = document.getElementById("xiala1")
    var pwc2 = document.getElementById("xiala2")
    var pwc3 = $("#prizetime").val();
    if(xiala1.value==""){
      alert("奖金名称不能为空");
    }else if(xiala2.value==""){
      alert("奖金金额不能为空")
    }else if(pwc3==""){
      alert("获得奖金年月不能为空")
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
