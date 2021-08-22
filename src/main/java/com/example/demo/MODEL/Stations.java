package com.example.demo.MODEL;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "STATIONS")
public class Stations implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "CODE_STATION")
	private int codeStation;
	@Column(length = 20, name = "STATION_NAME")
	private String stationName;
	@Column(name = "LAT")
	private double lat;
	@Column(name = "LNG")
	private double lng;
	@Column(name = "STATION_TYPE")
	private int stationType;
	@Column(name = "RANGES")
	private String ranges;
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
	@Column(name = "RANGES2")
	private String ranges2;
	public Stations() {
		super();
	}


	public Stations(int codeStation, String stationName, double lat, double lng, int stationType, String ranges,
			String imageLocation, String description, String area, String height, String region, String population,
			String ranges2) {
		super();
		this.codeStation = codeStation;
		this.stationName = stationName;
		this.lat = lat;
		this.lng = lng;
		this.stationType = stationType;
		this.ranges = ranges;
		this.imageLocation = imageLocation;
		this.description = description;
		this.area = area;
		this.height = height;
		this.region = region;
		this.population = population;
		this.ranges2 = ranges2;
	}


	public String getRanges2() {
		return ranges2;
	}

	public void setRanges2(String ranges2) {
		this.ranges2 = ranges2;
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


	public int getCodeStation() {
		return codeStation;
	}

	public void setCodeStation(int codeStation) {
		this.codeStation = codeStation;
	}

	public String getStationName() {
		return stationName;
	}

	public void setStationName(String stationName) {
		this.stationName = stationName;
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

	public int getStationType() {
		return stationType;
	}

	public void setStationType(int stationType) {
		this.stationType = stationType;
	}

	public String getRanges() {
		return ranges;
	}

	public void setRanges(String ranges) {
		this.ranges = ranges;
	}

	@Override
	public String toString() {
		return "Stations [codeStation=" + codeStation + ", stationName=" + stationName + ", lat=" + lat + ", lng=" + lng
				+ ", stationType=" + stationType + ", ranges=" + ranges + ", imageLocation=" + imageLocation
				+ ", description=" + description + ", area=" + area + ", height=" + height + ", region=" + region
				+ ", population=" + population + ", ranges2=" + ranges2 + "]";
	}

	

	

}
