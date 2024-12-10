package com.ssm.dao;

import com.ssm.entity.*;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import java.util.Date;
import java.util.List;
@Repository
public interface UserDao {
    //查询全部数据
    List<User> sel();

    //根据账户和密码查询数据
    //声明@Param注解 给sql语句赋值
    public User Login(@Param("jobnumber") String jobnumber, @Param("password") int password);

    //判断用户名是否存在
    int findUser(@Param("jobnumber") String jobnumber);

    //添加用户
    int regist(@Param("jobnumber") String jobnumber, @Param("password") int password);

    //修改密码 先获取id 根据id修改密码
    User selid(String jobnumber);

    int update(@Param("password") int password, @Param("id") int id);

    //奖金管理数据展示
    List<Prize> prizesel();

    //奖金项添加
    int addprize(@Param("prizename") String prizename,@Param("prize") double prize,@Param("prizetime") Date prizetime);

    //奖金项修改
    int updateprize(@Param("prizename") String prizename, @Param("prize") double prize,@Param("prizetime") Date prizetime,@Param("id") int id);

    //修改奖金项的查询数据
    List<Prize> updateprizesel(int id);

    //奖金项删除
    int deleteprize(int id);

    //津贴管理数据展示
    List<Subsidy> subsidysel();

    //津贴添加
    int addsubsidy(@Param("subsidyname") String subsidyname, @Param("subsidynumber") double subsidynumber,@Param("subsidytime") Date subsidytime);

    //津贴修改
    int updatesubsidy(@Param("subsidyname") String subsidyname, @Param("subsidynumber") double subsidynumber,@Param("subsidytime") Date subsidytime,@Param("id") int id);

    //修改津贴项的查询数据
    List<Subsidy> updatesubsidysel(int id);

    //津贴项删除
    int deletesubsidy(int id);

    //部门管理数据展示
    List<Department> departmentsel();

    //部门添加
    int adddepartment(@Param("departmentname") String departmentname);

    List<Department> comboBox();

    //部门修改
    int updatedepartment(@Param("departmentname") String departmentname, @Param("id") int id);

    //修改部门项的查询数据
    List<Department> updatedepartmentsel(int id);

    //部门项删除
    int deletedepartment(int id);

    //考勤管理数据展示
    List<Attendance> attendancesel();

    //考勤添加
    int addattendance(@Param("attendancename") String attendancename, @Param("percentage") double percentage,@Param("attendancetime") Date attendancetime,@Param("deductions") int deductions);

    //考勤修改
    int updateattendance(@Param("attendancename") String attendancename, @Param("percentage") double percentage,@Param("attendancetime") Date attendancetime,@Param("deductions") int deductions, @Param("id") int id);

    //修改考勤项的查询数据
    List<Attendance> updateattendancesel(int id);

    //考勤项删除
    int deleteattendance(int id);

    //店铺管理数据展示
    List<Shop> shopsel();

    //店铺添加
    int addshop(@Param("shopname") String shopname, @Param("area") String area, @Param("isde") String isde, @Param("shopkeeper") String shopkeeper, @Param("remark") String remark);

    //店铺修改
    int updateshop(@Param("shopname") String shopname, @Param("area") String area, @Param("isde") String isde, @Param("shopkeeper") String shopkeeper, @Param("remark") String remark, @Param("id") int id);

    //修改店铺项的查询数据
    List<Shop> updateshopsel(int id);

    //店铺项删除
    int deleteshop(int id);

    //员工级别项管理数据展示
    List<Grade> gradesel();

    //员工级别项添加
    int addgrade(@Param("gradename") String gradename);

    //员工级别项修改
    int updategrade(@Param("gradename") String gradename,@Param("id") int id);

    //修改员工级别项的查询数据
    List<Grade> updategradesel(int id);

    //员工级别项删除
    int deletegrade(int id);

    //员工管理数据展示
    List<Test> sel_message();

    //员工信息添加
    int addemployee(@Param("employeename") String employeename,@Param("sex") String sex,
                    @Param("state") String state,
                    @Param("location") String location,
                    @Param("number") String number, @Param("email") String email);
    int addgrades(@Param("gradename") String gradename);
    int addshops(@Param("shopname") String shopname);
    int adddepartments(@Param("departmentname") String departmentname);
    int addroles(@Param("rolename") String rolename);
    int adduser(@Param("jobnumber") String jobnumber,@Param("password") int password);
    int addhairsalarys(@Param("states") int states);

    //员工信息修改
    int updateemployee(@Param("employeename") String employeename, @Param("sex") String sex,
                       @Param("state") String state, @Param("location") String location,
                    @Param("number") String number, @Param("email") String email,@Param("id") int id);
    int updategrades(@Param("gradename") String gradename,@Param("id") int id);
    int updateshops(@Param("shopname") String shopname,@Param("id") int id);
    int updatedepartments(@Param("departmentname") String departmentname,@Param("id") int id);
    int updateroles(@Param("rolename") String rolename,@Param("id") int id);
    int updateuser(@Param("jobnumber") String jobnumber,@Param("password") int password,@Param("id") int id);

    //修改员工信息的查询数据
    List<Test> updateemployeesel(int id);
    List<User> updateemployeesels(int id);

    //员工信息删除
    int deleteemployee(int id);
    int deleteshops(int id);
    int deleteroles(int id);
    int deletedepartments(int id);
    int deletegrades(int id);
    int deleteuser(int id);

    //角色管理数据展示
    List<Role> rolesel();

    //角色添加
    int addrole(@Param("rolename") String rolename);

    //角色修改
    int updaterole(@Param("rolename") String rolename,@Param("id") int id);

    //修改角色的查询数据
    List<Role> updaterolesel(int id);

    //角色删除
    int deleterole(int id);

    //权限设置数据展示
    List<Testone> permissionssel();

    //权限修改
    int updatepermissions(@Param("type") int type,@Param("id") int id);
    //修改权限的查询数据
    List<Testone> updatepermissionssel(int id);

    //员工补贴记录数据展示
    List<Testtow> subsidyrecordingsel();

    //员工奖金记录数据展示
    List<Testthree> prizerecordingsel();

    //员工考勤记录数据展示
    List<Testfour> attendancerecordingsel();

    //员工工资信息表
    List<Testfive> salarysel();


    //员工发工资管理
    List<Testsix> hairsalarysel();

    //员工发工资
    int addsalary(@Param("foundationsalary") double foundationsalary,@Param("salarytime") Date salarytime,@Param("id") int id);

    //发工资查询数据展示
    List<Testsix> updatehairsalarysel(int id);

    //修改工资
    int updatesalarys(@Param("foundationsalary") double foundationsalary,@Param("salarytime") Date salarytime,@Param("id") int id);

    //工资状态
    int updatehairsalarystate(@Param("id") int id);

    //工资表导出
    List<Testfive> payrolltablesel(String salarytime);

}
