package com.example.demo.TrainController;

import com.example.demo.MODEL.Distance;
import com.example.demo.MODEL.Stations;

public class TrainMove implements Runnable {
	private String codeTrain;
	private Thread t;
	public TrainMove(String name) {
		codeTrain = name;
        System.out.println("Creating " + codeTrain);
    }

	@Override
	public void run() {
		try {
			StationsOptions so = new StationsOptions();
			DistanceOptions ds = new DistanceOptions();
			MovedOptions m = new MovedOptions();
			Moved2Options m2 = new Moved2Options();

			if (codeTrain.equalsIgnoreCase("T2"))
			{
				for (int i = 0; i < so.getStation().size(); i++) {
					int stop = so.getStation().size() - 1;
					try {
						Thread.sleep(3000);
					} catch (InterruptedException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
					Stations s = so.getStation().get(i);
											
					m.addMove(s.getStationName(),s.getLat(),s.getLng(),s.getRanges(),s.getCodeStation(),s.getImageLocation(),
							s.getDescription(),s.getArea(),s.getHeight(),s.getRegion(),s.getPopulation());
					
					for (int j = 0; j < ds.getdDistance().size(); j++) {
						Distance d = ds.getdDistance().get(j);
						if (d.getIdRoute() == 2 && s.getCodeStation() == d.getCodeStation()) {
							System.err.println("Tau dang dung tai ga: " + s.getStationName());
							for (int k = 0; k <= 3; k++) {
								if (i == stop) {
									break;
								}
								try {
									Thread.sleep(3000);
								} catch (InterruptedException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								}
								System.out.println("Tau dung dc: " + k + " phut");
								if (k == 3) {
									break;
								}
							}

						}
					}
					if (i == stop) {
						System.err.println("Tau da di den ga: " + s.getStationName());
						break;
					}
					System.out.println("tau da di qua ga: " + s.getStationName());
				}
			}else if(codeTrain.equalsIgnoreCase("T1")) {
				for (int i = so.getStation().size()-1; i >0; i--) {
					int stop = so.getStation().size() + 1;
					try {
						Thread.sleep(3000);
					} catch (InterruptedException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
					Stations s = so.getStation().get(i);
											
					m2.addMove2(s.getStationName(),s.getLat(),s.getLng(),s.getRanges2(),s.getCodeStation(),s.getImageLocation(),
							s.getDescription(),s.getArea(),s.getHeight(),s.getRegion(),s.getPopulation());
					
					for (int j = ds.getdDistance().size()-1; j >0 ; j--) {
						Distance d = ds.getdDistance().get(j);
						if (d.getIdRoute() == 2 && s.getCodeStation() == d.getCodeStation()) {
							System.err.println("Tau dang dung tai ga: " + s.getStationName());
							for (int k = 0; k <= 3; k++) {
								if (i == stop) {
									break;
								}
								try {
									Thread.sleep(3000);
								} catch (InterruptedException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								}
								System.out.println("Tau dung dc: " + k + " phut");
								if (k == 3) {
									break;
								}
							}

						}

					}
					if (i == stop) {
						System.err.println("Tau da di den ga: " + s.getStationName());
						break;
					}
					System.out.println("tau da di qua ga: " + s.getStationName());
				}
			}
		} catch (Exception e) {
            System.out.println("Thread " + codeTrain + " interrupted.");
        }
        System.out.println("Thread " + codeTrain + " exiting.");
	}
	public void start() {
        System.out.println("Starting " + codeTrain);
        if (t == null) {
            t = new Thread(this, codeTrain);
            t.start();
        }
    }
}
