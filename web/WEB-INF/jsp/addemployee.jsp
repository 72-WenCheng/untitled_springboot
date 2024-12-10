<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>员工信息添加</title>
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
    #xiala3{
        width: 200px;
        height: 30px;
    }
    #xiala4{
        width: 200px;
        height: 30px;
    }
    #xiala5{
        width: 200px;
        height: 30px;
    }
    #xiala6{
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
    <span>你当前的位置：【员工管理】-【员工信息管理】-【员工信息添加】</span>
    <form action="Addemployee" method="post" name="tll" onsubmit="return false">
        <span>员工工号：</span><input type="text" name="jobnumber" id="jobnumber" style="width: 200px;height: 30px;"><br>
        <span>员工密码：</span><input type="text" name="password" id="password" style="width: 200px;height: 30px;"><br>
        <span>员工姓名：</span><input type="text" name="employeename" id="employeename" style="width: 200px;height: 30px;"><br>
        <span>性别：</span>
        <select id="xiala1" name="sex">
            <option value="" disabled selected hidden>请选择</option>
            <option value="男">男</option>
            <option value="女">女</option>
        </select>
        <br>
        <span>等级名称：</span>
        <select id="xiala2" name="gradename">
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
        <span>角色名称：</span>
        <select id="xiala3" name="rolename">
            <option value="" disabled selected hidden>请选择</option>
            <option value="店长">店长</option>
            <option value="管理员">管理员</option>
            <option value="员工">员工</option>
        </select>
        <br>
        <span>所属店铺：</span>
        <select id="xiala4" name="shopname">
            <option value="" disabled selected hidden>请选择</option>
            <option value="天津路旗舰店">天津路旗舰店</option>
            <option value="南宁路旗舰店">南宁路旗舰店</option>
            <option value="玉林路旗舰店">玉林路旗舰店</option>
            <option value="钦州路旗舰店">钦州路旗舰店</option>
        </select>
        <br>
        <span>所属部门：</span>
        <select id="xiala5" name="departmentname">
            <option value="" disabled selected hidden>请选择</option>
            <option value="门店部">门店部</option>
            <option value="事业发展部">事业发展部</option>
            <option value="采购部">采购部</option>
            <option value="行政部">行政部</option>
            <option value="人事部">人事部</option>
        </select>
        <br>
        <span>状态：</span>
        <select id="xiala6" name="state">
            <option value="" disabled selected hidden>请选择</option>
            <option value="在职">在职</option>
            <option value="应聘">应聘</option>
            <option value="离职">离职</option>
        </select>
        <br>
        <span>地址：</span><input type="text" name="location" id="location" style="width: 200px;height: 30px;"><br>
        <span>电话号码：</span><input type="text" name="number" id="number" style="width: 200px;height: 30px;"><br>
        <span>邮箱：</span><input type="text" name="email" id="email" style="width: 200px;height: 30px;"><br>
        <span>工资状态：</span><input type="text" name="states" id="states" readOnly="true" value="0" style="font-size: 25px;width: 100px;color: black;font-family: 仿宋"><br>
        <input type="submit" id="btn" value="新增">
    </form>
</div>
<script type="text/javascript">
    //员工信息添加
    $("#btn").click(function(){
        var pwc1 = document.getElementById("xiala1")
        var pwc2 = document.getElementById("xiala2")
        var pwc3 = document.getElementById("xiala3")
        var pwc4 = document.getElementById("xiala4")
        var pwc5 = document.getElementById("xiala5")
        var pwc6 = $("#jobnumber").val();
        var pwc7 = $("#employeename").val();
        var pwc8 = $("#location").val();
        var pwc9 = $("#number").val();
        var pwc10 = $("#email").val();
        var pwc11 = $("#password").val();
        if(pwc6==""){
            alert("员工工号不能为空");
        }else if(pwc11==""){
            alert("员工密码不能为空")
        }else if(pwc7==""){
            alert("员工姓名不能为空")
        }else if(xiala1.value==""){
            alert("性别不能为空")
        }else if(xiala2.value==""){
            alert("等级名称不能为空")
        }else if(xiala3.value==""){
            alert("角色名称不能为空")
        }else if(xiala4.value==""){
            alert("所属店铺不能为空")
        }else if(xiala5.value==""){
            alert("所属部门不能为空")
        }else if(xiala6.value==""){
            alert("状态不能为空")
        }else if(pwc8==""){
            alert("地址不能为空")
        }else if(pwc9==""){
            alert("电话号码不能为空")
        }else if(pwc10==""){
            alert("邮箱不能为空")
        }else{
            alert("添加成功！")
            document.tll.onsubmit="return turn"
        }
    });
</script>
</body>
</html>
