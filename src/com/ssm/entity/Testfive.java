package com.ssm.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Testfive {
    private int id;
    private String jobnumber;
    private String employeename;
    private String shopname;
    private String gradename;
    private double foundationsalary;
    private double subsidynumber;
    private double prize;
    private int deductions;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date salarytime;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getJobnumber() {
        return jobnumber;
    }

    public void setJobnumber(String jobnumber) {
        this.jobnumber = jobnumber;
    }

    public String getEmployeename() {
        return employeename;
    }

    public void setEmployeename(String employeename) {
        this.employeename = employeename;
    }

    public String getShopname() {
        return shopname;
    }

    public void setShopname(String shopname) {
        this.shopname = shopname;
    }

    public String getGradename() {
        return gradename;
    }

    public void setGradename(String gradename) {
        this.gradename = gradename;
    }

    public double getFoundationsalary() {
        return foundationsalary;
    }

    public void setFoundationsalary(double foundationsalary) {
        this.foundationsalary = foundationsalary;
    }

    public double getSubsidynumber() {
        return subsidynumber;
    }

    public void setSubsidynumber(double subsidynumber) {
        this.subsidynumber = subsidynumber;
    }

    public double getPrize() {
        return prize;
    }

    public void setPrize(double prize) {
        this.prize = prize;
    }

    public int getDeductions() {
        return deductions;
    }

    public void setDeductions(int deductions) {
        this.deductions = deductions;
    }

    public Date getSalarytime() {
        return salarytime;
    }

    public void setSalarytime(Date salarytime) {
        this.salarytime = salarytime;
    }

}
