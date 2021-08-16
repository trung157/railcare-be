package com.example.demo.MODEL;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "TRAIN")
public class Train implements Serializable {
	@Id
	@Column(name = "CODE_TRAIN", length = 2)
	private String codeTrain;
	@Column(name = "TRAIN_TYPE")
	private int trainType;

	public Train() {
		super();
	}

	public Train(String codeTrain, int trainType) {
		super();
		this.codeTrain = codeTrain;
		this.trainType = trainType;
	}

	public String getCodeTrain() {
		return codeTrain;
	}

	public void setCodeTrain(String codeTrain) {
		this.codeTrain = codeTrain;
	}

	public int getTrainType() {
		return trainType;
	}

	public void setTrainType(int trainType) {
		this.trainType = trainType;
	}

	@Override
	public String toString() {
		return "Train [codeTrain=" + codeTrain + ", trainType=" + trainType + "]";
	}

}
