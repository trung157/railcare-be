package com.example.demo.MODEL;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "[ROUTES]")
public class Routes implements Serializable {
	@Id
	@Column(name = "ID_ROUTE")
	private int idRoute;
	@Column(name = "NAME_ROUTE", length = 5)
	private String nameRoute;
	@Column(name = "DISTANCE_ROUTE")
	private float distanceRoute;

	
	
	public Routes() {
		super();
	}

	public Routes(int idRoute, String nameRoute, float distanceRoute) {
		super();
		this.idRoute = idRoute;
		this.nameRoute = nameRoute;
		this.distanceRoute = distanceRoute;
	}

	public int getIdRoute() {
		return idRoute;
	}

	public void setIdRoute(int idRoute) {
		this.idRoute = idRoute;
	}

	public String getNameRoute() {
		return nameRoute;
	}

	public void setNameRoute(String nameRoute) {
		this.nameRoute = nameRoute;
	}

	public float getDistanceRoute() {
		return distanceRoute;
	}

	public void setDistanceRoute(float distanceRoute) {
		this.distanceRoute = distanceRoute;
	}

	@Override
	public String toString() {
		return "Routes [idRoute=" + idRoute + ", nameRoute=" + nameRoute + ", distanceRoute=" + distanceRoute + "]";
	}

}
