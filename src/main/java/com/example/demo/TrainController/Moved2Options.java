package com.example.demo.TrainController;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class Moved2Options implements DBInfor {
	public void addMove2(String station, double lat, double lng, String ranges,int idOrder) {
		try {
			Class.forName(driverName);
			Connection con = DriverManager.getConnection(dbURL, userDB, passDB);
			PreparedStatement stmt = con
					.prepareStatement("Insert into MOVED2 (Name_STATION,LAT,LNG,RANGES,ID_ORDER) values(?,?,?,?,?)");
			stmt.setString(1, station);
			stmt.setDouble(2, lat);
			stmt.setDouble(3, lng);
			stmt.setString(4, ranges);
			stmt.setInt(5, idOrder);
			stmt.executeUpdate();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
