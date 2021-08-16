package com.example.demo.MODEL;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "DISTANCE")
public class Distance implements Serializable {
	@Id
	@Column(name = "ID_DISTANCE")
	private int idDistance;
	@Column(name = "ID_ROUTE")
	private int idRoute;
	@Column(name = "CODE_STATION")
	private int codeStation;

	
	
	public Distance() {
		super();
	}

	public Distance(int idDistance, int idRoute, int codeStation) {
		super();
		this.idDistance = idDistance;
		this.idRoute = idRoute;
		this.codeStation = codeStation;
	}

	public int getIdDistance() {
		return idDistance;
	}

	public void setIdDistance(int idDistance) {
		this.idDistance = idDistance;
	}

	public int getIdRoute() {
		return idRoute;
	}

	public void setIdRoute(int idRoute) {
		this.idRoute = idRoute;
	}

	public int getCodeStation() {
		return codeStation;
	}

	public void setCodeStation(int codeStation) {
		this.codeStation = codeStation;
	}

	@Override
	public String toString() {
		return "Distance [idDistance=" + idDistance + ", idRoute=" + idRoute + ", codeStation=" + codeStation + "]";
	}

}
