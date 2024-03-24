package com.admin.servler;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.keyboard.DAO.KeyboarDAOImplements;
import com.keyboard.DB.DBConnection;
import com.keyboard.entity.Keyboard;

@WebServlet("/editKeyboard")
public class EditKeyboard extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			System.out.println(req.getParameter("id") + "check id");
			
			String keyboardName = req.getParameter("keyboardTitle");
            String manufacturer = req.getParameter("manufacturer");
            double price = Double.parseDouble(req.getParameter("price"));
            String type = req.getParameter("type");
            double amount = Double.parseDouble(req.getParameter("amount"));
            int id = Integer.parseInt(req.getParameter("id"));
            
            Keyboard kb = new Keyboard();
			kb.setKeyboardName(keyboardName);
			kb.setManufacturer(manufacturer);
			kb.setPrice(price);
			kb.setType(type);
			kb.setAmount(amount);
			kb.setIdKeyboard(id);
			
			KeyboarDAOImplements dao = new KeyboarDAOImplements(DBConnection.getConnection());
			boolean f = dao.updateKeyboard(kb);
			
			HttpSession session = req.getSession();
			if(f) {
				session.setAttribute("sucMsgsss", "cập nhật ban phím thành công");
				resp.sendRedirect("allKeyboard.htm");
			}else {
				session.setAttribute("failedMsgsss", "cập nhật ban phím thành công");
				resp.sendRedirect("allKeyboard.htm");
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
