package com.myblog.service.imp;

import java.util.List;
//import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.Service;
import com.myblog.entities.user;
import com.myblog.dao.userDao;
import com.myblog.service.UserService;
import javax.annotation.Resource;
import org.springframework.transaction.annotation.Transactional;

@Service("userService")  
public class UserServiceImpl implements UserService {
	@Resource
	private userDao userDao;

	public user getuserinfo() {
		return userDao.getUserinfo();
	}
	
	public int getCount() throws Exception{
		return userDao.getUserCount();
	}
	
	public List<user> getListCount(int start) {
		return userDao.getUserListCount(start);
	}
	

	public user getUserInfo(user user ) throws Exception {
		return this.userDao.getUser(user);
	}

	
	public void update(user user) throws Exception {		
			userDao.updateUser(user);	
	}
	
	@Transactional 
	public void updateAll(List<user> list)  {
		for(int i=0;i<list.size();i++){
		userDao.updateUser(list.get(i));	
		}
//		User userT = new User();		
//		userDao.updateUser(userT);
}

	public int deleteUser(int id) throws Exception {
		return userDao.deleteUser(id);
	}
	
	public void insert(user user)throws Exception{
		userDao.insertUser(user);
	}

}
