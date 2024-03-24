<%@page import="com.keyboard.entity.Keyboard"%>
<%@page import="java.util.List"%>
<%@page import="com.keyboard.DB.DBConnection"%>
<%@page import="com.keyboard.DAO.KeyboarDAOImplements"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tất cả bàn phím</title>
<%@include file = "/components/allCss.jsp" %>
</head>
<body>
	<%@include file = "./navbarAdmin.jsp" %>
	<c:if test="${empty userObject}">
		<c:redirect url="login.htm"/>
	</c:if>
	<h1 class="text-center">Tất cả bàn phím</h1>
	<c:if test="${not empty sucMsg}">
		<div class="text-center text-success">${sucMsg}</div>
		<c:remove var="sucMsg" scope="session"/>
	</c:if>
	<c:if test="${not empty failedMsg}">
		<div class="text-center text-danger">${failedMsg}</div>
		<c:remove var="failedMsg" scope="session"/>
	</c:if>
	<div class="container">
		<table id="example" class="table table-striped border border-success">
		  <thead>
		    <tr>
		      <th scope="col">id</th>
		      <th scope="col">Ảnh</th>
		      <th scope="col">Tên bàn phím</th>
		      <th scope="col">Nhà sản xuất</th>
		      <th scope="col">Giá</th>
		      <th scope="col">Loại</th>
		      <th scope="col">Số lượng còn</th>
		      <th scope="col">Action</th>
		    </tr>
		  </thead>
		  <tbody>
		  
		  	<%
				KeyboarDAOImplements dao = new KeyboarDAOImplements(DBConnection.getConnection());
		  		List<Keyboard> list = dao.getAllKeyboard();
		  		
				if (list != null && !list.isEmpty()) {
				    for (Keyboard kb : list) {
						%>
							<tr>
							    <td><%=kb.getIdKeyboard()%></td>
							    <td><img alt="" src="keyboard/<%=kb.getImage()%>" style="width: 50px; height: 50px;"></td>
							    <td><%=kb.getKeyboardName() %></td>
							    <td><%=kb.getManufacturer() %></td>
							    <td><%=kb.getPrice() %></td>
							    <td><%=kb.getType() %></td>
							    <td><%=kb.getAmount() %></td>
							    <td>
							        <a href="edit-keyboard.htm?id=<%=kb.getIdKeyboard()%>" class="btn btn-sm btn-success">Edit</a>
							        <a href="deletetKeyboard?id=<%=kb.getIdKeyboard()%>" class="btn btn-sm btn-danger">Delete</a>
							    </td>
							</tr>
						<%
				    }
				} else {
				    // Xử lý khi danh sách rỗng hoặc null
				    // Ví dụ: Hiển thị thông báo không có dữ liệu
				%>
					<tr>
					    <td colspan="8">No data available</td>
					</tr>
				<%
				}
			%>
		    
		    
		  </tbody>
		</table>
	</div>
</body>
<script src='https://code.jquery.com/jquery-3.7.0.js'></script>
<!-- Data Table JS -->
<script src='https://cdn.datatables.net/1.13.5/js/jquery.dataTables.min.js'></script>
<script src='https://cdn.datatables.net/responsive/2.1.0/js/dataTables.responsive.min.js'></script>
<script src='https://cdn.datatables.net/1.13.5/js/dataTables.bootstrap5.min.js'></script>
<script type="text/javascript">
$(document).ready(function() {
    $('#example').DataTable({
      //disable sorting on last column
      "columnDefs": [
        { "orderable": false, "targets": 5 }
      ],
      language: {
        //customize pagination prev and next buttons: use arrows instead of words
        'paginate': {
          'previous': '<span class="fa fa-chevron-left"></span>',
          'next': '<span class="fa fa-chevron-right"></span>'
        },
        //customize number of elements to be displayed
        "lengthMenu": 'Display <select class="form-control input-sm">'+
        '<option value="10">10</option>'+
        '<option value="20">20</option>'+
        '<option value="30">30</option>'+
        '<option value="40">40</option>'+
        '<option value="50">50</option>'+
        '<option value="-1">All</option>'+
        '</select> results'
      }
    })  
} );
</script>
</html>