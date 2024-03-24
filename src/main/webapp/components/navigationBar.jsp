<%@page import="com.keyboard.entity.Keyboard"%>
<%@page import="java.util.List"%>
<%@page import="com.keyboard.DB.DBConnection"%>
<%@page import="com.keyboard.DAO.KeyboarDAOImplements"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<div class="container-fluid p-3" id="nav-general-image"
	style=""
	
>
	<div class="row">
		<div class="col-md-4">
			
		</div>
		
		<div class="col-md-6">
			
		</div>
		
		<div class="col-md-2" id="nav-general-login-group">
			<c:if test="${not empty userObject}">
				<a href="" class="btn btn-success me-2 text-white"></i>${userObject.name}</a>
				<a href="" class="btn btn-outline-success me-2" data-toggle="modal" data-target="#exampleModal"><i class="fa-solid fa-right-to-bracket me-1"></i>Log out</a>
			</c:if>
			<c:if test="${empty userObject}">
				<a href="login.htm" class="btn btn-outline-success me-2"><i class="fa-solid fa-right-to-bracket me-1"></i>Login</a>
				<a href="signup.htm" class="btn btn-outline-success"><i class="fa-solid fa-user-plus me-1"></i>Sign up</a>
			</c:if>
			
		</div>
		
	</div>
</div>

<!-- Button trigger modal -->

<!-- Modal -->
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
        <a href="logout" class="btn btn-primary">Log out</a>
      </div>
    </div>
  </div>
</div>

<nav class="navbar navbar-expand-lg bg-body-tertiary border-bottom-flur">
  <div class="container-fluid">
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.htm"><i class="fa-solid fa-house me-1 color-green"></i>Home</a>
        </li>
        
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            <i class="fa-solid fa-list me-1 color-green"></i>Manufacturer
          </a>
          <%
         	 boolean checkAll = true;
        	String manu = request.getParameter("manufacturer");
        	System.out.println(manu);
        	if(manu != "All"){
        		checkAll = false;
        	}else{
        		checkAll = true;
        	}
       		KeyboarDAOImplements dao = new KeyboarDAOImplements(DBConnection.getConnection());
        	List<Keyboard> list = dao.getKeyboardManufacturer(manu);
        	List<Keyboard> list1 = dao.getAllKeyboard();
          %>
          <ul class="dropdown-menu">
          	<li><a class="dropdown-item" href="keyboardManufacturer?manufacturer=All">All</a></li>
            <li><a class="dropdown-item" href="keyboardManufacturer?manufacturer=RED">Comic</a></li>
            <li><a class="dropdown-item" href="keyboardManufacturer?manufacturer=Corsair"">Horrified</a></li>
            <li><a class="dropdown-item" href="keyboardManufacturer?manufacturer=Logitech"">Detective</a></li>
          </ul>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            <i class="fa-solid fa-money-bill me-1 color-green"></i>Price
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">0 - 50k</a></li>
            <li><a class="dropdown-item" href="#">50k - 100k</a></li>
            <li><a class="dropdown-item" href="#">100k - 200k</a></li>
            <li><a class="dropdown-item" href="#">200k - 500k</a></li>
          </ul>
        </li>
      </ul>
      <button class="btn btn-outline-success me-2" type="submit"><i class="fa-regular fa-envelope me-1"></i>Contact</button>
      <button class="btn btn-outline-success me-2" type="submit"><i class="fa-solid fa-gear me-1"></i>Setting</button>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit"><i class="fa-solid fa-magnifying-glass me-1"></i></button>
      </form>
    </div>
  </div>
</nav>