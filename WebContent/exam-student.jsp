<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="header.jsp"></jsp:include>
<link href="./css/admin.css" rel="stylesheet">
<script type="text/javascript" src="./js/countdown.js"></script>
<style type="text/css">
</style>
</head>
<body>
	<jsp:include page="test-header.jsp"></jsp:include>
    <main role="main">
    	<div class="container-fluid mt-dashbroad">
		  <div class="row">
		    <div class="col-md-3 mh-dashbroad">
					<div class="list-group">
						<div class="list-group-item list-group-item-action active">Mã đề thi</div>
						<div class="list-group-item list-group-item-action">
							<p>Môn: Toán học</p>
							<p>Tên đề thi: Kiểm tra hình học lần 1 </p>
							<p>Thời lượng: 30:00</p>
							<p>Số câu hỏi: 10</p>
							<p>Thời gian bắt đầu: 20-10-2018 07:30</p>
							<p>Thời gian kết thúc: 20-10-2018 22:00</p>
							<p>Thời gian còn lại:</p><h2 class="text-center" id="timer-main"></h2>
						</div>
					</div>
					<button type="button" class="btn btn-primary btn-lg btn-block">Nộp bài</button>
					<br>
					<table class="table table-bordered">
					  <tbody>
					    <tr>
					      <td class="done">1</td>
					      <td class="done">2</td>
					      <td class="done">3</td>
					      <td class="done">4</td>
					      <td class="done">5</td>
					      <td class="done">6</td>
					      <td class="done">7</td>
					      <td class="done">8</td>
					    </tr>
					   <tr>
					   	  <td class="done">9</td>
					      <td class="done">10</td>
					      <td class="done">11</td>
					      <td class="done">12</td>
					      <td class="done">13</td>
					      <td class="done">14</td>
					      <td>15</td>
					      <td>16</td>
						</tr>
						<tr>
						 <td>17</td>
					      <td>18</td>
					      <td>19</td>
					      <td>20</td>
					    </tr>
					  </tbody>
					</table>
					
				</div>
		    <div class="col-md-9 form-exam">
		    	<h2>Đề: Kiển tra Hình học lần 1</h2>
		    	<hr>
		    	<br>
		    	<!-- List question -->
		    	<div>
		    		<p><b>Câu hỏi 1: &nbsp</b>Trong các mệnh đề sau đây, mệnh đề nào đúng?</p>
			    	<div class="form-check">
					  <label class="form-check-label">
					    <input type="radio" class="form-check-input" name="optradio"><b>A.</b> Phép vị tự là một phép dời hình.
					  </label>
					</div>
					<div class="form-check">
					  <label class="form-check-label">
					    <input type="radio" class="form-check-input" name="optradio"><b>B.</b> Có một phép đối xứng trục là phép đồng nhất.
					  </label>
					</div>
					<div class="form-check">
					  <label class="form-check-label">
					    <input type="radio" class="form-check-input" name="optradio"><b>C.</b> Phép đồng dạng là một phép dời hình.
					  </label>
					</div>
					<div class="form-check">
					  <label class="form-check-label">
					    <input type="radio" class="form-check-input" name="optradio"><b>D.</b>Thực hiện liên tiếp phép quay và phép vị tự ta được phép đồng dạng.	
					  </label>
					</div>
					<hr>
					<p><b>Câu hỏi 2: &nbsp</b>Trong các mệnh đề sau đây, mệnh đề nào đúng?</p>
			    	<div class="form-check">
					  <label class="form-check-label">
					    <input type="radio" class="form-check-input" name="optradio"><b>A.</b> Phép vị tự là một phép dời hình.
					  </label>
					</div>
					<div class="form-check">
					  <label class="form-check-label">
					    <input type="radio" class="form-check-input" name="optradio"><b>B.</b> Có một phép đối xứng trục là phép đồng nhất.
					  </label>
					</div>
					<div class="form-check">
					  <label class="form-check-label">
					    <input type="radio" class="form-check-input" name="optradio"><b>C.</b> Phép đồng dạng là một phép dời hình.
					  </label>
					</div>
					<div class="form-check">
					  <label class="form-check-label">
					    <input type="radio" class="form-check-input" name="optradio"><b>D.</b>Thực hiện liên tiếp phép quay và phép vị tự ta được phép đồng dạng.	
					  </label>
					</div>
					<hr>
					<p><b>Câu hỏi 3: &nbsp</b>Trong các mệnh đề sau đây, mệnh đề nào đúng?</p>
			    	<div class="form-check">
					  <label class="form-check-label">
					    <input type="radio" class="form-check-input" name="optradio"><b>A.</b> Phép vị tự là một phép dời hình.
					  </label>
					</div>
					<div class="form-check">
					  <label class="form-check-label">
					    <input type="radio" class="form-check-input" name="optradio"><b>B.</b> Có một phép đối xứng trục là phép đồng nhất.
					  </label>
					</div>
					<div class="form-check">
					  <label class="form-check-label">
					    <input type="radio" class="form-check-input" name="optradio"><b>C.</b> Phép đồng dạng là một phép dời hình.
					  </label>
					</div>
					<div class="form-check">
					  <label class="form-check-label">
					    <input type="radio" class="form-check-input" name="optradio"><b>D.</b>Thực hiện liên tiếp phép quay và phép vị tự ta được phép đồng dạng.	
					  </label>
					</div>
					<hr>
					<p><b>Câu hỏi 4: &nbsp</b>Trong các mệnh đề sau đây, mệnh đề nào đúng?</p>
			    	<div class="form-check">
					  <label class="form-check-label">
					    <input type="radio" class="form-check-input" name="optradio"><b>A.</b> Phép vị tự là một phép dời hình.
					  </label>
					</div>
					<div class="form-check">
					  <label class="form-check-label">
					    <input type="radio" class="form-check-input" name="optradio"><b>B.</b> Có một phép đối xứng trục là phép đồng nhất.
					  </label>
					</div>
					<div class="form-check">
					  <label class="form-check-label">
					    <input type="radio" class="form-check-input" name="optradio"><b>C.</b> Phép đồng dạng là một phép dời hình.
					  </label>
					</div>
					<div class="form-check">
					  <label class="form-check-label">
					    <input type="radio" class="form-check-input" name="optradio"><b>D.</b>Thực hiện liên tiếp phép quay và phép vị tự ta được phép đồng dạng.	
					  </label>
					</div>
					<hr>
		    	</div>
		    	<!-- end list question -->
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
			        Bạn có chắc chắn muốn xóa câu hỏi?
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