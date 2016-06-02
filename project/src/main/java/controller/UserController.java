package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import Emp.DTO.EMP;
import User.DTO.User_info;
import service.UserService;
@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/getAllUser.htm")
	public String list(Model model) {

		List<User_info> list = userService.list();

		model.addAttribute("list", list);
		
		return "user/list";
	}
	
	
	
}
