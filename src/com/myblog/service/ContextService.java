package com.myblog.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import com.myblog.entities.*;
import com.myblog.tools.PageBean;;
//import org.springframework.stereotype.Service;
@Service
public interface ContextService {
	
	public context getContextById (int id)throws Exception;
	
	public int getCount(int flag) throws Exception; 
	
	public context getContent(int id) throws Exception; 

	public List<context> getContextInfo() throws Exception;
	
	public void updateContent(context context) throws Exception;
	
	public List<context> getAllContextInfo() throws Exception;
	
	public List<context> search(@Param("type") String type, @Param("title") String title)throws Exception;
	
	 public List<context>getPageContext(@Param("flag") int flag,@Param("startPage") int startPage, @Param("endPage") int endPage) throws Exception;
	
	public void deleteContext(@Param("flag") int flag,@Param("id") int id) throws Exception;
	
	public void BatchDelete(int [] id) throws Exception;
	
	public void insert(context context,String name)throws Exception;
	
	public PageBean FindPage(int page ,int index) throws Exception;
	
	public PageBean FindRecyclePage(int page ,int index) throws Exception;
}