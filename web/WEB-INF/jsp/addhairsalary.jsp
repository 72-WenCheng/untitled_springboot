<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta charset="utf-8">
    <title>发工资</title>
</head>
<style type="text/css">
    input:focus{
        outline: 0;
        border: 1px solid #f95d5d;
        box-shadow: 0px 0px 10px 0px #f95d5d;
    }
    input{
        font-size: 25px;
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
    <div id="all" style="font-size: 25px;text-align: center;font-family: 仿宋;color: white;">
        <form action="Addhairsalary" method="post" name="tll" onsubmit="return false">
            <span>你当前的位置：【工资管理】-【员工发工资管理】-【发工资】</span><br>
            <span>基本工资：</span><input type="text" name="foundationsalary" id="foundationsalary" style="width: 200px;height: 30px;"><br>
            <span>工资标准：</span><br>
            <label id="bz">管理员（4000）店长（3500）普通员工（3000）----<br>
                门店部（+200）事业发展部（+300）采购部（+100）行政部（+400）人事部（+150）---<br>
                等级从100递增到400">管理员（4000）店长（3500）普通员工（3000）---<br>
                门店部（+200）事业发展部（+300）采购部（+100）行政部（+400）人事部（+150）--- <br>
                等级从100递增到400</label><br>
            <br>
            <span>工资年月：</span><input type="date" name="salarytime" id="salarytime" style="width: 200px;height: 30px;">&nbsp;&nbsp;&nbsp;时间格式：yyyy-MM-dd<br>
            <input type="submit" id="btn" value="新增" style="font-size: 25px;width: 100px;color: black;font-family: 仿宋">
        </form>
    </div>
<script type="text/javascript">
    //发工资
    $("#btn").click(function(){
        var pwc = $("#foundationsalary").val();
        var pwc1 = $("#basicsalaryremark").val();
        var pwc2 = $("#salarytime").val();
        if(pwc==""){
            alert("基本工资不能为空");
        }else if(pwc1==""){
            alert("工资标准不能为空")
        }else if(pwc2==""){
            alert("工资年月不能为空")
        }else{
            alert("发工资成功！")
            document.tll.onsubmit="return turn"
        }
    });
</script>
</body>
</html>
