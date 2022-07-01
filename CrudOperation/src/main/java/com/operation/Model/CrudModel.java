package com.operation.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class CrudModel {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String Firstname;
	private String Lastname;
	private String Vehicle;
	private int age;
	
	public CrudModel() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CrudModel(int id, String firstname, String lastname, String vehicle, int age) {
		super();
		this.id = id;
		Firstname = firstname;
		Lastname = lastname;
		Vehicle = vehicle;
		this.age = age;
	}

	public CrudModel(String firstname, String lastname, String vehicle, int age) {
		super();
		Firstname = firstname;
		Lastname = lastname;
		Vehicle = vehicle;
		this.age = age;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstname() {
		return Firstname;
	}

	public void setFirstname(String firstname) {
		Firstname = firstname;
	}

	public String getLastname() {
		return Lastname;
	}

	public void setLastname(String lastname) {
		Lastname = lastname;
	}

	public String getVehicle() {
		return Vehicle;
	}

	public void setVehicle(String vehicle) {
		Vehicle = vehicle;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	
	
}
