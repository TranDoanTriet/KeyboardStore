package com.keyboard.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.keyboard.entity.User;
import com.mysql.cj.xdevapi.Result;

import java.sql.PreparedStatement;

public class UserDAOImplements implements UserDAO {
	private Connection connection;

	public UserDAOImplements(Connection connection) {
		super();
		this.connection = connection;
	}

	@Override
	public boolean userRegister(User user) {
		boolean f = false;
		
		try {
			String sql = "insert into user(name,email,phone,password) values(?,?,?,?)";
			PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, user.getName());
            ps.setString(2, user.getEmail());
            ps.setString(3, user.getPhone());
            ps.setString(4, user.getPassword());

			
			int i = ((PreparedStatement) ps).executeUpdate();
			
			if(i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}

	@Override
	public User login(String email, String password) {
		User user = null;
		
		try {
			String sql = "select * from user where email=? and password=?";
			PreparedStatement checkUserLogin = connection.prepareStatement(sql);
			checkUserLogin.setString(1, email);
			checkUserLogin.setString(2, password);
			System.out.println(email+""+password);
			ResultSet result = checkUserLogin.executeQuery();
			if(result.next()) {
				user = new User();
				user.setId(result.getInt(1));
				user.setName(result.getString(2));
				user.setEmail(result.getString(3));
				user.setPassword(result.getString(4));
				user.setLandmark(result.getString(6));
				user.setAddress(result.getString(5));
				user.setCity(result.getString(7));
				user.setState(result.getString(8));
			}
 		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}
	
	
	
}
