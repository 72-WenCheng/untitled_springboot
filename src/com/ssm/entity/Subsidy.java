package com.ssm.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Subsidy {
    private int id;
    private String subsidyname;
    private double subsidynumber;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date subsidytime;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public Date getSubsidytime() {
        return subsidytime;
    }

    public void setSubsidytime(Date subsidytime) {
        this.subsidytime = subsidytime;
    }
}
