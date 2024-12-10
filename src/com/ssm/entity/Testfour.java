package com.ssm.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Testfour {
    private int id;
    private String employeename;
    private String jobnumber;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date attendancetime;
    private String attendancename;
    private double percentage;
    private int deductions;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEmployeename() {
        return employeename;
    }

    public void setEmployeename(String employeename) {
        this.employeename = employeename;
    }

    public String getJobnumber() {
        return jobnumber;
    }

    public void setJobnumber(String jobnumber) {
        this.jobnumber = jobnumber;
    }

    public Date getAttendancetime() {
        return attendancetime;
    }

    public void setAttendancetime(Date attendancetime) {
        this.attendancetime = attendancetime;
    }

    public String getAttendancename() {
        return attendancename;
    }

    public void setAttendancename(String attendancename) {
        this.attendancename = attendancename;
    }

    public double getPercentage() {
        return percentage;
    }

    public void setPercentage(double percentage) {
        this.percentage = percentage;
    }

    public int getDeductions() {
        return deductions;
    }

    public void setDeductions(int deductions) {
        this.deductions = deductions;
    }
}
