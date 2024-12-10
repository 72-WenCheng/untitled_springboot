<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>权限修改</title>
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
<body background="../img/3.jpg">
<c:forEach items="${list}" var="c">
    <div id="all">
        <span>你当前的位置：【员工管理】-【权限设置】-【权限修改】</span>
        <form action="updatepermissionstll" method="post" name="tll" onsubmit="return false">
            <span>员工姓名：</span>
            <input type="text" name="employeename" placeholder="${c.employeename}" readOnly="true" style="width: 200px;height: 30px;"><br>
            <span>权限：</span><input type="text" name="type" placeholder="${c.type}" id="type" style="width: 200px;height: 30px;"><br>
            <input type="submit" id="btn" value="修改">
        </form>
    </div>
</c:forEach>
<script type="text/javascript">
    //权限修改
    $("#btn").click(function(){
        var pwc = $("#type").val();
        if(pwc==""){
            alert("权限不能为空");
        }else{
            alert("修改成功！")
            document.tll.onsubmit="return turn"
        }
    });
</script>
</body>
</html>
