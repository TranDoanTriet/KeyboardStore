<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Admin Home</title>
	<%@include file = "/components/allCss.jsp" %>
	<style type="text/css">
		.admin-function-icon i{
			font-size: 25px;
			color: rgb(25, 135, 84);
		}
		.hover-hightLight:hover{
			background: #F5FCF7;
		}
		a{
			text-decoration: none;
			color: black;
			display: block;
		}
	</style>
</head>
<body>
	<%@include file = "./navbarAdmin.jsp" %>
	<div class="admin-function-grou mt-5">
		<div class="container">
	  		<div class="row">
	  			<div class="col-md-3">
	  				<a href="addKeyboard.htm">
		  				<div class="card hover-hightLight">
		  					<div class="card-body">
		  						<div class="admin-function-icon text-center">
		  							<i class="fa-solid fa-plus mb-3"></i>
		  							<div>Thêm ban phim</div>
		  						</div>
		  					</div>
		  				</div>
		  			</a>
	  			</div>
	  			<div class="col-md-3">
		  			<a href="allKeyboard.htm">
		  				<div class="card hover-hightLight">
		  					<div class="card-body">
		  						<div class="admin-function-icon text-center">
		  							<i class="fa-solid fa-book mb-3"></i>
		  							<div>Tất cả ban phim</div>
		  						</div>
		  					</div>
		  				</div>
	  				</a>
	  			</div>
	  			<div class="col-md-3">
		  			<a href="order.htm">
		  				<div class="card hover-hightLight">
		  					<div class="card-body">
		  						<div class="admin-function-icon text-center">
		  							<i class="fa-solid fa-truck mb-3"></i>
		  							<div>Đơn hàng</div>
		  						</div>
		  					</div>
		  				</div>
	  				</a>
	  			</div>
	  			<div class="col-md-3">
	  				<div class="card">
	  					<div class="card-body hover-hightLight">
	  						<div class="admin-function-icon text-center">
	  							<i class="fa-solid fa-right-from-bracket mb-3"></i>
	  							<a  href="" data-toggle="modal" data-target="#exampleModal">Đăng xuất</a>
	  						</div>
	  					</div>
	  				</div>
	  			</div>
	  		</div>
	  	</div>
	 </div>
	 <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Log out confirm</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        Do you want log out?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
        <a href="logout" class="btn btn-primary" >Log out</a>
      </div>
    </div>
  </div>
</div>
</body>
</html>