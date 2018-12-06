package com.vy.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.vy.dao.AnswerDAO;
import com.vy.dao.QuizDAO;
import com.vy.dao.ResultDAO;
import com.vy.dao.TestDAO;
import com.vy.dao.Test_SectionDAO;
import com.vy.model.Answer;
import com.vy.model.Quiz;
import com.vy.model.Result;
import com.vy.model.Test;
import com.vy.model.Test_Section;

@WebServlet("/exam")
public class ExamServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	List<Quiz> listQuiz = new ArrayList<Quiz>();
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
	Date timeStart;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		ArrayList<String> errors = new ArrayList<String>();
		if(request.getParameter("command") != null) {	
			switch(request.getParameter("command")) {
			case "do":
				int testId = Integer.parseInt(request.getParameter("id"));
				Test test = TestDAO.getTestById(testId);
				List<Test_Section> listSection = Test_SectionDAO.getTestSectionsByTestId(testId);
				for(Test_Section ts : listSection) {
					List<Quiz> quizzes = QuizDAO.getQuizzesBySectionId(ts.getSectionId(), ts.getNumQuiz());
					listQuiz.addAll(quizzes);
				}
				List<Answer> listAnswer = new ArrayList<Answer>();
				for(Quiz quiz : listQuiz ) {
					listAnswer.addAll(AnswerDAO.getAnswersByQuizId(quiz.getId()));
				}
				timeStart = new Date();
				request.setAttribute("test", test);
				request.setAttribute("listQuiz", listQuiz);
				request.setAttribute("listAnswer", listAnswer);
				request.getRequestDispatcher("exam-student.jsp").forward(request, response);
				break;
				
			case "result":
				int id = Integer.parseInt(request.getParameter("id"));
				String res = request.getParameter("optradio"+id);
				System.out.println("ressss "+res);
				break;
			}
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		ArrayList<String> errors = new ArrayList<String>();
		Date timeEnd = new Date();
		Date timeDone = timeStart = timeEnd;
		// Cham diem
		int testId = Integer.parseInt(request.getParameter("id"));
		int scores = 0;
		for(Quiz quiz : listQuiz) {
			int answerId = Integer.parseInt(request.getParameter("optradio"+quiz.getId()));
			if(AnswerDAO.getAnswerById(answerId).getStatus()) {
				System.out.println("Cau dung");
				scores++;
			}else 
				System.out.println("Cau sai");
		}
		Result result = new Result();
		result.setExamineeId(1);
		result.setTestId(testId);
		result.setTimeDone(formatter.format(timeDone));
		result.setTimeStart(formatter.format(timeStart));
		result.setTimeEnd(formatter.format(timeEnd));
		result.setScores(scores);
		System.out.println(result.getExamineeId());
		System.out.println(result.getId());
		System.out.println(result.getTimeDone());
		System.out.println(result.getTimeStart());
		System.out.println(result.getTimeEnd());
		System.out.println(result.getScores());
		//ResultDAO.add(result);
	}

}
