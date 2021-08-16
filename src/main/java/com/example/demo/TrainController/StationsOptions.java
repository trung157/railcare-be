package com.example.demo.TrainController;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.example.demo.MODEL.Stations;

public class StationsOptions implements DBInfor {
	public ArrayList<Stations> getStation() {
		ArrayList<Stations> list = new ArrayList<Stations>();
		try {
			Class.forName(driverName);
			Connection con = DriverManager.getConnection(dbURL, userDB, passDB);
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("Select * from STATIONS");
			while (rs.next()) {
				Stations s = new Stations();
				s.setCodeStation(rs.getInt(1));
				s.setStationName(rs.getString(2));
				s.setLat(rs.getDouble(3));
				s.setLng(rs.getDouble(4));
				s.setStationType(rs.getInt(5));
				s.setRanges(rs.getString(6));
				list.add(s);
			}
			con.close();
			return list;
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
	}
}
