package com.nhom1.model;

import java.text.NumberFormat;
import java.util.Locale;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="bill")
public class Bill {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	private String id_customer;
	private String address;
	private String road;
	private String ward;
	private String district;
	private String city;
	private String country;
	private String payment_type;
	private String quatity;
	private String id_product;
	private String ship_fee;
	private String total;
	private String date;
	
    
	
	public Bill() {
	
	}
	public Bill(String id_customer, String address, String road, String ward, String district, String city,
			String country, String payment_type, String quatity, String id_product, String ship_fee, String total,
			String date) {
		super();
		this.id_customer = id_customer;
		this.address = address;
		this.road = road;
		this.ward = ward;
		this.district = district;
		this.city = city;
		this.country = country;
		this.payment_type = payment_type;
		this.quatity = quatity;
		this.id_product = id_product;
		this.ship_fee = ship_fee;
		this.total = total;
		this.date = date;
	}
	public String getQuatity() {
		return quatity;
	}
	public void setQuatity(String quatity) {
		this.quatity = quatity;
	}
	public String getId_product() {
		return id_product;
	}
	public void setId_product(String id_product) {
		this.id_product = id_product;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getId_customer() {
		return id_customer;
	}
	public void setId_customer(String id_customer) {
		this.id_customer = id_customer;
	}
	public String getRoad() {
		return road;
	}
	public void setRoad(String road) {
		this.road = road;
	}
	public String getWard() {
		return ward;
	}
	public void setWard(String ward) {
		this.ward = ward;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getPayment_type() {
		return payment_type;
	}
	public void setPayment_type(String payment_type) {
		this.payment_type = payment_type;
	}
	public String getShip_fee() {
		return ship_fee;
	}
	public void setShip_fee(String ship_fee) {
		this.ship_fee = ship_fee;
	}
	public String getTotal() {
		return total;
	}
	public void setTotal(String total) {
		this.total = total;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
}
