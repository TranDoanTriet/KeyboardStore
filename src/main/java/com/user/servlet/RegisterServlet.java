package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.keyboard.DAO.UserDAOImplements;
import com.keyboard.DB.DBConnection;
import com.keyboard.entity.User;
import com.mysql.cj.Session;

@WebServlet("/signup")
public class RegisterServlet extends HttpServlet {
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		try {
			String name = req.getParameter("fullName");
			String email = req.getParameter("email");
			String phone = req.getParameter("phone");
			String password = req.getParameter("password");
//			System.out.println(name+"" + email+"" + phone+"" + password +"");
			User user = new User();
			user.setName(name);
			user.setEmail(email);
			user.setPhone(phone);
			user.setPassword(password);
			
			HttpSession session = req.getSession();
			UserDAOImplements addUser = new UserDAOImplements(DBConnection.getConnection());
			boolean f = addUser.userRegister(user);
			if(f) {
				
				session.setAttribute("successMsg","sigup completed");
				res.sendRedirect("signup.htm");
			}else {
				session.setAttribute("failedMsg","failed");
				res.sendRedirect("signup.htm");
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}
