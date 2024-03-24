package com.keyboard.DAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;

import com.keyboard.entity.Keyboard;
public class KeyboarDAOImplements implements KeyboarDAO{
	private Connection connection;
	public KeyboarDAOImplements(Connection connection) {
		super();
		this.connection = connection;
	}
	
	@Override
	public boolean addKeyboard(Keyboard keyboard) {
		
		boolean f = false;
		
		try {
			String sql = "insert into keyboard(keyboardName,manufacturer,price,type,amount,image) values(?,?,?,?,?,?)";
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setString(1, keyboard.getKeyboardName());
            ps.setString(2, keyboard.getManufacturer());
            ps.setDouble(3, keyboard.getPrice());
            ps.setString(4, keyboard.getType());
            ps.setDouble(5, keyboard.getAmount());
            ps.setString(6, keyboard.getImage());
            
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
	public List<Keyboard> getAllKeyboard() {
		List<Keyboard> list = new ArrayList<Keyboard>();
		Keyboard kb = null;
		
		try {
			String sql = "select * from keyboard";
			PreparedStatement ps = connection.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				kb = new Keyboard();
				kb.setIdKeyboard(rs.getInt(1));
				kb.setKeyboardName(rs.getString(2));
				kb.setManufacturer(rs.getString(3));
				kb.setPrice(rs.getDouble(4));
				kb.setType(rs.getString(5));
				kb.setAmount(rs.getDouble(6));
				kb.setImage(rs.getString(7));
				list.add(kb);

			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return list;
	}

	@Override
	public boolean updateKeyboard(Keyboard kb) {
		boolean f = false;
		try {
			
			String sql = "update keyboard set keyboardName=?, manufacturer=?,price=?,type=?, amount=? where idKeyboard=? ";
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setString(1, kb.getKeyboardName());
            ps.setString(2, kb.getManufacturer());
            ps.setDouble(3, kb.getPrice());
            ps.setString(4, kb.getType());
            ps.setDouble(5, kb.getAmount());
            ps.setInt(6, kb.getIdKeyboard());
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
	public Keyboard getKeyboardById(int id) {
		Keyboard kb = null;
		
		try {
			
			String sql = "select * from keyboard where idKeyboard=?";
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setInt(1, id);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()){
				kb = new Keyboard();
				kb.setIdKeyboard(rs.getInt(1));
				kb.setKeyboardName(rs.getString(2));
				kb.setManufacturer(rs.getString(3));
				kb.setPrice(rs.getDouble(4));
				kb.setType(rs.getString(5));
				kb.setAmount(rs.getDouble(6));
				kb.setImage(rs.getString(7));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return kb;
	}

	@Override
	public boolean deleteKeyboard(int id) {
		boolean f = false;
		
		try {
			
			String sql = "delete from keyboard where idKeyboard=?";
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setInt(1, id);
			int i = ps.executeUpdate();
			if(i==1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}

	@Override
	public List<Keyboard>  getKeyboardManufacturer(String manu) {
		List<Keyboard> list = new ArrayList<Keyboard>();
		Keyboard kb = null;
		
		try {
			String sql = "";
			if ("All".equals(manu) || manu == null) { // Sử dụng equals() để so sánh chuỗi
			    sql = "Select * from keyboard";
			} else {
			    sql = "Select * from keyboard where manufacturer = ?";
			}
			PreparedStatement ps = connection.prepareStatement(sql);
			if (!"All".equals(manu) && manu != null) { // Sử dụng equals() để so sánh chuỗi
			    ps.setString(1, manu);
			}

			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				kb = new Keyboard();
				kb.setIdKeyboard(rs.getInt(1));
				kb.setKeyboardName(rs.getString(2));
				kb.setManufacturer(rs.getString(3));
				kb.setPrice(rs.getDouble(4));
				kb.setType(rs.getString(5));
				kb.setAmount(rs.getDouble(6));
				kb.setImage(rs.getString(7));
				list.add(kb);

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

//	@Override
//	public List<Keyboard> getKeyboardManufacturer(String manu) {
//		boolean f = false;
//		
//		try {
//			String sql = "Select * from keyboard where manufacturer = 'RED'";
//			PreparedStatement ps = connection.prepareStatement(sql);
//			ResultSet i = ps.executeQuery();
//			
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		
//		return f;
//	}
//	@Override
//	public List<Keyboard> getAllKeyboard() {
//		List<Keyboard> list = new ArrayList<Keyboard>();
//		Keyboard kb = null;
//		
//		try {
//			String sql = "select * from keyboard";
//			PreparedStatement ps = connection.prepareStatement(sql);
//			ResultSet rs = ps.executeQuery();
//			while(rs.next()) {
//				kb = new Keyboard();
//				kb.setIdKeyboard(rs.getInt(1));
//				kb.setKeyboardName(rs.getString(2));
//				kb.setManufacturer(rs.getString(3));
//				kb.setPrice(rs.getDouble(4));
//				kb.setType(rs.getString(5));
//				kb.setAmount(rs.getDouble(6));
//				kb.setImage(rs.getString(7));
//				list.add(kb);
//
//			}
//		} catch (Exception e) {
//			// TODO: handle exception
//		}
//		
//		return list;
//	}
	
	
}
