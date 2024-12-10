package com.ssm.controller;

import com.ssm.Lanjie.Lanj;
import com.ssm.entity.*;
import com.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpServletRequest;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@RequestMapping("/system")
@Controller
public class TestController {

    @Autowired
    private UserService userService;


//    @RequestMapping(value = "/index", method = RequestMethod.GET)
//    public String index() {
//        return "hello";
//    }

//    public String index(Model model) {
//        List<User> list = userService.sel();
//        model.addAttribute("list", list);
//        return "hello";
//    }

    //登录表单提交
    @RequestMapping(value = "/Login", method = RequestMethod.POST)
    public String Login(HttpServletRequest request) {
        //获取前端传来的数据
        String jobnumber = request.getParameter("jobnumber");
        int PassWord = Integer.parseInt(request.getParameter("password"));
        //将数据放入service层，交由service.impl去实现
        User user = userService.Login(jobnumber, Integer.parseInt(String.valueOf(PassWord)));
        //可不写，用于打印前端的数据，检测是否获取数据成功
        System.out.println(jobnumber);
        System.out.println(PassWord);
        //返回的user是否为空，如若不为空，则跳转至middle
        //如果为空，则跳回login界面
        //身份获取
        int type = user.getType();
        System.out.println("type"+type);
        if (user != null) {
            if(type==0){
                Lanj.usernamr = jobnumber;
                Lanj.loginid = user.getId();
                return "middle";
            } else if (type==1) {
                Lanj.usernamr = jobnumber;
                Lanj.loginid = user.getId();
                return "middle";
            } else if (type==2) {
                Lanj.usernamr = jobnumber;
                Lanj.loginid = user.getId();
                return "middle";
            }
        }
        return "login";
    }

    //注册事务
    @RequestMapping(value = "Register", method = RequestMethod.POST)
    public String registerUser(String jobnumber, int password) {
        int findUser = userService.findUser(jobnumber);
        System.out.println("用户名" + jobnumber + "是否存在" + findUser);
        if (findUser == 0) {
            userService.regist(jobnumber, password);
            System.out.println("可以注册");
            return "login";
        } else {
            System.out.println("注册失败");
            return "register";
        }
    }

    //修改密码
    @RequestMapping(value = "/Update", method = RequestMethod.POST)
    public String Update(HttpServletRequest request) {
        String password = request.getParameter("password");
        int flag = userService.update(Integer.parseInt(password), Lanj.loginid);
        if (flag > 0) {
            return "xiugaimima";
        }
        return null;
    }

    //奖金管理
    @RequestMapping(value = "/prize", method = RequestMethod.GET)
    public ModelAndView prize(ModelAndView model) {
        List<Prize> list = userService.prizesel();
        model.addObject("list", list);
        model.setViewName("prize");
        return model;
    }

    @RequestMapping(value = "/Addprize", method = RequestMethod.POST)
    public ModelAndView Addprize(ModelAndView model, HttpServletRequest request) throws ParseException {
        String prizename = request.getParameter("prizename");
        double prize = Double.parseDouble(request.getParameter("prize"));
        String prizetime = request.getParameter("prizetime");
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date date = sdf.parse(prizetime);
        int flag = userService.addprize(prizename,prize,date);
        if (flag > 0) {
            model.setViewName("redirect:/system/prize");
            return model;
        }
        model.setViewName("addprize");
        return null;
    }

