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
		TrainMove R1 = new TrainMove("T1");
        R1.start();
        TrainMove R2 = new TrainMove("T2");
        R2.start();
	}

}
