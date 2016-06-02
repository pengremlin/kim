package controller;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import DAO.EMPDAO;
import Emp.DTO.EMP;
import service.EmpService;

@Controller
public class EMPController {

	@Autowired
	private EmpService empservice;
	
	
	
	@RequestMapping("/calendar.htm")
	public String calendar() {
		return "emp/calendar";

	}
	
	
	@RequestMapping("/milestone.htm")
	public String milestone() {
		return "emp/milestone";

	}
	
	
	@RequestMapping("/leancanvas.htm")
	public String canvas() {
		return "emp/leancanvas";

	}
	
	@RequestMapping("/chart.htm")
	public String chart() {
		return "emp/chart";

	}
	
	@RequestMapping("/drag.htm")
	public String drag() {
		return "emp/drag";

	}
	
	@RequestMapping("/drag2.htm")
	public String drag2() {
		return "emp/drag2";

	}

	@RequestMapping("/writeform.htm")
	public String writeForm() {
		return "emp/writeform";

	}

	@RequestMapping("/write.htm")
	public String write(EMP dto) {

		return empservice.write(dto);
	}

	@RequestMapping("/getAllList.htm")
	public String list(Model model) {

		List<EMP> list = empservice.list();

		model.addAttribute("list", list);
		
		return "emp/list";
	}

	@RequestMapping("/read.htm")
	public String read(int user_no, Model model) {

		EMP dto = empservice.read(user_no);
		

		model.addAttribute("b", dto);
		return "emp/read";
	}

	@RequestMapping("/update.htm")
	public String update(int user_no, Model model) {
		System.out.println(user_no);
		model.addAttribute("b",empservice.update(user_no));
		return "emp/updateform";
	}

	@RequestMapping("/updateok.htm")
	public String updateok(EMP emp, Model model) {

		try {
			empservice.updateok(emp);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		model.addAttribute("user_no", emp.getUser_no());

		return "redirect:/read.htm";
	}

	@RequestMapping("/delete.htm")
	public String delete(int user_no, Model model) {

		return empservice.delete(user_no);
	}
	
	@RequestMapping("/search.htm")
	public String search(int user_no, Model model) {

		EMP dto = empservice.read(user_no);
		

		model.addAttribute("b", dto);
		return "emp/read";
	}

}
