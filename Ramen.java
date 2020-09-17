package com.bean;

public class Ramen {

	private int ramen_Id;
	private String shop_Name;
	private String city;
	private String broth;
	private int rating;
	
	public int getRamen_Id() {
		return ramen_Id;
	}
	public void setRamen_Id(int ramen_Id) {
		this.ramen_Id = ramen_Id;
	}
	public String getShop_Name() {
		return shop_Name;
	}
	public void setShop_Name(String shop_Name) {
		this.shop_Name = shop_Name;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getBroth() {
		return broth;
	}
	public void setBroth(String broth) {
		this.broth = broth;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	
	public String toString() {
		return "Ramen database: [" + ramen_Id + ", " + shop_Name + ", " + broth + ", " + rating + "]";
	}

}
