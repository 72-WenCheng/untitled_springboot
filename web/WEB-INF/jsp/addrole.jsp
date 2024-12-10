<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>角色添加</title>
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
<div id="all" style="text-align: center;font-size: 25px;font-family: 仿宋;color: white;">
    <span>你当前的位置：【员工管理】-【角色管理】-【角色添加】</span>
    <form action="Addrole" method="post" name="tll" onsubmit="return false">
        <span>角色名称：</span>
        <select id="xiala" name="rolename" style="width: 150px; height: 30px;">
            <option value="" disabled selected hidden>请选择</option>
            <option value="管理员">管理员</option>
            <option value="店长">店长</option>
            <option value="普通员工">普通员工</option>
        </select>
        <input type="submit" id="btn" value="新增" style="font-size: 25px;width: 100px;color: black;font-family: 仿宋">
    </form>
</div>
<script type="text/javascript">
    //角色添加
    $("#btn").click(function(){
        var pwc = document.getElementById("xiala")
        if(xiala.value==""){
            alert("角色名称不能为空");
        }else{
            alert("添加成功！")
            document.tll.onsubmit="return turn"
        }
    });
</script>
</body>
</html>
