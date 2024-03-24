<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm bàn phím</title>
<%@include file = "/components/allCss.jsp" %>
</head>
<body>
	<%@include file = "./navbarAdmin.jsp" %>
	<c:if test="${empty userObject}">
		<c:redirect url="login.htm"/>
	</c:if>
	 <div class="container">
    <h1>Thêm Ban Phim</h1>
    <c:if test="${not empty sucMsg}">
		<div class="text-center text-success">${sucMsg}</div>
		<c:remove var="sucMsg" scope="session"/>
	</c:if>
	<c:if test="${not empty faiMsg}">
		<div class="text-center text-success">${faiMsg}</div>
		<c:remove var="faiMsg" scope="session"/>
	</c:if>
    <form action="addKeyboard" method="post" enctype="multipart/form-data">
      <div class="form-group mb-2">
        <label for="bookTitle">Ten ban phim:</label>
        <input type="text" class="form-control mt-2" id="keyboardTitle" name="keyboardTitle" required>
      </div>
      <div class="form-group mb-2">
        <label for="author">Tác nha san xuat:</label>
        <input type="text" class="form-control mt-2" id="manufacturer" name="manufacturer" required>
      </div>
      <div class="form-group mb-2">
        <label for="price">Giá:</label>
        <input type="number" class="form-control mt-2" id="price" name="price" required>
      </div>
      <div class="form-group mb-2">
        <label for="category">Thể Loại:</label>
        <select class="form-control" id="type" name="type" required>
        	<option value="">Chọn thể loại</option>
          <option value="coday">Có dây</option>
          <option value="khongday">Không dây</option>
        </select>
      </div>
      <div class="form-group mb-2">
        <label for="amount">Số lượng:</label>
        <input type="number" class="form-control mt-2" id="amount" name="amount" required>
      </div>
      <div class="form-group mb-2">
        <label for="image">Hình Ảnh:</label>
        <input type="file" class="form-control-file mt-2" id="image" name="image">
      </div>
      <button type="submit" class="btn btn-success mt-2">Thêm bàn phím</button>
    </form>
  </div>
</body>
</html>