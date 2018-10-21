<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="header.jsp"></jsp:include>
<link href="./css/admin.css" rel="stylesheet">
</head>
<body>
	<jsp:include page="test-header.jsp"></jsp:include>
    <main role="main">
    	<div class="container-fluid mt-dashbroad">
		  <div class="row">
		    <jsp:include page="test-dashboard.jsp"></jsp:include>
		    <div class="col-md-9">
		    	<a class="btn btn-primary float-right" href="/ThiTracNghiem/add-student.jsp" role="button">Thêm sinh viên</a>
		    	<h2>Danh sách sinh viên</h2>
		    	<hr>
		    	<table class="table table-striped">
				  <thead class="thead-light">
				    <tr>
				      <th scope="col">STT</th>
				      <th scope="col">Mã sinh viên</th>
				      <th scope="col">Họ tên</th>
				      <th scope="col">Năm sinh</th>
				      <th scope="col">Email</th>
				      <th scope="col">Sđt</th>
				      <th scope="col">Xem</th>
				      <th scope="col">Sửa</th>
				      <th scope="col">Xóa</th>
				    </tr>
				  </thead>
				  <tbody>
				    <tr>
				      <th scope="row">1</th>
				      <td>16110123</td>
				      <td>Nguyễn Văn A</td>
				      <td>10/09/1998</td>
				      <td>a@gmail.com</td>
				      <td>0123456789</td>
				      <td><a href="/ThiTracNghiem/test-detail.jsp"><i class="far fa-eye"></i></a></td>
				      <td><a href="/ThiTracNghiem/add-student.jsp"><i class="fas fa-edit"></i></a></td>
				      <td><a href="#" data-toggle="modal" data-target="#exampleModalCenter"><i class="fas fa-trash-alt"></i></a></td>
				    </tr>
					<tr>
				      <th scope="row">2</th>
				      <td>16110123</td>
				      <td>Nguyễn Văn B</td>
				      <td>10/09/1998</td>
				      <td>b@gmail.com</td>
				      <td>0123456789</td>
				      <td><a href="/ThiTracNghiem/test-detail.jsp"><i class="far fa-eye"></i></a></td>
				      <td><a href="/ThiTracNghiem/add-student.jsp"><i class="fas fa-edit"></i></a></td>
				      <td><a href="#" data-toggle="modal" data-target="#exampleModalCenter"><i class="fas fa-trash-alt"></i></a></td>
				    </tr>
				    <tr>
				      <th scope="row">3</th>
				      <td>16110123</td>
				      <td>Nguyễn Văn C</td>
				      <td>10/09/1998</td>
				      <td>c@gmail.com</td>
				      <td>0123456789</td>
				      <td><a href="/ThiTracNghiem/test-detail.jsp"><i class="far fa-eye"></i></a></td>
				      <td><a href="/ThiTracNghiem/add-student.jsp"><i class="fas fa-edit"></i></a></td>
				      <td><a href="#" data-toggle="modal" data-target="#exampleModalCenter"><i class="fas fa-trash-alt"></i></a></td>
				    </tr>
				    <tr>
				      <th scope="row">4</th>
				      <td>16110123</td>
				      <td>Nguyễn Văn D</td>
				      <td>10/09/1998</td>
				      <td>d@gmail.com</td>
				      <td>0123456789</td>
				      <td><a href="/ThiTracNghiem/test-detail.jsp"><i class="far fa-eye"></i></a></td>
				      <td><a href="/ThiTracNghiem/add-student.jsp"><i class="fas fa-edit"></i></a></td>
				      <td><a href="#" data-toggle="modal" data-target="#exampleModalCenter"><i class="fas fa-trash-alt"></i></a></td>
				    </tr>
				  </tbody>
				</table><br>
				<nav aria-label="Page navigation example" class="float-right">
				  <ul class="pagination">
				    <li class="page-item">
				      <a class="page-link" href="#" aria-label="Previous">
				        <span aria-hidden="true">&laquo;</span>
				        <span class="sr-only">Previous</span>
				      </a>
				    </li>
				    <li class="page-item active"><a class="page-link" href="#">1</a></li>
				    <li class="page-item"><a class="page-link" href="#">2</a></li>
				    <li class="page-item"><a class="page-link" href="#">3</a></li>
				    <li class="page-item">
				      <a class="page-link" href="#" aria-label="Next">
				        <span aria-hidden="true">&raquo;</span>
				        <span class="sr-only">Next</span>
				      </a>
				    </li>
				  </ul>
				</nav>
		    </div>
		  </div>
		  <!-- Modal -->
			<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
			  <div class="modal-dialog modal-dialog-centered" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="exampleModalCenterTitle">Delete</h5>
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			          <span aria-hidden="true">&times;</span>
			        </button>
			      </div>
			      <div class="modal-body">
			        Bạn có chắc chắn muốn xóa sinh viên?
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			        <button type="button" class="btn btn-danger" data-dismiss="modal">Delete</button>
			      </div>
			    </div>
			  </div>
			</div>
		</div>
    </main>
</body>
</html>