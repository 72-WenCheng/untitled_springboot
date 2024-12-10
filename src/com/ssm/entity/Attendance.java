package com.ssm.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Attendance {
    private int id;
    private String attendancename;
    private double percentage;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date attendancetime;
    private int deductions;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public Date getAttendancetime() {
        return attendancetime;
    }

    public void setAttendancetime(Date attendancetime) {
        this.attendancetime = attendancetime;
    }

    public int getDeductions() {
        return deductions;
    }

    public void setDeductions(int deductions) {
        this.deductions = deductions;
    }
}
