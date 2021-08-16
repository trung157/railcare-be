package com.example.demo.CONTROLLER;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.MODEL.Moved;
import com.example.demo.MODEL.Moved2;
import com.example.demo.MODEL.Stations;
import com.example.demo.Services.MapServices;
@CrossOrigin(origins = "http://localhost:3000")
@RestController
@RequestMapping("/api")
public class MapController {

	private final MapServices mapServices;

	@Autowired
	public MapController(MapServices mapServices) {
		this.mapServices = mapServices;
	}
	@GetMapping("/move")
	public List<Moved> getStation() {
		return mapServices.getListMove();
	}
	@GetMapping("/move2")
	public List<Moved2> getStation2() {
		return mapServices.getListMove2();
	}

}
