package com.myblog.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.myblog.entities.*;;
//import org.springframework.stereotype.Service;
@Service
public interface UserService {
	
	public user getuserinfo() throws Exception;
	
	public List<user> getListCount(int start) throws Exception;
	
	public int getCount() throws Exception; 

	public user getUserInfo(user user) throws Exception;
	
	public void update(user user) throws Exception;
	
	public void updateAll(List<user> list) throws Exception;
	
	public int deleteUser(int id) throws Exception;
	
	public void insert(user user)throws Exception;
}
