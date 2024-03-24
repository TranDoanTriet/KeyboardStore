package com.keyboard.entity;

public class Keyboard {
	private int idKeyboard;
	private String keyboardName;
	private String manufacturer;
	private double price;
	private String type;
	private double amount;
	private String image;
	public int getIdKeyboard() {
		return idKeyboard;
	}
	public void setIdKeyboard(int idKeyboard) {
		this.idKeyboard = idKeyboard;
	}
	public String getKeyboardName() {
		return keyboardName;
	}
	public void setKeyboardName(String keyboardName) {
		this.keyboardName = keyboardName;
	}
	public String getManufacturer() {
		return manufacturer;
	}
	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double d) {
		this.amount = d;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public Keyboard(String keyboardName, String manufacturer, double price, String type, double amount,
			String image) {
		super();
		this.keyboardName = keyboardName;
		this.manufacturer = manufacturer;
		this.price = price;
		this.type = type;
		this.amount = (int) amount;
		this.image = image;
	}
	
	public Keyboard() {
		// TODO Auto-generated constructor stub
	}
	
}
