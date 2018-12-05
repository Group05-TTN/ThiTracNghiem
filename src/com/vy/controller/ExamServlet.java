package com.vy.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.vy.dao.AnswerDAO;
import com.vy.dao.QuizDAO;
import com.vy.dao.TestDAO;
import com.vy.dao.Test_SectionDAO;
import com.vy.model.Answer;
import com.vy.model.Quiz;
import com.vy.model.Test;
import com.vy.model.Test_Section;

@WebServlet("/exam")
public class ExamServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		ArrayList<String> errors = new ArrayList<String>();
		if(request.getParameter("command") != null) {	
			switch(request.getParameter("command")) {
			case "do":
				int testId = Integer.parseInt(request.getParameter("id"));
				Test test = TestDAO.getTestById(testId);
				List<Test_Section> listSection = Test_SectionDAO.getTestSectionsByTestId(testId);
				List<Quiz> listQuiz = new ArrayList<Quiz>();
				for(Test_Section ts : listSection) {
					List<Quiz> quizzes = QuizDAO.getQuizzesBySectionId(ts.getSectionId(), ts.getNumQuiz());
					listQuiz.addAll(quizzes);
				}
				List<Answer> listAnswer = new ArrayList<Answer>();
				for(Quiz quiz : listQuiz ) {
					listAnswer.addAll(AnswerDAO.getAnswersByQuizId(quiz.getId()));
				}
				System.out.println(listQuiz);
				System.out.println(listAnswer);
				request.setAttribute("test", test);
				request.setAttribute("listQuiz", listQuiz);
				request.setAttribute("listAnswer", listAnswer);
				request.getRequestDispatcher("exam-student.jsp").forward(request, response);
			}
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
