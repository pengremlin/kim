package DAO;

import java.sql.SQLException;
import java.util.List;

import Emp.DTO.EMP;
import Inven.DTO.Inven;

public interface InvenDAO {
	
	List<Inven> getAllList();
	int insertInven(Inven inven);
	int delInven(int inven_no);
	Inven getInven(int inven_no);
	int updateInven(Inven inven) throws ClassNotFoundException,SQLException;
	
	
}
