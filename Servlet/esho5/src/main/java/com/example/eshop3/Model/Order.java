package com.example.eshop3.Model;

import java.time.LocalDateTime;

public class Order {
    private String id;
    private LocalDateTime createdTime;
    private int grandTotal;
    private int statusId;
    private String customerId;
    private String userId;

    public Order() {
    }

    public Order(String id, LocalDateTime createdTime, int grandTotal, int statusId, String customerId) {
        this.id = id;
        this.createdTime = createdTime;
        this.grandTotal = grandTotal;
        this.statusId = statusId;
        this.customerId = customerId;
    }

    public Order(LocalDateTime createdTime, int grandTotal, int statusId, String customerId) {
        this.createdTime = createdTime;
        this.grandTotal = grandTotal;
        this.statusId = statusId;
        this.customerId = customerId;
    }


    public Order(String id, LocalDateTime createdTime, int grandTotal, int statusId, String customerId, String userId) {
        this.id = id;
        this.createdTime = createdTime;
        this.grandTotal = grandTotal;
        this.statusId = statusId;
        this.customerId = customerId;
        this.userId = userId;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public LocalDateTime getCreatedTime() {
        return createdTime;
    }

    public void setCreatedTime(LocalDateTime createdTime) {
        this.createdTime = createdTime;
    }

    public int getGrandTotal() {
        return grandTotal;
    }

    public void setGrandTotal(int grandTotal) {
        this.grandTotal = grandTotal;
    }

    public int getStatusId() {
        return statusId;
    }

    public void setStatusId(int statusId) {
        this.statusId = statusId;
    }

    public String getCustomerId() {
        return customerId;
    }

    public void setCustomerId(String customerId) {
        this.customerId = customerId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }
}
