<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tất cả đơn hàng</title>
<%@include file = "/components/allCss.jsp" %>
</head>
<body>
	<%@include file = "./navbarAdmin.jsp" %>
	<h1 class="text-center">Tất cả đơn hàng</h1>
	<div class="container">
		<table id="example2" class="table table-striped border border-success">
		  <thead>
		    <tr>
		      <th scope="col">order id</th>
		      <th scope="col">Tên người mua</th>
		      <th scope="col">Email</th>
		      <th scope="col">Giá</th>
		      <th scope="col">Địa chỉ</th>
		      <th scope="col">Số điện thoại</th>
		      <th scope="col">Tên sách</th>
		      <th scope="col">Tổng tiền</th>
		      <th scope="col">Hình thức vận chuyển</th>
		    </tr>
		  </thead>
		  <tbody>
		    <tr>
		      <th scope="row">1</th>
		      <td>conan</td>
		      <td>conan</td>
		      <td>conan</td>
		      <td>conan</td>
		      <td>conan</td>
		      <td>abc</td>
		      <td>abc</td>
		      <td>abc</td>
		    </tr>
		    <tr>
		      <th scope="row">1</th>
		      <td>conan</td>
		      <td>conan</td>
		      <td>conan</td>
		      <td>conan</td>
		      <td>conan</td>
		      <td>abc</td>
		      <td>abc</td>
		      <td>abc</td>
		    </tr>
		    <tr>
		      <th scope="row">1</th>
		      <td>conan</td>
		      <td>conan</td>
		      <td>conan</td>
		      <td>conan</td>
		      <td>conan</td>
		      <td>abc</td>
		      <td>abc</td>
		      <td>abc</td>
		    </tr>
		    <tr>
		      <th scope="row">1</th>
		      <td>conan</td>
		      <td>conan</td>
		      <td>conan</td>
		      <td>conan</td>
		      <td>conan</td>
		      <td>abc</td>
		      <td>abc</td>
		      <td>abc</td>
		    </tr>
		    <tr>
		      <th scope="row">1</th>
		      <td>conan</td>
		      <td>conan</td>
		      <td>conan</td>
		      <td>conan</td>
		      <td>conan</td>
		      <td>abc</td>
		      <td>abc</td>
		      <td>abc</td>
		    </tr>
		    <tr>
		      <th scope="row">1</th>
		      <td>conan</td>
		      <td>conan</td>
		      <td>conan</td>
		      <td>conan</td>
		      <td>conan</td>
		      <td>abc</td>
		      <td>abc</td>
		      <td>abc</td>
		    </tr>
		    <tr>
		      <th scope="row">1</th>
		      <td>conan</td>
		      <td>conan</td>
		      <td>conan</td>
		      <td>conan</td>
		      <td>conan</td>
		      <td>abc</td>
		      <td>abc</td>
		      <td>abc</td>
		    </tr>
		    <tr>
		      <th scope="row">1</th>
		      <td>conan</td>
		      <td>conan</td>
		      <td>conan</td>
		      <td>conan</td>
		      <td>conan</td>
		      <td>abc</td>
		      <td>abc</td>
		      <td>abc</td>
		    </tr>
		    <tr>
		      <th scope="row">1</th>
		      <td>conan</td>
		      <td>conan</td>
		      <td>conan</td>
		      <td>conan</td>
		      <td>conan</td>
		      <td>abc</td>
		      <td>abc</td>
		      <td>abc</td>
		    </tr>
		    <tr>
		      <th scope="row">1</th>
		      <td>conan</td>
		      <td>conan</td>
		      <td>conan</td>
		      <td>conan</td>
		      <td>conan</td>
		      <td>abc</td>
		      <td>abc</td>
		      <td>abc</td>
		    </tr>
		    <tr>
		      <th scope="row">1</th>
		      <td>conan</td>
		      <td>conan</td>
		      <td>conan</td>
		      <td>conan</td>
		      <td>conan</td>
		      <td>abc</td>
		      <td>abc</td>
		      <td>abc</td>
		    </tr>
		    <tr>
		      <th scope="row">1</th>
		      <td>conan</td>
		      <td>conan</td>
		      <td>conan</td>
		      <td>conan</td>
		      <td>conan</td>
		      <td>abc</td>
		      <td>abc</td>
		      <td>abc</td>
		    </tr>
		    <tr>
		      <th scope="row">1</th>
		      <td>conan</td>
		      <td>conan</td>
		      <td>conan</td>
		      <td>conan</td>
		      <td>conan</td>
		      <td>abc</td>
		      <td>abc</td>
		      <td>abc</td>
		    </tr>
		  </tbody>
		</table>
	</div>
	
</body>
<!-- jQuery -->
<script src='https://code.jquery.com/jquery-3.7.0.js'></script>
<!-- Data Table JS -->
<script src='https://cdn.datatables.net/1.13.5/js/jquery.dataTables.min.js'></script>
<script src='https://cdn.datatables.net/responsive/2.1.0/js/dataTables.responsive.min.js'></script>
<script src='https://cdn.datatables.net/1.13.5/js/dataTables.bootstrap5.min.js'></script>
<script type="text/javascript">
$(document).ready(function() {
    $('#example2').DataTable({
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