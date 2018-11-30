package com.vy.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.vy.dao.DBconnect;
import com.vy.dao.ExamineeDAO;
import com.vy.model.Examinee;

@WebServlet("/examinee-manager")
public class ExamineeManagerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("dashbroadContent", "examinee-manager");
		List<Examinee> listExaminee = ExamineeDAO.getAllRecords();
		request.setAttribute("listExaminee", listExaminee);
		RequestDispatcher rd = request.getRequestDispatcher("list-examinee.jsp");
		rd.forward(request, response);
		rd = request.getRequestDispatcher("test-dashboard.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
