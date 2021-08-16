package com.example.demo.TrainController;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.example.demo.MODEL.Distance;



public class DistanceOptions implements DBInfor{
	public ArrayList<Distance>getdDistance(){
		ArrayList<Distance> list =new ArrayList<Distance>();
		try {
			Class.forName(driverName);
			Connection con = DriverManager.getConnection(dbURL, userDB, passDB);
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("Select * from DISTANCE");
			while (rs.next()) {
			Distance d = new Distance();
				d.setIdDistance(rs.getInt(1));
				d.setIdRoute(rs.getInt(2));
				d.setCodeStation(rs.getInt(3));
				list.add(d);
			}
			con.close();
			return list;
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}

	}
}
