package com.myblog.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.myblog.entities.*;;
//import org.springframework.stereotype.Service;
@Service
public interface ContextService {
	

	
	public int getCount() throws Exception; 
	
	public context getContent(String title) throws Exception; 

	public List<context> getContextInfo() throws Exception;
	
	public void update(context context) throws Exception;
	
	public List<context> getAllContextInfo() throws Exception;
	
	public int deleteContext(int id) throws Exception;
	
	public void insert(context context)throws Exception;
}