package com.uee.uee_slt_app.models;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import java.util.Date;

@Document(collection = "dataUsage")
public class DataUsageModel {
    @Id
    private String id;
    private Date date;
    private int total;
    private int downloadData;
    private int uploadData;
    private int standardData;
    private int freeData;

    public DataUsageModel(String id, Date date, int total, int downloadData, int uploadData, int standardData, int freeData) {
        this.id = id;
        this.date = date;
        this.total = total;
        this.downloadData = downloadData;
        this.uploadData = uploadData;
        this.standardData = standardData;
        this.freeData = freeData;
    }

    public String getId() {
        return id;
    }

    public Date getDate() {
        return date;
    }

    public int getTotal() {
        return total;
    }

    public int getDownloadData() {
        return downloadData;
    }

    public int getUploadData() {
        return uploadData;
    }

    public int getStandardData() {
        return standardData;
    }

    public int getFreeData() {
        return freeData;
    }
}
