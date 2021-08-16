package com.example.demo.MODEL;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "SCHEDULE")
public class Schedule implements Serializable {
	@Id
	@Column(name = "ID_SCHEDULE")
	private int idSchedule;
	@Column(name = "ID_ROUTE")
	private int idRoute;
	@Column(name = "CODE_TRAIN", length = 2)
	private String codeTrain;

	public Schedule() {
		super();
	}

	public Schedule(int idSchedule, int idRoute, String codeTrain) {
		super();
		this.idSchedule = idSchedule;
		this.idRoute = idRoute;
		this.codeTrain = codeTrain;
	}

	public int getIdSchedule() {
		return idSchedule;
	}

	public void setIdSchedule(int idSchedule) {
		this.idSchedule = idSchedule;
	}

	public int getIdRoute() {
		return idRoute;
	}

	public void setIdRoute(int idRoute) {
		this.idRoute = idRoute;
	}

	public String getCodeTrain() {
		return codeTrain;
	}

	public void setCodeTrain(String codeTrain) {
		this.codeTrain = codeTrain;
	}

	@Override
	public String toString() {
		return "Schedule [idSchedule=" + idSchedule + ", idRoute=" + idRoute + ", codeTrain=" + codeTrain + "]";
	}

}
