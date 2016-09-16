package com.myblog.dao;

import java.util.List;

import org.springframework.stereotype.Repository;
/**
 * 
 * 数据层操作接口
 */
import com.myblog.entities.*;
@Repository
public interface userDao {
	public user getUserinfo(); 
	 
	 public List<user> getUserListCount(int start);
	 
	 public int getUserCount();
	
	 public user getUser(user user);
	 
	 public void insertUser(user user);
	 
	 public int updateUser(user user);
	
	 public int deleteUser(int id);
}