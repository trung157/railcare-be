package com.example.demo.TrainController;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.example.demo.MODEL.Train;



public class TrainOptions implements DBInfor {
	public ArrayList<Train> getTrain() {
		ArrayList<Train> list = new ArrayList<Train>();
		try {
			Class.forName(driverName);
			Connection con = DriverManager.getConnection(dbURL, userDB, passDB);
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("Select * from TRAINS");
			while (rs.next()) {
			Train t = new Train();
				t.setCodeTrain(rs.getString(1));
				t.setTrainType(rs.getInt(2));
				list.add(t);
			}
			con.close();
			return list;
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
	}
}
