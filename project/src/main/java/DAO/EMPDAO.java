package DAO;

import java.sql.SQLException;
import java.util.List;

import Emp.DTO.EMP;

public interface EMPDAO {

	List<EMP> getAllList();
	EMP getEMP(int empno);
	int delEMP(int empno);
	int insertEMP(EMP emp);
	int updateEMP(EMP emp) throws ClassNotFoundException,SQLException;
	
}
