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

	public Stations() {
		super();
	}

	public Stations(int codeStation, String stationName, double lat, double lng, int stationType, String ranges) {
		super();
		this.codeStation = codeStation;
		this.stationName = stationName;
		this.lat = lat;
		this.lng = lng;
		this.stationType = stationType;
		this.ranges = ranges;
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
				+ ", stationType=" + stationType + ", ranges=" + ranges + "]";
	}

}
