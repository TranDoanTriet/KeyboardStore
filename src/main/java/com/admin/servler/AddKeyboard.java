package com.admin.servler;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;


import com.keyboard.DAO.KeyboarDAOImplements;
import com.keyboard.DB.DBConnection;
import com.keyboard.entity.Keyboard;

@WebServlet("/addKeyboard")
@MultipartConfig
public class AddKeyboard extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String keyboardName = req.getParameter("keyboardTitle");
            String manufacturer = req.getParameter("manufacturer");
            double price = Double.parseDouble(req.getParameter("price"));
            String type = req.getParameter("type");
            double amount = Double.parseDouble(req.getParameter("amount"));
            Part part = req.getPart("image");
            String image = "";
            if (part != null) {
                image = part.getSubmittedFileName();
            } 
           
			System.out.println(keyboardName+" "+manufacturer+" "+price+" "+type+" "+amount+ " "+image);
            Keyboard kb = new Keyboard(keyboardName, manufacturer, price, type, amount, image);
            KeyboarDAOImplements addKeyboard = new KeyboarDAOImplements(DBConnection.getConnection());
//			
			boolean f = addKeyboard.addKeyboard(kb);
			HttpSession session = req.getSession();
			
			
			if(f) {
				String path = getServletContext().getRealPath("")+"keyboard";
				File file = new File(path);
				part.write(file + File.separator + image);
				session.setAttribute("sucMsg", "Add keyboard success");
				resp.sendRedirect("addKeyboard.htm");
			}else {
				session.setAttribute("faiMsg", "Add keyboard success");
				resp.sendRedirect("addKeyboard.htm");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
