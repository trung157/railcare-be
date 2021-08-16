package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;


import com.example.demo.TrainController.StationsOptions;
import com.example.demo.TrainController.TrainMove;



@SpringBootApplication
public class TrainDemoApplication  {

	public static void main(String[] args) {
		SpringApplication.run(TrainDemoApplication.class, args);
		TrainMove t = new TrainMove();
		t.trainMoveSchedule("T2");
//		t.trainMove2Schedule("T1");
	}

}
