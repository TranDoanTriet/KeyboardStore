package keyboard.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class defaultController {
	@RequestMapping("index")
	public String index() {
		return "index";
	}
	@RequestMapping("/signup")
	public String signup() {
		return "signup";
	}
	
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	@RequestMapping("/adminHome")
	public String admin() {
		return "adminHome";
	}
	@RequestMapping("/addKeyboard")
	public String addBook() {
		return "addKeyboard";
	}
	
	@RequestMapping("/allKeyboard")
	public String allBook() {
		return "allKeyboard";
	}
	@RequestMapping("order")
	public String order() {
		return "order";
	}
	@RequestMapping("edit-keyboard")
	public String edit_keyboard() {
		return "edit-keyboard";
	}
	@RequestMapping("logout")
	public String logout() {
		return "login";
	}
	@RequestMapping("keyboardManufacturer")
	public String manufacturer() {
		return "index";
	}
}
