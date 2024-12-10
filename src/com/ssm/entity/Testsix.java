package com.ssm.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Testsix {
    private int id;
    private String jobnumber;
    private String employeename;
    private double foundationsalary;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date salarytime;
    private int states;

    public String getEmployeename() {
        return employeename;
    }

    public void setEmployeename(String employeename) {
        this.employeename = employeename;
    }

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

    public double getFoundationsalary() {
        return foundationsalary;
    }

    public void setFoundationsalary(double foundationsalary) {
        this.foundationsalary = foundationsalary;
    }

    public Date getSalarytime() {
        return salarytime;
    }

    public void setSalarytime(Date salarytime) {
        this.salarytime = salarytime;
    }

    public int getStates() {
        return states;
    }

    public void setStates(int states) {
        this.states = states;
    }
}
