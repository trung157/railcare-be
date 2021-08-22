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
	@Column(name = "Image_Location")
	private String imageLocation;
	@Column(name = "Description")
	private String description;
	@Column(name = "Area")
	private String area;
	@Column(name = "Height")
	private String height;
	@Column(name = "Region")
	private String region;
	@Column(name = "Population")
	private String population;
	public Moved() {
		super();
	}

	public Moved(int idMoved, String nameStation, double lat, double lng, String ranges, int idOrder,
			String imageLocation, String description, String area, String height, String region, String population) {
		super();
		this.idMoved = idMoved;
		this.nameStation = nameStation;
		this.lat = lat;
		this.lng = lng;
		this.ranges = ranges;
		this.idOrder = idOrder;
		this.imageLocation = imageLocation;
		this.description = description;
		this.area = area;
		this.height = height;
		this.region = region;
		this.population = population;
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

	public String getImageLocation() {
		return imageLocation;
	}

	public void setImageLocation(String imageLocation) {
		this.imageLocation = imageLocation;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getHeight() {
		return height;
	}

	public void setHeight(String height) {
		this.height = height;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public String getPopulation() {
		return population;
	}

	public void setPopulation(String population) {
		this.population = population;
	}

	@Override
	public String toString() {
		return "Moved [idMoved=" + idMoved + ", nameStation=" + nameStation + ", lat=" + lat + ", lng=" + lng
				+ ", ranges=" + ranges + ", idOrder=" + idOrder + ", imageLocation=" + imageLocation + ", description="
				+ description + ", area=" + area + ", height=" + height + ", region=" + region + ", population="
				+ population + "]";
	}





}
