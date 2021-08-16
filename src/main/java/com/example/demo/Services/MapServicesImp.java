package com.example.demo.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.DAO.TrainMoveReponsitory;
import com.example.demo.DAO.TrainMove2Reponsitory;
import com.example.demo.MODEL.Moved;
import com.example.demo.MODEL.Moved2;
@Service
public class MapServicesImp implements MapServices {
	private final TrainMoveReponsitory trainMoveRepository;
	private final TrainMove2Reponsitory trainMove2Repository;
	@Autowired
	public MapServicesImp(TrainMoveReponsitory trainMoveRepository,TrainMove2Reponsitory trainMove2Repository) {
		this.trainMoveRepository = trainMoveRepository;
		this.trainMove2Repository = trainMove2Repository;
	}

	@Override
	public List<Moved> getListMove() {
		// TODO Auto-generated method stub
		return trainMoveRepository.getListMove();
	}
	@Override
	public List<Moved2> getListMove2() {
		// TODO Auto-generated method stub
		return trainMove2Repository.getListMove2();
	}
}
