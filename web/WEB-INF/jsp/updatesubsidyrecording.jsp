<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta charset="utf-8">
    <title>补贴项修改</title>
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
        font-family: 仿宋;
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
        <span>你当前的位置：【员工管理】-【员工补贴记录管理】-【员工补贴记录修改】</span>
        <form action="updatesubsidyrecordingtll" method="post" name="tll" onsubmit="return false">
            <span>员工工号：</span><input type="text" name="jobnumber" placeholder="${c.jobnumber}" id="jobnumber" readOnly="true" style="width: 200px;height: 30px;"><br>
            <span>员工姓名：</span><input type="text" name="employeename" placeholder="${c.employeename}" id="employeename" readOnly="true" style="width: 200px;height: 30px;"><br>
            <span>补贴名称：</span>
            <select id="xiala1" name="subsidyname" placeholder="${c.subsidyname}">
                <%--id="multipleSelects"--%>
                <option value="" disabled selected hidden>请选择</option>
                <option value="交通补助">交通补助</option>
                <option value="早餐补助">早餐补助</option>
                <option value="晚餐补助">晚餐补助</option>
                <option value="(交通补助+早餐补助)">(交通补助+早餐补助)</option>
                <option value="(交通补助+晚餐补助)">(交通补助+晚餐补助)</option>
                <option value="(早餐补助+晚餐补助)">(早餐补助+晚餐补助)</option>
                <option value="(早餐补助+晚餐补助+交通补助)">(早餐补助+晚餐补助+交通补助)</option>
            </select>
            <br>
            <span>补贴金额：</span>
            <select id="xiala2" name="subsidynumber" placeholder="${c.subsidynumber}">
                <option value="" disabled selected hidden>请选择</option>
                <option value="50">50(交通补助)</option>
                <option value="100">100(早餐补助)</option>
                <option value="200">200(晚餐补助)</option>
                <option value="150">150(交通补助+早餐补助)</option>
                <option value="100">250(交通补助+晚餐补助)</option>
                <option value="200">300(早餐补助+晚餐补助)</option>
                <option value="350">300(早餐补助+晚餐补助+交通补助)</option>
            </select>
            <br>
            <span>补贴年月：</span><input type="date" name="subsidytime" placeholder="${c.subsidytime}" id="subsidytime" style="width: 200px;height: 30px;">&nbsp;&nbsp;&nbsp;时间格式：<fmt:formatDate value="${c.subsidytime}" pattern="yyyy-MM-dd"/><br>
            <input type="submit" id="btn" value="修改">
        </form>
    </div>
</c:forEach>
<script type="text/javascript">
    //补贴项修改
    $("#btn").click(function(){
        var pwc1 = document.getElementById("xiala1")
        var pwc2 = document.getElementById("xiala2")
        var pwc3 = $("#subsidytime").val();
        if(xiala1.value==""){
            alert("补贴名称不能为空");
        }else if(xiala2.value==""){
            alert("补贴金额不能为空")
        }else if(pwc3==""){
            alert("补贴年月不能为空")
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
