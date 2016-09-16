package com.myblog.dao;

import java.util.List;

import org.springframework.stereotype.Repository;
/**
 * 
 * 数据层操作接口
 */
import com.myblog.entities.*;
@Repository
public interface contextDao {
	
	 
	 public int getContextCount();
	
	 public List<context> getContext();
	 
	 public List<context> getAllContext();
	 
	 public context getContent(String title);
	 
	 public void insertContext(context context);
	 
	 public int updateContext(context context);
	
	 public int deleteContext(int id);
}