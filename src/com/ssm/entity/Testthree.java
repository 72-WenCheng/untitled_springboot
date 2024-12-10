package com.ssm.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Testthree {
    private int id;
    private String employeename;
    private String jobnumber;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date prizetime;
    private String prizename;
    private double prize;

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

    public Date getPrizetime() {
        return prizetime;
    }

    public void setPrizetime(Date prizetime) {
        this.prizetime = prizetime;
    }

    public String getPrizename() {
        return prizename;
    }

    public void setPrizename(String prizename) {
        this.prizename = prizename;
    }

    public double getPrize() {
        return prize;
    }

    public void setPrize(double prize) {
        this.prize = prize;
    }
}
