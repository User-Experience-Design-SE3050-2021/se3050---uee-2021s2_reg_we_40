package com.uee.uee_slt_app.models;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "users")
public class UserModel {

    @Id
    private String id;
    private String userName;
    private String name;
    private String email;
    private String dataPackage;
    private String billingDate;

    public UserModel(String id, String userName, String name, String email, String dataPackage, String billingDate) {
        this.id = id;
        this.userName = userName;
        this.name = name;
        this.email = email;
        this.dataPackage = dataPackage;
        this.billingDate = billingDate;
    }

    public String getId() {
        return id;
    }

    public String getUserName() {
        return userName;
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
}
