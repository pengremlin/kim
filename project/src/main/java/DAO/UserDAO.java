package DAO;

import java.sql.SQLException;
import java.util.List;

import User.DTO.User_info;




public interface UserDAO {
	
	List<User_info> getAllUser();
	int insertUser(User_info user_no);
	int delUser(int user_no);
	User_info getUser(int user_no);
	int updateUser(User_info user) throws ClassNotFoundException,SQLException;

}
