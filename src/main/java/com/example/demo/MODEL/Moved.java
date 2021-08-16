package com.example.demo.MODEL;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "MOVED")
public class Moved implements Serializable {
	@Id
	@Column(name = "ID_MOVED")
	private int idMoved;
	@Column(name = "NAME_STATION", length = 50)
	private String nameStation;
	@Column(name = "LAT")
	private double lat;
	@Column(name = "LNG")
	private double lng;

	@Column(name = "RANGES")
	private String ranges;
	@Column(name = "ID_ORDER")
	private int idOrder;

	public Moved() {
		super();
	}

	public Moved(int idMoved, String nameStation, double lat, double lng, String ranges, int idOrder) {
		super();
		this.idMoved = idMoved;
		this.nameStation = nameStation;
		this.lat = lat;
		this.lng = lng;
		this.ranges = ranges;
		this.idOrder = idOrder;
	}

	public int getIdMoved() {
		return idMoved;
	}

	public void setIdMoved(int idMoved) {
		this.idMoved = idMoved;
	}

	public String getNameStation() {
		return nameStation;
	}

	public void setNameStation(String nameStation) {
		this.nameStation = nameStation;
	}

	public double getLat() {
		return lat;
	}

	public void setLat(double lat) {
		this.lat = lat;
	}

	public double getLng() {
		return lng;
	}

	public void setLng(double lng) {
		this.lng = lng;
	}

	public String getRanges() {
		return ranges;
	}

	public void setRanges(String ranges) {
		this.ranges = ranges;
	}

	public int getIdOrder() {
		return idOrder;
	}

	public void setIdOrder(int idOrder) {
		this.idOrder = idOrder;
	}

	@Override
	public String toString() {
		return "Moved [idMoved=" + idMoved + ", nameStation=" + nameStation + ", lat=" + lat + ", lng=" + lng
				+ ", ranges=" + ranges + ", idOrder=" + idOrder + "]";
	}

}
