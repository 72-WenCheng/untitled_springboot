package com.ssm.entity;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
public class Testtow {
    private int id;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date subsidytime;
    private String employeename;
    private String jobnumber;
    private String subsidyname;
    private double subsidynumber;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getSubsidytime() {
        return subsidytime;
    }

    public void setSubsidytime(Date subsidytime) {
        this.subsidytime = subsidytime;
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

    public String getSubsidyname() {
        return subsidyname;
    }

    public void setSubsidyname(String subsidyname) {
        this.subsidyname = subsidyname;
    }

    public double getSubsidynumber() {
        return subsidynumber;
    }

    public void setSubsidynumber(double subsidynumber) {
        this.subsidynumber = subsidynumber;
    }
}
