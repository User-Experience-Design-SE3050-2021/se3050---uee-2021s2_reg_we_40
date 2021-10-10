package com.uee.uee_slt_app.models;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "detailData")
public class DetailOfDataModel {

    @Id
    private  String id;
    private String label;
    private int value;
    private String percentage;

    public DetailOfDataModel(String id, String label, int value, String percentage) {
        this.id = id;
        this.label = label;
        this.value = value;
        this.percentage = percentage;
    }

    public String getId() {
        return id;
    }

    public String getLabel() {
        return label;
    }

    public int getValue() {
        return value;
    }

    public String getPercentage() {
        return percentage;
    }
}
