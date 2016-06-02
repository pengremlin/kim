package service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import DAO.EMPDAO;
import DAO.ProjectDAO;
import DTO.Board;

@Component
@Service
public class ProjectService {

	@Autowired
	private SqlSession sqlsession;
	
	
	public String insertmemo(Board board) {

		ProjectDAO projectDAO = sqlsession.getMapper(ProjectDAO.class);

		projectDAO.insertmemo(board);

		return "redirect:/drag2.htm";
	}
}
