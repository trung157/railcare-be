package com.example.demo.TrainController;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.example.demo.MODEL.Routes;

public class RoutesOptions implements DBInfor {
	public ArrayList<Routes> getRoutes() {
		ArrayList<Routes> list = new ArrayList<Routes>();
		try {
			Class.forName(driverName);
			Connection con = DriverManager.getConnection(dbURL, userDB, passDB);
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("Select * from [ROUTES]");
			while (rs.next()) {
				Routes r = new Routes();
				r.setIdRoute(rs.getInt(1));
				r.setNameRoute(rs.getString(2));
				r.setDistanceRoute(rs.getFloat(3));
				list.add(r);
			}
			con.close();
			return list;
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}

	}
}
