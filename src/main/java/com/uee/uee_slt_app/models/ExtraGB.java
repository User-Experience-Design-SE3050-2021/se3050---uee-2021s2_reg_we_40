package com.uee.uee_slt_app.models;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "extraGb")
public class ExtraGB {
	@Id
	private String id;
	private double privePerGb;
	private int gbAmount;
	private double price;
	
	public ExtraGB() {
	}

	public ExtraGB(String id, double privePerGb, int gbAmount, double price) {
		super();
		this.id = id;
		this.privePerGb = privePerGb;
		this.gbAmount = gbAmount;
		this.price = price;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public double getPrivePerGb() {
		return privePerGb;
	}

	public void setPrivePerGb(double privePerGb) {
		this.privePerGb = privePerGb;
	}

	public int getGbAmount() {
		return gbAmount;
	}

	public void setGbAmount(int gbAmount) {
		this.gbAmount = gbAmount;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	
	@Override
	public String toString() {
		return "ExtraGB [id=" + id + ", privePerGb=" + privePerGb + ", gbAmount=" + gbAmount + ", price=" + price + "]";
	}
	
	
	
	
	
	
	
}


