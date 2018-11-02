<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="header.jsp"></jsp:include>

</head>
<body>
	<% String dashbroadContent = null;
		dashbroadContent = (String)request.getAttribute("dashbroadContent");%>
	<div class="col-md-3 mh-dashbroad">
		<div class="list-group nav">
			<% if(dashbroadContent.equals("question-manager")){ %>
			<a href="/ThiTracNghiem/question-manager" class="list-group-item list-group-item-action active">
				Quản lý câu hỏi
			</a>
			<% } else{ %>
			<a href="/ThiTracNghiem/question-manager" class="list-group-item list-group-item-action">
				Quản lý câu hỏi
			</a>
			<% } %>
			<% if(dashbroadContent.equals("test-manager")){ %>
			<a href="/ThiTracNghiem/test-manager" class="list-group-item list-group-item-action active">
				Quản lý đề thi
			</a>
			<% } else{ %>
			<a href="/ThiTracNghiem/test-manager" class="list-group-item list-group-item-action">
				Quản lý đề thi
			</a>
			<% } %>

			<a href="/ThiTracNghiem/list-class.jsp" class="list-group-item list-group-item-action">
				Quản lý lớp học
			</a>
			<a href="/ThiTracNghiem/list-student.jsp" class="list-group-item list-group-item-action">
				Quản lý sinh viên
			</a>
		</div>
	</div>
</body>
</html>