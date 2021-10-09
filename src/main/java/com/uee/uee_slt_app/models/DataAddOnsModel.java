package com.uee.uee_slt_app.models;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "dataAddOns")
public class DataAddOnsModel {

	@Id
	private String id;
	private String topic;
	private String subTopic;
	private String description;
	private String gbAmount;
	private String price;	
	
	public DataAddOnsModel() {
		super();
		// TODO Auto-generated constructor stub
	}

	public DataAddOnsModel(String id, String topic, String subTopic, String description, String gbAmount,
			String price) {
		super();
		this.id = id;
		this.topic = topic;
		this.subTopic = subTopic;
		this.description = description;
		this.gbAmount = gbAmount;
		this.price = price;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTopic() {
		return topic;
	}

	public void setTopic(String topic) {
		this.topic = topic;
	}

	public String getSubTopic() {
		return subTopic;
	}

	public void setSubTopic(String subTopic) {
		this.subTopic = subTopic;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getGbAmount() {
		return gbAmount;
	}

	public void setGbAmount(String gbAmount) {
		this.gbAmount = gbAmount;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "DataAddOnsModel [id=" + id + ", topic=" + topic + ", subTopic=" + subTopic + ", description="
				+ description + ", gbAmount=" + gbAmount + ", price=" + price + "]";
	}
	
	
	
}
