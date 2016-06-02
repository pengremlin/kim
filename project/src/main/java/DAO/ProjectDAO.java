package DAO;

import java.sql.SQLException;
import java.util.List;

import DTO.Board;
import Project.DTO.Project;



public interface ProjectDAO {
	
	List<Project> getAllProject();
	int insertProject(Project project);
	int delInven(int project_no);
	Project getProject(int project_no);
	int updateProject(Project project) throws ClassNotFoundException,SQLException;
	int insertmemo(Board board);
	
}
