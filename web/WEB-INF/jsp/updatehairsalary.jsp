<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta charset="utf-8">
    <title>修改工资</title>
</head>
<style type="text/css">
    input:focus{
        outline: 0;
        border: 1px solid #f95d5d;
        box-shadow: 0px 0px 10px 0px #f95d5d;
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
        <form action="updatehairsalarytll" method="post" name="tll" onsubmit="return false">
            <span>你当前的位置：【工资管理】-【员工发工资管理】-【修改工资】</span><br>
            <span>员工工号：</span><input type="text" name="jobnumber" placeholder="${c.jobnumber}" id="jobnumber" readOnly="true" style="width: 200px;height: 30px;"><br>
            <span>员工名字：</span><input type="text" name="employeename" placeholder="${c.employeename}" id="employeename" readOnly="true" style="width: 200px;height: 30px;"><br>
            <span>基本工资：</span><input type="text" name="foundationsalary" placeholder="${c.foundationsalary}" id="foundationsalary" style="width: 200px;height: 30px;"><br>
            <span>工资标准：</span>
            <label id="bz">管理员（4000）店长（3500）普通员工（3000）----<br>
                门店部（+200）事业发展部（+300）采购部（+100）行政部（+400）人事部（+150）---<br>
                等级从100递增到400">管理员（4000）店长（3500）普通员工（3000）---<br>
                门店部（+200）事业发展部（+300）采购部（+100）行政部（+400）人事部（+150）--- <br>
                等级从100递增到400</label><br>
            <span>工资年月：</span><input type="date" name="salarytime" placeholder="${c.salarytime}" id="salarytime" style="width: 200px;height: 30px;">&nbsp;&nbsp;&nbsp;时间格式：<fmt:formatDate value="${c.salarytime}" pattern="yyyy-MM-dd"/><br>
            <input type="submit" id="btn" value="修改">
        </form>
    </div>
</c:forEach>
<script type="text/javascript">
    //修改工资
    $("#btn").click(function(){
        var pwc = $("#foundationsalary").val();
        var pwc1 = $("#salarytime").val();
        if(pwc==""){
            alert("基本工资不能为空");
        }else if(pwc1==""){
            alert("工资年月不能为空")
        }else{
            alert("修改工资成功！")
            document.tll.onsubmit="return turn"
        }
    });
</script>
</body>
</html>
