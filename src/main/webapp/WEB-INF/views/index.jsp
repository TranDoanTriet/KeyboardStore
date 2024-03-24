<%@page import="com.keyboard.DB.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
    <%@page import="com.keyboard.DAO.KeyboarDAOImplements"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.keyboard.entity.Keyboard"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome you</title>
<%@include file = "../../components/allCss.jsp" %>
</head>
<body>
	<%@include file = "../../components/navigationBar.jsp" %>
	<div
		onclick="ScrollToTop()"
		id="scroll-to-top"
		style="position: fixed; bottom: 30px; right: 30px; padding: 15px;background-color: #aecbc1; border-radius: 30%; border: 1px solid black"
	>
		<i class="fa-solid fa-arrow-up"></i>
	</div>
	<div class="home-image-under h25-vh display-flex justify-center align-center position-relative">
		<div class="flur position-absolute width-100 height-100"></div>
		<span class="home-image-under-hello position-absolute">Welcome to my Store</span>
	</div>
	<div class="show-list-keyboard mt-5">
		<div class="container-custom">
			<div class="container-fluid" >
				<div class="row">
					<%
						//KeyboarDAOImplements dao = new KeyboarDAOImplements(DBConnection.getConnection());
						//List<Keyboard> list = dao.getAllKeyboard();
						
						if(checkAll){
							if (list1 != null && !list1.isEmpty()){
								for (Keyboard kb : list1) {
									%>
										<div class="col-md-3 mb-4">
											<div class="card hover-hightLight">
												<div class="card-body text-center">
													<img alt="hinh1" src="keyboard/<%=kb.getImage()%>" style="width: 180px; height: 280px;border-radius: 5px"/>
													<p ><%=kb.getKeyboardName()%></p>
													<p><%=kb.getManufacturer() %></p>
													<p>Giá: <span id="book-price"><%=kb.getPrice() %>&nbsp;vnd</span></p>
													<div class="">
														<a href="" class="btn btn-success"><i class="fa-solid fa-cart-shopping me-1"></i>Add to cart</a>
														<a href="" class="btn btn-success">View</a>
													</div>
												</div>
											</div>
										</div>
									<%
							    }
							}
						}else{
							if (list != null && !list.isEmpty()){
								for (Keyboard kb : list) {
									%>
										<div class="col-md-3 mb-4">
											<div class="card hover-hightLight">
												<div class="card-body text-center">
													<img alt="hinh1" src="keyboard/<%=kb.getImage()%>" style="width: 180px; height: 280px;border-radius: 5px"/>
													<p ><%=kb.getKeyboardName()%></p>
													<p><%=kb.getManufacturer() %></p>
													<p>Giá: <span id="book-price"><%=kb.getPrice() %>&nbsp;vnd</span></p>
													<div class="">
														<a href="" class="btn btn-success"><i class="fa-solid fa-cart-shopping me-1"></i>Add to cart</a>
														<a href="" class="btn btn-success">View</a>
													</div>
												</div>
											</div>
										</div>
									<%
							    }
							}
						}
					%>
					
				</div>
			</div>
		</div>
	
	<%@include file="../../components/footer.jsp" %>
</body>
<script type="text/javascript">
	function ScrollToTop() {
		window.scrollTo(0,0)
	}
</script>
</html>