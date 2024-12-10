<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>店铺项添加</title>
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
    #xiala1{
        width: 200px;
        height: 30px;
    }
    #xiala2{
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
<body background="../img/3.jpg">
<div id="all" style="text-align: center;font-size: 25px;font-family: 仿宋;color: white;">
    <span>你当前的位置：【参数管理】-【店铺管理】-【店铺项添加】</span>
    <form action="Addshop" method="post" name="tll" onsubmit="return false">
        <span>店铺名称：</span>
        <select id="xiala1" name="shopname">
            <option value="" disabled selected hidden>请选择</option>
            <option value="天津路旗舰店">天津路旗舰店</option>
            <option value="南宁路旗舰店">南宁路旗舰店</option>
            <option value="玉林路旗舰店">玉林路旗舰店</option>
            <option value="钦州路旗舰店">钦州路旗舰店</option>
        </select><br>
        <span>所在区域：</span><input type="text" name="area" id="area"><br>
        <span>状态：</span>
        <select id="xiala2" name="isde">
            <option value="" disabled selected hidden>请选择</option>
            <option value="在职">在职</option>
            <option value="离职">离职</option>
            <option value="应聘">应聘</option>
        </select><br>
        <span>店长名字：</span><input type="text" name="shopkeeper" id="shopkeeper" style="width: 200px;height: 30px;"><br>
        <span>备注：</span><input type="text" name="remark" id="remark" style="width: 200px;height: 30px;"><br>
        <input type="submit" id="btn" value="新增" style=" font-size: 25px; width: 100px;font-family: 仿宋">
    </form>
</div>
<script type="text/javascript">
    //店铺项添加
    $("#btn").click(function(){
        var pwc = document.getElementById("xiala1")
        var pwc1 = document.getElementById("xiala2")
        var pwc2 = $("#area").val();
        var pwc3 = $("#shopkeeper").val();
        var pwc4 = $("#remark").val();
        if(xiala1.value==""){
            alert("店铺名称不能为空");
        }else if(xiala2.value==""){
            alert("状态不能为空")
        }else if(pwc2==""){
            alert("所在区域不能为空")
        }else if(pwc3==""){
            alert("店长名字不能为空")
        }else if(pwc4==""){
            alert("备注不能为空")
        }else {
            alert("添加成功！")
            document.tll.onsubmit="return turn"
        }
    });
</script>
</body>
</html>
