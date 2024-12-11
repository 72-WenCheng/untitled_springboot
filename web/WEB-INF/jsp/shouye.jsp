<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang = "en">
<head>
    <meta charset = "UTF-8">
    <meta name = "viewport"
          content = "width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv = "X-UA-Compatible" content = "ie=edge">
    <title>Test</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
    <script src = "../js/jquery-1.8.3.min.js"></script>
    <style>
        /*兼容浏览器*/
        * {
            margin: 0;
            padding: 0;
        }

        .content {
            width: 100%;
            height: 100%;
        }

        .content-left {
            width: 100%;
            height: 1000px;
            background-color: #1c232f;
            float: left;
            font-family: "仿宋";
            font-size:40px;
        }

        .content-right {
            width: 75%;
            height: 600px;
            background-color: #6495ED;
            float: left;
        }

        .left-title {
            width: 100%;
            height: 50px;
        }

        .left-title > a {
            display: block;
            width: 100%;
            height: 200px;
            line-height: 200px;
            text-align: center;
            color: white;
            /*去掉a下默认下划线*/
            text-decoration: none;
        }

        /*分割线*/
        .seg {
            height: 1px;
            width: 100%;
            background-color: black;
        }

        .nav {
            /*上下5,左右0*/
            margin: 5px 0;
        }

        /*菜单项主标题*/
        .nav-title {
            height: 60px;
            width: 100%;
            color: white;
            text-align: center;
            line-height: 50px;
            cursor: pointer;
        }

        /*子标题内容区*/
        .nav-content {
            width: 100%;
            height: 100%;
            background-color: #0C1119;
        }

        /*子标题的样式*/
        .nav-content > a {
            display: block;
            width: 100%;
            height: 50px;
            color: #CCCCCC;
            text-decoration: none;
            text-align: center;
            line-height: 50px;
            font-size: 25px;
        }

        /*子标题鼠标经过时的改变颜色*/
        .nav-content > a:hover {
            color: #FFFFFF;
            background-color: #12040c;
        }

        /*内容区*/
        .content-right{
            font-size: 50px;
            line-height: 600px;
            text-align: center;
        }
    </style>

    <script src = "https://code.jquery.com/jquery-3.2.1.min.js"
            integrity = "sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin = "anonymous"></script>
    <script>

        $(function () {

            //隐藏所有子标题
            $(".nav-menu").each(function () {
                $(this).children(".nav-content").hide();
            });

            //给菜单项中的所有主标题绑定事件
            $(".nav-title").each(function () {
                //获取点击当前标签下所有子标签
                var navConEle = $(this).parents(".nav-menu").children(".nav-content");

                //绑定点击事件,判断navConEle的display这个属性是否为none,时none的话时隐藏状态
                $(this).click(function(){
                    if (navConEle.css("display") != "none") {
                        //隐藏,传参数自带动画,单位为毫秒
                        navConEle.hide(300);
                    } else {
                        //显示,传参数自带动画,单位为毫秒
                        $(".nav-menu").each(function () {
                            $(this).children(".nav-content").hide(300);
                        });
                        navConEle.show(300);
                    }
                });
            });
        });
    </script>
</head>
<body>
<div class = "content">
    <!--左侧导航栏-->
    <div class = "content-left">
        <!-- <div class = "left-title">
            <a href = "#">企业信息管理系统</a>
        </div> -->

        <!--水平线-->
        <!-- <div class = "seg"></div> -->

        <!--菜单栏导航-->
        <div class = "nav">
            <!--每一个菜单栏项-->
            <div class = "nav-menu">
                <!--主标题-->
                <div class = "nav-title">系统管理</div>
                <!--子标题-->
                <div class = "nav-content">
                    <a href = "xiugaimima" target="content">修改密码</a>
                </div>
            </div>

            <!--每一个菜单栏项-->
            <div class = "nav-menu">
                <!--主标题-->
                <div class = "nav-title">参数管理</div>
                <!--子标题-->
                <div class = "nav-content">
                    <a href = "prize" target="content">奖金管理</a>
                    <a href = "subsidy" target="content">津贴管理</a>
                    <a href = "department" target="content">部门管理</a>
                    <a href = "attendance" target="content">考勤项管理</a>
                    <a href = "shop" target="content">店铺管理</a>
                    <a href = "grade" target="content">员工级别项管理</a>
                </div>
            </div>

            <!--每一个菜单栏项-->
            <div class = "nav-menu">
                <!--主标题-->
                <div class = "nav-title">员工管理</div>
                <!--子标题-->
                <div class = "nav-content">
                    <a href = "employee" target="content">员工信息管理</a>
                    <a href = "role" target="content">角色管理</a>
                    <a href = "permissions" target="content">权限管理</a>
                    <a href = "subsidyrecording" target="content">员工补贴记录</a>
                    <a href = "prizerecording" target="content">员工奖项记录</a>
                </div>
            </div>
        </div>

        <!--每一个菜单栏项-->
        <div class = "nav-menu">
            <!--主标题-->
            <div class = "nav-title">工资管理</div>
            <!--子标题-->
            <div class = "nav-content">
                <a href = "salary" target="content">员工工资表信息</a>
                <a href = "hairsalary" target="content">发工资</a>
                <a href = "payrolltable" target="content">工资表导出</a>
            </div>
        </div>
        <!--每一个菜单栏项-->
        <div class = "nav-menu">
            <!--主标题-->
            <div class = "nav-title">员工考勤</div>
            <!--子标题-->
            <div class = "nav-content">
                <a href = "attendancerecording" target="content">考勤记录</a>
            </div>
        </div>
    </div>
    <!--水平线-->
    <div class = "seg"></div>
  </div>
</div>
<!--右侧内容区-->
<!-- <div class = "content-right">
     <iframe name="test" style="overflow: visible;"
     scrolling="yes" frameborder="no" width="100%" height="100%"></iframe>
 </div> -->
</div>
</body>
</html>

