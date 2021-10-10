package com.uee.uee_slt_app.models;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "users")
public class UserModel {

    @Id
    private String id;
    private String userName;
    private String password;
    private String name;
    private String email;
    private String contactNo;
    private String dataPackage;
    private String billingDate;
    private String  braodbandPassword;

    public UserModel(String id, String userName, String password, String name, String email, String contactNo, String dataPackage, String billingDate, String braodbandPassword) {
        this.id = id;
        this.userName = userName;
        this.password = password;
        this.name = name;
        this.email = email;
        this.contactNo = contactNo;
        this.dataPackage = dataPackage;
        this.billingDate = billingDate;
        this.braodbandPassword = braodbandPassword;
    }

    public String getId() {
        return id;
    }

    public String getUserName() {
        return userName;
    }

    public String getPassword() {
        return password;
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getDataPackage() {
        return dataPackage;
    }

    public String getBillingDate() {
        return billingDate;
    }
    public String getBraodbandPassword() {
        return braodbandPassword;
    }

    public String getContactNo() {
        return contactNo;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setDataPackage(String dataPackage) {
        this.dataPackage = dataPackage;
    }

    public void setBillingDate(String billingDate) {
        this.billingDate = billingDate;
    }

    public void setBraodbandPassword(String braodbandPassword) {
        this.braodbandPassword = braodbandPassword;
    }

    public void setContactNo(String contactNo) {
        this.contactNo = contactNo;
    }
}
