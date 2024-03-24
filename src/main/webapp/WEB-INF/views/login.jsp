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
</head>
<body>
	<%@include file = "../../components/navigationBar.jsp" %>
	<div class="login">
		<div class="container mt-5">
		  <div class="row justify-content-center">
		    <div class="col-md-4">
		      <div class="card">
		        <div class="card-header">
		          Đăng nhập
		        </div>
		        <c:if test="${not empty failedLogin}">
					<div class="text-center text-danger">Đăng nhập thất bại</div>
					<c:remove var="failedLogin" scope="session"/>
				</c:if>
		        <div class="card-body">
		          <form action="login" method="post">
		            <div class="form-group mt-3">
		              <label for="email">Địa chỉ email</label>
		              <input type="email" class="form-control mt-2" id="email" placeholder="Nhập email" required name="email">
		            </div>
		            <div class="form-group mt-3">
		              <label for="password">Mật khẩu</label>
		              <input type="password" class="form-control mt-2" id="password" placeholder="Nhập mật khẩu" required name="password">
		            </div>
		            <button type="submit" class="btn btn-success mt-3">Đăng nhập</button>
		            <a href="signup.htm" class="mt-2" style="display: block;"><i class="fa-solid fa-user-plus me-1"></i>Tạo tài khoản</a>
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