package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import DTO.Board;
import service.EmpService;
import service.ProjectService;

@Controller
public class ProjectController {
	
	@Autowired
	private ProjectService projectService;
	
	@RequestMapping("/insertmemo.htm")
	public String write(Board board) {

		return projectService.insertmemo(board);
	}
	
	
}
