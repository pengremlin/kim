package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;


import DAO.UserDAO;

import User.DTO.User_info;

@Component
@Service
public class UserService {
	@Autowired
	private SqlSession sqlsession;
	

	public List<User_info> list() {

		UserDAO userDao = sqlsession.getMapper(UserDAO.class);
		List<User_info> list = userDao.getAllUser();

		return list;
	}
	
	
	
}
