package com.uee.uee_slt_app.models;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;



@Document(collection = "promotionModel")
public class PromotionModel {
    @Id
    private String id;
    private String title;
    private String imageUrl;
    private String description;
    private String price;

    public PromotionModel(String id, String title, String imageUrl, String description, String price) {
        this.id = id;
        this.title = title;
        this.imageUrl = imageUrl;
        this.description = description;
        this.price = price;
    }

    public String getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public String getDescription() {
        return description;
    }

    public String getPrice() {
        return price;
    }
}
