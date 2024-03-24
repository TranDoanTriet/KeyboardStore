package com.keyboard.DAO;
import java.util.List;

import com.keyboard.entity.Keyboard;


public interface KeyboarDAO {
	public boolean addKeyboard(Keyboard keyboard);
	public List<Keyboard> getAllKeyboard();
	public Keyboard getKeyboardById(int id);
	public boolean updateKeyboard(Keyboard kb);
	public boolean deleteKeyboard(int id);
	public List<Keyboard> getKeyboardManufacturer(String manu);
}
