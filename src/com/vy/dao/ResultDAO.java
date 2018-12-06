package com.vy.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.vy.model.Result;

public class ResultDAO {
	public ResultDAO () {}
	
	public static int add(Result result) {
		int status = 0;
		try {
			Connection con = DBconnect.getConnection();
			String query = "INSERT INTO RESULTS VALUES (null,?,?,?,?,?,?);";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setInt(1, result.getExamineeId());
			ps.setInt(1, result.getTestId());
			ps.setString(1, result.getTimeDone());
			ps.setString(1, result.getTimeStart());
			ps.setString(1, result.getTimeEnd());
			ps.setInt(1, result.getScores());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}
}
