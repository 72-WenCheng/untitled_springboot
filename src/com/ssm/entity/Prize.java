package com.ssm.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Prize {
    private int id;
    private String prizename;
    private double prize;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date prizetime;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public Date getPrizetime() {
        return prizetime;
    }

    public void setPrizetime(Date prizetime) {
        this.prizetime = prizetime;
    }
}
