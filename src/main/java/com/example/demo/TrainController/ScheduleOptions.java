package com.example.demo.TrainController;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.example.demo.MODEL.Schedule;

public class ScheduleOptions implements DBInfor {
	public ArrayList<Schedule> getSchedule() {
		ArrayList<Schedule> list = new ArrayList<Schedule>();
		try {
			Class.forName(driverName);
			Connection con = DriverManager.getConnection(dbURL, userDB, passDB);
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("Select * from SCHEDULE");
			while (rs.next()) {
				Schedule s = new Schedule();
				s.setIdSchedule(rs.getInt(1));
				s.setIdRoute(rs.getInt(2));
				s.setCodeTrain(rs.getString(3));
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
