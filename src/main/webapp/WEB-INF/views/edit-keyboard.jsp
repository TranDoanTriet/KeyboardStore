<%@page import="com.keyboard.DB.DBConnection"%>
<%@page import="com.keyboard.DAO.KeyboarDAOImplements"%>
<%@page import="com.keyboard.entity.Keyboard"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sửa thông tin bàn phím</title>
<%@include file = "/components/allCss.jsp" %>
</head>
<body>
	<%@include file = "./navbarAdmin.jsp" %>
	 <div class="container">
    <h1>Sửa thông tin bàn phím</h1>
    <c:if test="${not empty sucMsg}">
		<div class="text-center text-success">${sucMsg}</div>
		<c:remove var="sucMsg" scope="session"/>
	</c:if>
	<c:if test="${not empty failedMsg}">
		<div class="text-center text-success">${failedMsg}</div>
		<c:remove var="failedMsg" scope="session"/>
	</c:if>
	
	<%
		
		int id = Integer.parseInt(request.getParameter("id"));
		System.out.println(id + "check id sss");
		KeyboarDAOImplements dao = new KeyboarDAOImplements(DBConnection.getConnection());
		Keyboard kb = dao.getKeyboardById(id);
	%>
	
    <form action="editKeyboard" method="post">
    	<input  name="id" value="<%=kb.getIdKeyboard()%>">
      <div class="form-group mb-2">
        <label for="bookTitle">Ten ban phim:</label>
        <input type="text" class="form-control mt-2" id="keyboardTitle" name="keyboardTitle" required value="<%=kb.getKeyboardName()%>">
      </div>
      <div class="form-group mb-2">
        <label for="author">Tác nha san xuat:</label>
        <input type="text" class="form-control mt-2" id="manufacturer" name="manufacturer" required value="<%=kb.getManufacturer()%>">
      </div>
      <div class="form-group mb-2">
        <label for="price">Giá:</label>
        <input type="number" class="form-control mt-2" id="price" name="price" required value="<%=kb.getPrice()%>">
      </div>
      <div class="form-group mb-2">
        <label for="category">Thể Loại:</label>
        <select class="form-control" id="type" name="type" required>
        	<c:choose>
			    <c:when test="${kb.getType().equals('coday')}">
			        <option value="coday" selected>Có dây</option>
			        <option value="khongday">Không dây</option>
			    </c:when>
			    <c:otherwise>
			        <option value="coday">Có dây</option>
			        <option value="khongday" selected>Không dây</option>
			    </c:otherwise>
			</c:choose>
        </select>
      </div>
      <div class="form-group mb-2">
        <label for="amount">Số lượng:</label>
        <input type="number" class="form-control mt-2" id="amount" name="amount" required value="<%=kb.getAmount()%>">
      </div>
      <div class="form-group mb-2">
        <label for="image">Hình Ảnh:</label>
        <input type="file" class="form-control-file mt-2" id="image" name="image">
      </div>
      <button type="submit" class="btn btn-success mt-2">Cập nhập</button>
    </form>
  </div>
</body>
</html>