    @RequestMapping(value = "/updateprize", method = RequestMethod.GET)
    public ModelAndView updateprize(ModelAndView model, HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("id"));
        Lanj.prizeid = id;
        List<Prize> list = userService.updateprizesel(id);
        model.addObject("list", list);
        model.setViewName("updateprize");
        return model;
    }

    @RequestMapping(value = "/updateprizetll", method = RequestMethod.POST)
    public ModelAndView updateprizetll(ModelAndView model, HttpServletRequest request) throws ParseException {
        String prizename = request.getParameter("prizename");
        double prize = Double.parseDouble(request.getParameter("prize"));
        String prizetime = request.getParameter("prizetime");
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date date = sdf.parse(prizetime);
        int flag = userService.updateprize(prizename, prize,date,Lanj.prizeid);
        if (flag > 0) {
            model.setViewName("redirect:/system/prize");
            return model;
        }
        System.out.println(flag);
        model.setViewName("updateprize");
        return null;
    }

    @RequestMapping(value = "/deleteprize", method = RequestMethod.GET)
    public ModelAndView deleteprize(ModelAndView model, HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("id"));
        int flag = userService.deleteprize(id);
        if (flag > 0) {
            model.setViewName("redirect:/system/prize");
            return model;
        }
        return null;
    }

    //津贴管理
    @RequestMapping(value = "/subsidy", method = RequestMethod.GET)
    public ModelAndView subsidy(ModelAndView model) {
        List<Subsidy> list = userService.subsidysel();
        model.addObject("list", list);
        model.setViewName("subsidy");
        return model;
    }

    @RequestMapping(value = "/Addsubsidy", method = RequestMethod.POST)
    public ModelAndView Addsubsidy(ModelAndView model, HttpServletRequest request) throws ParseException {
        String subsidyname = request.getParameter("subsidyname");
        double subsidynumber = Double.parseDouble(request.getParameter("subsidynumber"));
        String subsidytime = request.getParameter("subsidytime");
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date date = sdf.parse(subsidytime);
        int flag = userService.addsubsidy(subsidyname, subsidynumber,date);
        if (flag > 0) {
            model.setViewName("redirect:/system/subsidy");
            return model;
        }
        model.setViewName("addsubsidy");
        return null;
    }

    @RequestMapping(value = "/updatesubsidy", method = RequestMethod.GET)
    public ModelAndView updatesubsidy(ModelAndView model, HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("id"));
        Lanj.subsidyid = id;
        List<Subsidy> list = userService.updatesubsidysel(id);
        model.addObject("list", list);
        model.setViewName("updatesubsidy");
        return model;
    }

    @RequestMapping(value = "/updatesubsidytll", method = RequestMethod.POST)
    public ModelAndView updatesubsidytll(ModelAndView model, HttpServletRequest request) throws ParseException {
        String subsidyname = request.getParameter("subsidyname");
        double subsidynumber = Double.parseDouble(request.getParameter("subsidynumber"));
        String subsidytime = request.getParameter("subsidytime");
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date date = sdf.parse(subsidytime);
        int flag = userService.updatesubsidy(subsidyname, subsidynumber,date,Lanj.subsidyid);
        if (flag > 0) {
            model.setViewName("redirect:/system/subsidy");
            return model;
        }
        System.out.println(flag);
        model.setViewName("updatesubsidy");
        return null;
    }

    @RequestMapping(value = "/deletesubsidy", method = RequestMethod.GET)
    public ModelAndView deletesubsidy(ModelAndView model, HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("id"));
        int flag = userService.deletesubsidy(id);
        if (flag > 0) {
            model.setViewName("redirect:/system/subsidy");
            return model;
        }
        return null;
    }

    //部门管理
    @RequestMapping(value = "/department", method = RequestMethod.GET)
    public ModelAndView department(ModelAndView model) {
        List<Department> list = userService.departmentsel();
        model.addObject("list", list);
        model.setViewName("department");
        return model;
    }

    @RequestMapping(value = "/Adddepartment", method = RequestMethod.POST)
    public ModelAndView Adddepartment(ModelAndView model, HttpServletRequest request) {
        String departmentname =request.getParameter("departmentname");
        int flag=userService.adddepartment(departmentname);
        if (flag>0){
            model.setViewName("redirect:/system/department");
            return model;
        }
        model.setViewName("adddepartment");
        return null;
    }

    @RequestMapping(value = "/updatedepartment", method = RequestMethod.GET)
    public ModelAndView updatedepartment(ModelAndView model, HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("id"));
        Lanj.departmentid=id;
        List<Department> list = userService.updatedepartmentsel(id);
        model.addObject("list",list);
        model.setViewName("updatedepartment");
        return model;
    }

    @RequestMapping(value = "/updatedepartmenttll", method = RequestMethod.POST)
    public ModelAndView updatedepartmenttll(ModelAndView model, HttpServletRequest request) {
        String departmentname = request.getParameter("departmentname");
        int flag = userService.updatedepartment(departmentname,Lanj.departmentid);
        if (flag > 0) {
            model.setViewName("redirect:/system/department");
            return model;
        }
        System.out.println(flag);
        model.setViewName("updatedepartment");
        return null;
    }

    @RequestMapping(value = "/deletedepartment",method = RequestMethod.GET)
    public ModelAndView deletedepartment(ModelAndView model ,HttpServletRequest request) {
        int id=Integer.parseInt(request.getParameter("id"));
        int flag=userService.deletedepartment(id);
        if (flag>0){
            model.setViewName("redirect:/system/department");
            return model;
        }
        return null;
    }

    //考勤管理
    @RequestMapping(value = "/attendance",method = RequestMethod.GET)
    public ModelAndView attendance(ModelAndView model) {
        List<Attendance> list=userService.attendancesel();
        model.addObject("list",list);
        model.setViewName("attendance");
        return model;
    }

    @RequestMapping(value = "/Addattendance",method = RequestMethod.POST)
    public ModelAndView Addattendance(ModelAndView model,HttpServletRequest request) throws ParseException {
        String attendancename =request.getParameter("attendancename");
        double percentage=Double.parseDouble(request.getParameter("percentage"));
        int deductions = Integer.parseInt(request.getParameter("deductions"));
        String attendancetime = request.getParameter("attendancetime");
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date date = sdf.parse(attendancetime);
        int flag=userService.addattendance(attendancename,percentage,date,deductions);
        if (flag>0){
            model.setViewName("redirect:/system/attendance");
            return model;
        }
        model.setViewName("addattendance");
        return null;
    }

    @RequestMapping(value = "/updateattendance", method = RequestMethod.GET)
    public ModelAndView updateattendance(ModelAndView model, HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("id"));
        Lanj.attendanceid=id;
        List<Attendance> list = userService.updateattendancesel(id);
        model.addObject("list",list);
        model.setViewName("updateattendance");
        return model;
    }

    @RequestMapping(value = "/updateattendancetll", method = RequestMethod.POST)
    public ModelAndView updateattendancetll(ModelAndView model, HttpServletRequest request) throws ParseException {
        String attendancename = request.getParameter("attendancename");
        double percentage = Double.parseDouble(request.getParameter("percentage"));
        int deductions = Integer.parseInt(request.getParameter("deductions"));
        String attendancetime = request.getParameter("attendancetime");
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date date = sdf.parse(attendancetime);
        int flag = userService.updateattendance(attendancename,percentage,date,deductions,Lanj.attendanceid);
        if (flag > 0) {
            model.setViewName("redirect:/system/attendance");
            return model;
        }
        System.out.println(flag);
        model.setViewName("updateattendance");
        return null;
    }

    @RequestMapping(value = "/deleteattendance",method = RequestMethod.GET)
    public ModelAndView deleteattendance(ModelAndView model ,HttpServletRequest request) {
        int id=Integer.parseInt(request.getParameter("id"));
        int flag=userService.deleteattendance(id);
        if (flag>0){
            model.setViewName("redirect:/system/attendance");
            return model;
        }
        return null;
    }

    //店铺管理
    @RequestMapping(value = "/shop",method = RequestMethod.GET)
    public ModelAndView shop(ModelAndView model) {
        List<Shop> list=userService.shopsel();
        model.addObject("list",list);
        model.setViewName("shop");
        return model;
    }

    @RequestMapping(value = "/Addshop",method = RequestMethod.POST)
    public ModelAndView Addshop(ModelAndView model,HttpServletRequest request) {
        String shopname =request.getParameter("shopname");
        String area=request.getParameter("area");
        String isde=request.getParameter("isde");
        String shopkeeper=request.getParameter("shopkeeper");
        String remark=request.getParameter("remark");
        int flag=userService.addshop(shopname,area,isde,shopkeeper,remark);
        if (flag>0){
            model.setViewName("redirect:/system/shop");
            return model;
        }
        model.setViewName("addshop");
        return null;
    }

    @RequestMapping(value = "/updateshop", method = RequestMethod.GET)
    public ModelAndView updateshop(ModelAndView model, HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("id"));
        Lanj.shopid=id;
        List<Shop> list = userService.updateshopsel(id);
        model.addObject("list",list);
        model.setViewName("updateshop");
        return model;
    }

    @RequestMapping(value = "/updateshoptll", method = RequestMethod.POST)
    public ModelAndView updateshoptll(ModelAndView model, HttpServletRequest request) {
        String shopname =request.getParameter("shopname");
        String area=request.getParameter("area");
        String isde=request.getParameter("isde");
        String shopkeeper=request.getParameter("shopkeeper");
        String remark=request.getParameter("remark");
        int flag = userService.updateshop(shopname,area,isde,shopkeeper,remark,Lanj.shopid);
        if (flag > 0) {
            model.setViewName("redirect:/system/shop");
            return model;
        }
        System.out.println(flag);
        model.setViewName("updateshop");
        return null;
    }

    @RequestMapping(value = "/deleteshop",method = RequestMethod.GET)
    public ModelAndView deleteshop(ModelAndView model ,HttpServletRequest request) {
        int id=Integer.parseInt(request.getParameter("id"));
        int flag=userService.deleteshop(id);
        if (flag>0){
            model.setViewName("redirect:/system/shop");
            return model;
        }
        return null;
    }

    //员工级别项管理
    @RequestMapping(value = "/grade",method = RequestMethod.GET)
    public ModelAndView grade(ModelAndView model) {
        List<Grade> list=userService.gradesel();
        model.addObject("list",list);
        model.setViewName("grade");
        return model;
    }

    @RequestMapping(value = "/Addgrade",method = RequestMethod.POST)
    public ModelAndView Addgrade(ModelAndView model,HttpServletRequest request) {
        String gradename =request.getParameter("gradename");
        int flag=userService.addgrade(gradename);
        if (flag>0){
            model.setViewName("redirect:/system/grade");
            return model;
        }
        model.setViewName("addgrade");
        return null;
    }

    @RequestMapping(value = "/updategrade", method = RequestMethod.GET)
    public ModelAndView updategrade(ModelAndView model, HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("id"));
        Lanj.gradeid=id;
        List<Grade> list = userService.updategradesel(id);
        model.addObject("list",list);
        model.setViewName("updategrade");
        return model;
    }

    @RequestMapping(value = "/updategradetll", method = RequestMethod.POST)
    public ModelAndView updategradetll(ModelAndView model, HttpServletRequest request) {
        String gradename = request.getParameter("gradename");
        int flag = userService.updategrade(gradename,Lanj.gradeid);
        if (flag > 0) {
            model.setViewName("redirect:/system/grade");
            return model;
        }
        System.out.println(flag);
        model.setViewName("updategrade");
        return null;
    }

    @RequestMapping(value = "/deletegrade",method = RequestMethod.GET)
    public ModelAndView deletegrade(ModelAndView model ,HttpServletRequest request) {
        int id=Integer.parseInt(request.getParameter("id"));
        int flag=userService.deletegrade(id);
        if (flag>0){
            model.setViewName("redirect:/system/grade");
            return model;
        }
        return null;
    }

    //员工管理数据展示
    @RequestMapping(value = "/employee",method = RequestMethod.GET)
    public ModelAndView employee(ModelAndView model ,HttpServletRequest request) {
        List<Test> list = userService.sel_message();
        model.addObject("list",list);
        model.setViewName("employee");
        return model;
    }

    @RequestMapping(value = "/Addemployee",method = RequestMethod.POST)
    public ModelAndView Addemployee(ModelAndView model,HttpServletRequest request) {
        String jobnumber =request.getParameter("jobnumber");
        String employeename =request.getParameter("employeename");
        String sex =request.getParameter("sex");
        String location =request.getParameter("location");
        String number =request.getParameter("number");
        String email =request.getParameter("email");
        String gradename =request.getParameter("gradename");
        String departmentname =request.getParameter("departmentname");
        String shopname =request.getParameter("shopname");
        String rolename =request.getParameter("rolename");
        String state =request.getParameter("state");
        int states = Integer.parseInt(request.getParameter("states"));
        int password=Integer.parseInt(request.getParameter("password"));
        int flag1=userService.addemployee(employeename,sex,state,location,number,email);
        int flag2=userService.addroles(rolename);
        int flag3=userService.adddepartments(departmentname);
        int flag4=userService.addgrades(gradename);
        int flag5=userService.addshops(shopname);
        int flag6=userService.adduser(jobnumber,password);
        int flag7=userService.addhairsalarys(states);
        if (flag1>0||flag2>0||flag3>0||flag4>0||flag5>0||flag6>0||flag7>0){
            model.setViewName("redirect:/system/employee");
            return model;
        }
        model.setViewName("addemployee");
        return null;
    }

    @RequestMapping(value = "/updateemployee", method = RequestMethod.GET)
    public ModelAndView updateemployee(ModelAndView model, HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("id"));
        Lanj.employeeid=id;
        Lanj.usernamrid=id;
        List<Test> list = userService.updateemployeesel(id);
        List<User> list1 = userService.updateemployeesels(id);
        model.addObject("list",list);
        model.addObject("list1",list1);
        model.setViewName("updateemployee");
        return model;
    }

    @RequestMapping(value = "/updateemployeetll", method = RequestMethod.POST)
    public ModelAndView updateemployeetll(ModelAndView model, HttpServletRequest request) {
        String jobnumber =request.getParameter("jobnumber");
        String employeename =request.getParameter("employeename");
        String sex =request.getParameter("sex");
        String location =request.getParameter("location");
        String number =request.getParameter("number");
        String email =request.getParameter("email");
        String gradename =request.getParameter("gradename");
        String departmentname =request.getParameter("departmentname");
        String shopname =request.getParameter("shopname");
        String rolename =request.getParameter("rolename");
        String state =request.getParameter("state");
        int password=Integer.parseInt(request.getParameter("password"));
        int flag1=userService.updateemployee(employeename,sex,state,location,number,email,Lanj.employeeid);
        int flag2=userService.updateroles(rolename,Lanj.employeeid);
        int flag3=userService.updatedepartments(departmentname,Lanj.employeeid);
        int flag4=userService.updategrades(gradename,Lanj.employeeid);
        int flag5=userService.updateshops(shopname,Lanj.employeeid);
        int flag6=userService.updateuser(jobnumber,password,Lanj.employeeid);
        if (flag1>0||flag2>0||flag3>0||flag4>0||flag5>0||flag6>0) {
            model.setViewName("redirect:/system/employee");
            return model;
        }
        model.setViewName("updateemployee");
        return null;
    }

    @RequestMapping(value = "/deleteemployee",method = RequestMethod.GET)
    public ModelAndView deleteemployee(ModelAndView model ,HttpServletRequest request) {
        int id=Integer.parseInt(request.getParameter("id"));
        int flag1=userService.deleteemployee(id);
        int flag2=userService.deleteshops(id);
        int flag3=userService.deleteroles(id);
        int flag4=userService.deletedepartments(id);
        int flag5=userService.deletegrades(id);
        int flag6=userService.deleteuser(id);
        if (flag1>0||flag2>0||flag3>0||flag4>0||flag5>0||flag6>0){
            model.setViewName("redirect:/system/employee");
            return model;
        }
        return null;
    }

    //角色管理
    @RequestMapping(value = "/role", method = RequestMethod.GET)
    public ModelAndView role(ModelAndView model) {
        List<Role> list = userService.rolesel();
        model.addObject("list", list);
        model.setViewName("role");
        return model;
    }

    @RequestMapping(value = "/Addrole", method = RequestMethod.POST)
    public ModelAndView Addrole(ModelAndView model, HttpServletRequest request) {
        String rolename = request.getParameter("rolename");
        int flag = userService.addrole(rolename);
        if (flag > 0) {
            model.setViewName("redirect:/system/role");
            return model;
        }
        model.setViewName("addrole");
        return null;
    }

    @RequestMapping(value = "/updaterole", method = RequestMethod.GET)
    public ModelAndView updaterole(ModelAndView model, HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("id"));
        Lanj.roleid = id;
        List<Role> list = userService.updaterolesel(id);
        model.addObject("list", list);
        model.setViewName("updaterole");
        return model;
    }

    @RequestMapping(value = "/updateroletll", method = RequestMethod.POST)
    public ModelAndView updateroletll(ModelAndView model, HttpServletRequest request) {
        String rolename = request.getParameter("rolename");
        int flag = userService.updaterole(rolename, Lanj.roleid);
        if (flag > 0) {
            model.setViewName("redirect:/system/role");
            return model;
        }
        System.out.println(flag);
        model.setViewName("updaterole");
        return null;
    }

    @RequestMapping(value = "/deleterole", method = RequestMethod.GET)
    public ModelAndView deleterole(ModelAndView model, HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("id"));
        int flag = userService.deleterole(id);
        if (flag > 0) {
            model.setViewName("redirect:/system/role");
            return model;
        }
        return null;
    }

    //权限设置
    @RequestMapping(value = "/permissions", method = RequestMethod.GET)
    public ModelAndView permissions(ModelAndView model) {
        List<Testone> list = userService.permissionssel();
        model.addObject("list", list);
        model.setViewName("permissions");
        return model;
    }

    @RequestMapping(value = "/updatepermissions", method = RequestMethod.GET)
    public ModelAndView updatepermissions(ModelAndView model, HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("id"));
        Lanj.permissionsid = id;
        List<Testone> list = userService.updatepermissionssel(id);
        model.addObject("list", list);
        model.setViewName("updatepermissions");
        return model;
    }

    @RequestMapping(value = "/updatepermissionstll", method = RequestMethod.POST)
    public ModelAndView updatepermissionstll(ModelAndView model, HttpServletRequest request) {
        int type = Integer.parseInt(request.getParameter("type"));
        int flag = userService.updatepermissions(type, Lanj.permissionsid);
        if (flag > 0) {
            model.setViewName("redirect:/system/permissions");
            return model;
        }
        System.out.println(flag);
        model.setViewName("updatepermissions");
        return null;
    }

    //员工补贴记录
    @RequestMapping(value = "/subsidyrecording", method = RequestMethod.GET)
    public ModelAndView subsidyrecording(ModelAndView model) {
        List<Testtow> list = userService.subsidyrecordingsel();
        model.addObject("list", list);
        model.setViewName("subsidyrecording");
        return model;
    }

    //员工奖金记录
    @RequestMapping(value = "/prizerecording", method = RequestMethod.GET)
    public ModelAndView prizerecording(ModelAndView model) {
        List<Testthree> list = userService.prizerecordingsel();
        model.addObject("list", list);
        model.setViewName("prizerecording");
        return model;
    }

    //员工考勤记录
    @RequestMapping(value = "/attendancerecording", method = RequestMethod.GET)
    public ModelAndView attendancerecording(ModelAndView model) {
        List<Testfour> list = userService.attendancerecordingsel();
        model.addObject("list", list);
        model.setViewName("attendancerecording");
        return model;
    }

    //员工工资信息表
    @RequestMapping(value = "/salary", method = RequestMethod.GET)
    public ModelAndView salary(ModelAndView model) {
        List<Testfive> list = userService.salarysel();
        model.addObject("list", list);
        model.setViewName("salary");
        return model;
    }

    //员工发工资管理
    @RequestMapping(value = "/hairsalary", method = RequestMethod.GET)
    public ModelAndView hairsalary(ModelAndView model) {
        List<Testsix> list = userService.hairsalarysel();
        model.addObject("list", list);
        model.setViewName("hairsalary");
        return model;
    }

    @RequestMapping(value = "/Addhairsalary", method = RequestMethod.POST)
    public ModelAndView Addhairsalary(ModelAndView model, HttpServletRequest request) throws ParseException {
        double foundationsalary = Double.parseDouble(request.getParameter("foundationsalary"));
        String salarytime = request.getParameter("salarytime");
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date date = sdf.parse(salarytime);
        int flag1 = userService.addsalary(foundationsalary,date,Lanj.employeeid);
        if (flag1 > 0) {
            model.setViewName("redirect:/system/hairsalary");
            return model;
        }
        model.setViewName("addhairsalary");
        return null;
    }

    @RequestMapping(value = "/updatehairsalarysel", method = RequestMethod.GET)
    public ModelAndView updatehairsalarysel(ModelAndView model, HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("id"));
        Lanj.hairsalaryid = id;
        List<Testsix> list = userService.updatehairsalarysel(id);
        model.addObject("list", list);
        model.setViewName("updatehairsalary");
        return model;
    }

    @RequestMapping(value = "/updatehairsalarytll", method = RequestMethod.POST)
    public ModelAndView updatehairsalarytll(ModelAndView model, HttpServletRequest request) throws ParseException {
        double foundationsalary = Double.parseDouble(request.getParameter("foundationsalary"));
        String salarytime = request.getParameter("salarytime");
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date date = sdf.parse(salarytime);
        int flag1 = userService.updatesalarys(foundationsalary,date,Lanj.hairsalaryid);
        if (flag1 > 0) {
            model.setViewName("redirect:/system/hairsalary");
            return model;
        }
        model.setViewName("updatehairsalary");
        return null;
    }

    @RequestMapping(value = "/updatehairsalarystate", method = RequestMethod.GET)
    public ModelAndView updatehairsalarystate(ModelAndView model, HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("id"));
        int flag = userService.updatehairsalarystate(id);
        if (flag > 0) {
            model.setViewName("redirect:/system/hairsalary");
            return model;
        }
        return null;
    }


    //工资导出界面
    @RequestMapping(value = "/payrolltable", method = RequestMethod.GET)
    public  String payrolltable(){
        return "payrolltable";
    }

    //工资表导出
    @RequestMapping(value = "/Payrolltable", method = RequestMethod.POST)
    public ModelAndView payrolltable(ModelAndView model,HttpServletRequest request) throws ParseException {
        System.out.println("进来了");
        String salarytime = request.getParameter("date");
        List<Testfive> list = userService.payrolltablesel(salarytime);
        model.addObject("list", list);
        System.out.println(list.size());
        model.setViewName("payrolltable");
        return model;
    }

    //添加系统所需的jsp页面
    @RequestMapping(value = "/middle",method = RequestMethod.GET)
    public ModelAndView middle(ModelAndView model) {
        model.setViewName("middle");
        return model;
    }

    @RequestMapping(value = "/foot",method = RequestMethod.GET)
    public ModelAndView foot(ModelAndView model) {
        model.setViewName("foot");
        return model;
    }

    @RequestMapping(value = "/shouye",method = RequestMethod.GET)
    public ModelAndView shouye(ModelAndView model) {
        model.setViewName("shouye");
        return model;
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView login(ModelAndView model) {
        model.setViewName("login");
        return model;
    }

    @RequestMapping(value = "/xiugaimima", method = RequestMethod.GET)
    public ModelAndView xiugaimima(ModelAndView model) {
        model.setViewName("xiugaimima");
        return model;
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public ModelAndView register(ModelAndView model) {
        model.setViewName("register");
        return model;
    }

    @RequestMapping(value = "/hello",method = RequestMethod.GET)
    public ModelAndView hello(ModelAndView model) {
        model.setViewName("hello");
        return model;
    }

    @RequestMapping(value = "/addprize",method = RequestMethod.GET)
    public ModelAndView addprize(ModelAndView model) {
        model.setViewName("addprize");
        return model;
    }

    @RequestMapping(value = "/addsubsidy",method = RequestMethod.GET)
    public ModelAndView addsubsidy(ModelAndView model) {
        model.setViewName("addsubsidy");
        return model;
    }

    @RequestMapping(value = "/adddepartment",method = RequestMethod.GET)
    public ModelAndView adddepartment(ModelAndView model) {
        model.setViewName("adddepartment");
        return model;
    }

    @RequestMapping(value = "/addattendance",method = RequestMethod.GET)
    public ModelAndView addattendance(ModelAndView model) {
        model.setViewName("addattendance");
        return model;
    }

    @RequestMapping(value = "/addshop",method = RequestMethod.GET)
    public ModelAndView addshop(ModelAndView model) {
        model.setViewName("addshop");
        return model;
    }

    @RequestMapping(value = "/addgrade",method = RequestMethod.GET)
    public ModelAndView addgrade(ModelAndView model) {
        model.setViewName("addgrade");
        return model;
    }
    @RequestMapping(value = "/addemployee",method = RequestMethod.GET)
    public ModelAndView addemployee(ModelAndView model) {
        model.setViewName("addemployee");
        return model;
    }
    @RequestMapping(value = "/addrole",method = RequestMethod.GET)
    public ModelAndView addrole(ModelAndView model) {
        model.setViewName("addrole");
        return model;
    }
    @RequestMapping(value = "/addhairsalary",method = RequestMethod.GET)
    public ModelAndView addhairsalary(ModelAndView model) {
        model.setViewName("addhairsalary");
        return model;
    }
}