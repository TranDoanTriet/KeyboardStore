<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file = "/components/allCss.jsp" %>
</head>
<body>
	<%@include file = "../../components/navigationBar.jsp" %>
	<div class="register">
		<div class="container mt-5">
		  <div class="row justify-content-center">
		    <div class="col-md-6">
		      <div class="card">
		        <div class="card-header">
		          Đăng kí
		        </div>
		        <c:if test="${not empty successMsg}">
					<div class="text-center text-success">Đăng kí thành công</div>
					<c:remove var="successMsg" scope="session"/>
				</c:if>
				<c:if test="${not empty failedMsg}">
					<div class="text-center text-warning">Đăng kí không thành công</div>
					<c:remove var="failedMsg" scope="session"/>
				</c:if>
		        <div class="card-body">
		          <form action="signup" method="post">
		            <div class="form-group mt-3">
		              <label for="fullName">Họ và tên</label>
		              <input type="text" class="form-control mt-2" id="fullName" placeholder="Nhập tên" required name="fullName">
		            </div>
		            <div class="form-group mt-3">
		              <label for="email">Địa chỉ email</label>
		              <input type="email" class="form-control mt-2" id="email" placeholder="Nhập email" required name="email">
		            </div>
		            <div class="form-group mt-3">
		              <label for="phone">Số điện thoại</label>
		              <input type="tel" class="form-control mt-2" id="phone" placeholder="Nhập số điện thoại" required name="phone">
		            </div>
		            <div class="form-group mt-3">
		              <label for="password">Mật khẩu</label>
		              <input type="password" class="form-control mt-2" id="password" placeholder="Nhập mật khẩu" required name="password">
		            </div>
		            <button type="submit" class="btn btn-success mt-3">Đăng kí</button>
		          </form>
		        </div>
		      </div>
		    </div>
		  </div>
	  	</div>
	</div>
	<%@include file="../../components/footer.jsp" %>
</body>
</html>