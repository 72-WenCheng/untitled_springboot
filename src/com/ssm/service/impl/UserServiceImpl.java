package com.ssm.service.impl;

import com.ssm.dao.UserDao;
import com.ssm.entity.*;
import com.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.Date;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    public UserServiceImpl() {

    }
    @Override
    public List<User> sel() {
        return this.userDao.sel();
    }
    @Override
    public User Login(String jobnumber, int password) {
        User user = userDao.Login(jobnumber,password);
        if (user != null && user.getJobnumber().equals(jobnumber) && user.getPassword()==password) {
            return user;
        }
        return null;
    }
    @Override
    public User selid(String jobnumber) {
        return userDao.selid(jobnumber);
    }

    @Override
    public int update(int password, int id) {
        int flag = userDao.update(password,id);
        return flag;
    }
    @Override
    public int findUser(String jobnumber) {
        if(userDao.findUser(jobnumber)==0) {
            return 0;
        }
        return 1;
    }
    @Override
    public void regist(String jobnumber, int password){
        userDao.regist(jobnumber, password);
    }

    //奖金管理
    @Override
    public List<Prize> prizesel(){
        return userDao.prizesel();
    }
    @Override
    public int addprize(String prizename,double prize,Date prizetime){
        int falg = userDao.addprize(prizename,prize,prizetime);
        return falg;
    }
    @Override
    public int updateprize(String prizename,double prize,Date prizetime,int id){
        int falg = userDao.updateprize(prizename,prize,prizetime,id);
        return falg;
    }
    @Override
    public List<Prize> updateprizesel(int id) {
        return userDao.updateprizesel(id);
    }
    @Override
    public int deleteprize(int id) {
        int falg = userDao.deleteprize(id);
        return falg;
    }

    //津贴管理
    @Override
    public List<Subsidy> subsidysel() {
        return userDao.subsidysel();
    }
    @Override
    public int addsubsidy(String subsidyname, double subsidynumber,Date subsidytime) {
        int falg = userDao.addsubsidy(subsidyname,subsidynumber,subsidytime);
        return falg;
    }
    @Override
    public int updatesubsidy(String subsidyname, double subsidynumber,Date subsidytime, int id) {
        int falg = userDao.updatesubsidy(subsidyname,subsidynumber,subsidytime,id);
        return falg;
    }
    @Override
    public List<Subsidy> updatesubsidysel(int id) {
        return userDao.updatesubsidysel(id);
    }
    @Override
    public int deletesubsidy(int id) {
        int falg = userDao.deletesubsidy(id);
        return falg;
    }

    //部门管理
    @Override
    public List<Department> departmentsel() {
        return userDao.departmentsel();
    }

    @Override
    public int adddepartment(String departmentname) {
        int falg = userDao.adddepartment(departmentname);
        return falg;
    }

    @Override
    public int updatedepartment(String departmentname,int id) {
        int falg = userDao.updatedepartment(departmentname,id);
        return falg;
    }
    @Override
    public List<Department> updatedepartmentsel(int id) {
        return userDao.updatedepartmentsel(id);
    }
    @Override
    public int deletedepartment(int id) {
        int falg = userDao.deletedepartment(id);
        return falg;
    }

    //考勤管理
    @Override
    public List<Attendance> attendancesel() {
        return userDao.attendancesel();
    }
    @Override
    public int addattendance(String attendancename,double percentage,Date attendancetime,int deductions) {
        int falg = userDao.addattendance(attendancename,percentage,attendancetime,deductions);
        return falg;
    }
    @Override
    public int updateattendance(String attendancename,double percentage,Date attendancetime,int deductions,int id) {
        int falg = userDao.updateattendance(attendancename,percentage,attendancetime,deductions,id);
        return falg;
    }
    @Override
    public List<Attendance> updateattendancesel(int id) {
        return userDao.updateattendancesel(id);
    }
    @Override
    public int deleteattendance(int id) {
        int falg = userDao.deleteattendance(id);
        return falg;
    }

    //店铺管理
    @Override
    public List<Shop> shopsel() {
        return userDao.shopsel();
    }
    @Override
    public int addshop(String shopname,String area,String isde,String shopkeeper,String remark) {
        int falg = userDao.addshop(shopname,area,isde,shopkeeper,remark);
        return falg;
    }
    @Override
    public int updateshop(String shopname,String area,String isde,String shopkeeper,String remark,int id) {
        int falg = userDao.updateshop(shopname,area,isde,shopkeeper,remark,id);
        return falg;
    }
    @Override
    public List<Shop> updateshopsel(int id) {
        return userDao.updateshopsel(id);
    }
    @Override
    public int deleteshop(int id) {
        int falg = userDao.deleteshop(id);
        return falg;
    }

    //员工级别项管理
    @Override
    public List<Grade> gradesel() {
        return userDao.gradesel();
    }
    @Override
    public int addgrade(String gradename) {
        int falg = userDao.addgrade(gradename);
        return falg;
    }
    @Override
    public int updategrade(String gradename,int id) {
        int falg = userDao.updategrade(gradename,id);
        return falg;
    }
    @Override
    public List<Grade> updategradesel(int id) {
        return userDao.updategradesel(id);
    }
    @Override
    public int deletegrade(int id) {
        int falg = userDao.deletegrade(id);
        return falg;
    }

    //员工管理
    @Override
    public List<Test> sel_message() {
        return userDao.sel_message();
    }
    @Override
    public int addemployee(String employeename,String sex,String state,String location,String number,String email) {
        int falg = userDao.addemployee(employeename,sex,state,location,number,email);
        return falg;
    }
    public int addroles(String rolename){
        int falg = userDao.addroles(rolename);
        return falg;
    }
    public int addshops(String shopname){
        int falg = userDao.addshops(shopname);
        return falg;
    }
    public int addgrades(String gradename){
        int falg = userDao.addgrades(gradename);
        return falg;
    }
    public int adddepartments(String departmentname){
        int falg = userDao.adddepartments(departmentname);
        return falg;
    }
    public int adduser(String jobnumber,int password){
        int falg = userDao.adduser(jobnumber,password);
        return falg;
    }

    @Override
    public int addhairsalarys(int states) {
        int falg = userDao.addhairsalarys(states);
        return falg;
    }

    @Override
    public int updateemployee(String employeename,String sex,String state,String location,String number,String email,int id) {
        int falg = userDao.updateemployee(employeename,sex,state,location,number,email,id);
        return falg;
    }
    public int updateroles(String rolename,int id){
        int falg = userDao.updateroles(rolename,id);
        return falg;
    }
    public int updateshops(String shopname,int id){
        int falg = userDao.updateshops(shopname,id);
        return falg;
    }
    public int updategrades(String gradename,int id){
        int falg = userDao.updategrades(gradename,id);
        return falg;
    }
    public int updatedepartments(String departmentname,int id){
        int falg = userDao.updatedepartments(departmentname,id);
        return falg;
    }
    public int updateuser(String jobnumber,int password,int id){
        int falg = userDao.updateuser(jobnumber,password,id);
        return falg;
    }
    @Override
    public List<Test> updateemployeesel(int id) {
        return userDao.updateemployeesel(id);
    }
    @Override
    public List<User> updateemployeesels(int id) {
        return userDao.updateemployeesels(id);
    }

    @Override
    public int deleteemployee(int id) {
        int falg = userDao.deleteemployee(id);
        return falg;
    }
    @Override
    public int deleteshops(int id) {
        int falg = userDao.deleteshops(id);
        return falg;
    }
    @Override
    public int deleteroles(int id) {
        int falg = userDao.deleteroles(id);
        return falg;
    }
    @Override
    public int deletedepartments(int id) {
        int falg = userDao.deletedepartments(id);
        return falg;
    }
    @Override
    public int deletegrades(int id) {
        int falg = userDao.deletegrades(id);
        return falg;
    }
    @Override
    public int deleteuser(int id) {
        int falg = userDao.deleteuser(id);
        return falg;
    }

    //角色管理
    @Override
    public List<Role> rolesel(){
        return userDao.rolesel();
    }
    @Override
    public int addrole(String rolename){
        int falg = userDao.addrole(rolename);
        return falg;
    }
    @Override
    public int updaterole(String rolename,int id){
        int falg = userDao.updaterole(rolename,id);
        return falg;
    }
    @Override
    public List<Role> updaterolesel(int id) {
        return userDao.updaterolesel(id);
    }
    @Override
    public int deleterole(int id) {
        int falg = userDao.deleterole(id);
        return falg;
    }

    //权限设置
    @Override
    public List<Testone> permissionssel(){
        return userDao.permissionssel();
    }
    @Override
    public int updatepermissions(int type,int id){
        int falg = userDao.updatepermissions(type,id);
        return falg;
    }
    @Override
    public List<Testone> updatepermissionssel(int id) {
        return userDao.updatepermissionssel(id);
    }

    //员工补贴记录
    @Override
    public List<Testtow> subsidyrecordingsel() {
        return userDao.subsidyrecordingsel();
    }

    //员工奖金记录
    @Override
    public List<Testthree> prizerecordingsel() {
        return userDao.prizerecordingsel();
    }

    //员工考勤记录
    @Override
    public List<Testfour> attendancerecordingsel() {
        return userDao.attendancerecordingsel();
    }

    @Override
    public List<Testfive> salarysel() {
        return userDao.salarysel();
    }

    //员工发工资管理
    @Override
    public List<Testsix> hairsalarysel() {
        return userDao.hairsalarysel();
    }

    @Override
    public int addsalary(double foundationsalary,Date salarytime,int id){
        int falg = userDao.addsalary(foundationsalary,salarytime,id);
        return falg;
    }

    @Override
    public List<Testsix> updatehairsalarysel(int id) {
        return userDao.updatehairsalarysel(id);
    }

    @Override
    public int updatesalarys(double foundationsalary, Date salarytime, int id) {
        int falg = userDao.updatesalarys(foundationsalary,salarytime,id);
        return falg;
    }

    @Override
    public int updatehairsalarystate(int id) {
        int falg = userDao.updatehairsalarystate(id);
        return falg;
    }

    @Override
    public List<Testfive> payrolltablesel(String salarytime) {
        return userDao.payrolltablesel(salarytime);
    }
}

