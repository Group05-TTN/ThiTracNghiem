<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="header.jsp"></jsp:include>

</head>
<body>
	<div class="col-md-3 mh-dashbroad">
		<div class="list-group nav">
			<a href="/ThiTracNghiem/quiz" class="list-group-item list-group-item-action">
				<i class="fas fa-quidditch"></i> Quản lý câu hỏi
			</a>
			<a href="/ThiTracNghiem/test" class="list-group-item list-group-item-action">
				<i class="fas fa-list-alt"></i> Quản lý đề thi
			</a>
			<a href="/ThiTracNghiem/list-class.jsp" class="list-group-item list-group-item-action">
				<i class="fas fa-users"></i> Quản lý lớp học
			</a>
			<c:choose>
				<c:when test="${param.dashbroadContent}">
					<a href="/ThiTracNghiem/list-student.jsp" class="list-group-item list-group-item-action active">
						<i class="fas fa-address-card"></i> Quản lý thí sinh
					</a>
				</c:when>
				<c:otherwise>
					<a href="/ThiTracNghiem/examinee-manager" class="list-group-item list-group-item-action ">
						<i class="fas fa-address-card"></i> Quản lý thí sinh
					</a>
				</c:otherwise>
			</c:choose>
			<h1>${param.dashbroadContent}</h1>
		</div>
	</div>
</body>
</html>