<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<jsp:include page="header.jsp"></jsp:include>
</head>
<body>

    <jsp:include page="navbar-header.jsp"></jsp:include>

    <main role="main">

      <jsp:include page="carousel.jsp"></jsp:include>

      <div class="container marketing">

        <!-- Three columns of text below the carousel -->
        <div class="row">
          <div class="col-lg-3 text-center">
            <img class="rounded-circle" src="images/math2.jpg" alt="Generic placeholder image" width="140" height="140">
            <h2>Toán 1</h2>
            <p>Kiển tra Hình học lần 1</p>
            <p>Ngày bắt đầu: 20-10-2018 14:00</p>
            <p>Ngày kết thúc: 20-10-2018 22:00</p>
            <p>Thời lượng: 30:00</p>
            <p><a class="btn btn-secondary" href="/ThiTracNghiem/exam-student.jsp" role="button">Thi ngay &raquo;</a></p>
          </div>
          
          <!-- /.col-lg-4 -->
          
          <div class="col-lg-3 text-center">
            <img class="rounded-circle" src="images/math4.jpg" alt="Generic placeholder image" width="140" height="140">
            <h2>Toán 2</h2>
            <p>Kiển tra Hình học lần 2</p>
            <p>Ngày bắt đầu: 20-10-2018 14:00</p>
            <p>Ngày kết thúc: 20-10-2018 22:00</p>
            <p>Thời lượng: 30:00</p>
            <p><a class="btn btn-secondary" href="/ThiTracNghiem/exam-student.jsp" role="button">Thi ngay &raquo;</a></p>
          </div>
          
          <!-- /.col-lg-4 -->
          
          <div class="col-lg-3 text-center">
            <img class="rounded-circle" src="images/english1.jpg" alt="Generic placeholder image" width="140" height="140">
            <h2>Anh văn 1</h2>
            <p>Kiển tra Anh văn 1 lần 1</p>
            <p>Ngày bắt đầu: 20-10-2018 14:00</p>
            <p>Ngày kết thúc: 20-10-2018 22:00</p>
            <p>Thời lượng: 30:00</p>
            <p><a class="btn btn-secondary" href="/ThiTracNghiem/exam-student.jsp" role="button">Thi ngay &raquo;</a></p>
          </div>
          
          <!-- /.col-lg-4 -->
          <div class="col-lg-3 text-center">
            <img class="rounded-circle" src="images/cntt4.jpg" alt="Generic placeholder image" width="140" height="140">
            <h2>Tin học</h2>
            <p>Kiển tra tin học cơ sở</p>
            <p>Ngày bắt đầu: 20-10-2018 14:00</p>
            <p>Ngày kết thúc: 20-10-2018 22:00</p>
            <p>Thời lượng: 60:00</p>
            <p><a class="btn btn-secondary" href="/ThiTracNghiem/exam-student.jsp" role="button">Thi ngay &raquo;</a></p>
          </div><!-- /.col-lg-4 -->
        </div><!-- /.row -->
		

        <!-- START THE FEATURETTES -->

        <hr class="featurette-divider">

        <div class="row featurette">
          <div class="col-md-7">
            <h2 class="featurette-heading">Toán học<span class="text-muted"></span></h2>
            <p class="lead">Môn toán không giống như văn học có thể liên tưởng từ hiện tại đến quá khứ, 
            	từ quá khứ lại bay bổng đến tương lai. Toán học là một chuỗi những bước có sự liên kết chặt chẽ 
            	với nhau, muốn giải 1 bài bài toán gồm 3 bước chúng ta phải đi từng bước từ 1 đến 3 mới 
            	có thể ra đáp án đúng nhưng nếu bạn ngại làm chỉ làm ngay đến bước 3 thì không bao giờ 
            	có 1 kết quả chính xác. Vậy nên học toán giúp chúng ta có một tư duy logic tốt hơn.
            </p>
          </div>
          <div class="col-md-5">
            <img class="featurette-image img-fluid mx-auto" src="images/math3.jpg" alt="Generic placeholder image">
          </div>
        </div>

        <hr class="featurette-divider">

        <div class="row featurette">
          <div class="col-md-7 order-md-2">
            <h2 class="featurette-heading">Anh văn<span class="text-muted"></span></h2>
            <p class="lead">
            	Tiếng Anh là ngôn ngữ chính và phổ biến nhất trên thế giới, 
            	có trên 67 nước dùng tiếng Anh làm ngôn ngữ chính hoặc là ngôn ngữ mẹ đẻ. 
            	Con số này lớn hơn tất cả so với các ngôn ngữ khác.Học tiếng Anh thực sự có thể giúp 
            	thăng tiến trong sự nghiệp và nó cũng giúp tăng độ tin cậy trong hồ sơ xin việc của bạn.
            </p>
          </div>
          <div class="col-md-5 order-md-1">
            <img class="featurette-image img-fluid mx-auto" src="images/english7.jpg" alt="Generic placeholder image">
          </div>
        </div>

        <hr class="featurette-divider">

        <div class="row featurette">
          <div class="col-md-7">
            <h2 class="featurette-heading">Tin học<span class="text-muted"></span></h2>
            <p class="lead">
            	Tin học đã dược ứng dụng trong mọi lĩnh vực của đời sống và xã hội.
            	Sự phát triển của các dạng máy tính , đặc biệt là internet , 
            	làm cho việc ứng dụng tin học ngày càng phổ biến.
            </p>
          </div>
          <div class="col-md-5">
            <img class="featurette-image img-fluid mx-auto" src="images/cntt2.png" alt="Generic placeholder image">
          </div>
        </div>

        <hr class="featurette-divider">

        <!-- /END THE FEATURETTES -->

      </div><!-- /.container -->
	
		<jsp:include page="footer.jsp"></jsp:include>
	
    </main>
  </body>
</html>