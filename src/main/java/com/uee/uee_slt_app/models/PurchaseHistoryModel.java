package com.uee.uee_slt_app.models;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import java.util.Date;

@Document(collection = "purchaseHistory")
public class PurchaseHistoryModel {
    @Id
    private String id;
    private String packageName;
    private String dataLimit;
    private Date date;
    private String time;
    private String price;

    public PurchaseHistoryModel(String id, String packageName, String dataLimit, Date date, String time, String price) {
        this.id = id;
        this.packageName = packageName;
        this.dataLimit = dataLimit;
        this.date = date;
        this.time = time;
        this.price = price;
    }

    public String getId() {
        return id;
    }

    public String getPackageName() {
        return packageName;
    }

    public String getDataLimit() {
        return dataLimit;
    }

    public Date getDate() {
        return date;
    }

    public String getTime() {
        return time;
    }

    public String getPrice() {
        return price;
    }
}
