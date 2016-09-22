package com.myblog.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.myblog.entities.comments;
import com.myblog.entities.context;

@Repository

	public interface commentsDao{
	
	public List<context> getPageContext(@Param("flag") int flag,@Param("startPage") int startPage, @Param("endPage") int endPage);
	
	public int getCommentCount(int flag);
	
	 public   int deleteByPrimaryKey(Integer commentsid);

	 public   int insert(comments record);

	 public  int insertSelective(comments record);

	 public    List< comments> selectComment();

	
}
