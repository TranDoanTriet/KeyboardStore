package com.user.servlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.keyboard.DAO.KeyboarDAO;
import com.keyboard.DAO.KeyboarDAOImplements;
import com.keyboard.DB.DBConnection;
import com.keyboard.entity.Keyboard;

@WebServlet("/keyboardManufacturer")
public class KeyboardManufacturer extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			String manu = req.getParameter("manufacturer");
	        resp.sendRedirect("index.htm?manufacturer=" + manu);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
