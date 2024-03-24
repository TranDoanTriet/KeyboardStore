package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.keyboard.DAO.UserDAO;
import com.keyboard.DAO.UserDAOImplements;
import com.keyboard.DB.DBConnection;
import com.keyboard.entity.User;

@WebServlet("/login")
public class Login extends HttpServlet {
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
		try {
			UserDAOImplements login = new UserDAOImplements(DBConnection.getConnection());
			HttpSession session = req.getSession();
			String email = req.getParameter("email");
			String password = req.getParameter("password");
			
			if(email.equals("admin@gmail.com") && password.equals("admin")) {
				User user = new User();
				user.setName("Admin");
				session.setAttribute("userObject", user);
				res.sendRedirect("adminHome.htm");
			}else {
				User user = login.login(email, password);
				session.setAttribute("userObject", user);
				if(user!=null) {
					session.setAttribute("user", user);
					res.sendRedirect("index.htm");
				}else {
					session.setAttribute("failedLogin", "Đăng nhập không thành công");
					res.sendRedirect("login.htm");
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
