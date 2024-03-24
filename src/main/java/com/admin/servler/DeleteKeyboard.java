package com.admin.servler;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.keyboard.DAO.KeyboarDAOImplements;
import com.keyboard.DB.DBConnection;

@WebServlet("/deletetKeyboard")
public class DeleteKeyboard extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id = Integer.parseInt(req.getParameter("id"));
			KeyboarDAOImplements delete = new KeyboarDAOImplements(DBConnection.getConnection());
			boolean f = delete.deleteKeyboard(id);
			HttpSession session = req.getSession();
			if(f) {
				session.setAttribute("sucMsg", "xóa ban phím thành công");
				resp.sendRedirect("allKeyboard.htm");
			}else {
				session.setAttribute("failedMsg", "xóa ban phím không thành công");
				resp.sendRedirect("allKeyboard.htm");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
