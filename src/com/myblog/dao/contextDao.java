package com.myblog.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
/**
 * 
 * 数据层操作接口
 */
import com.myblog.entities.*;

@Repository
public interface contextDao {

	public context getContextById(int id);

	public int getContextCount(int flag);

	public List<context> search(@Param("type") String type, @Param("title") String title);

	public List<context> getPageContext(@Param("flag") int flag,@Param("startPage") int startPage, @Param("endPage") int endPage);

	public List<context> getContext();

	public List<context> getAllContext();

	public context getContent(int id);

	public void insertContext(context context);

	public int updateContent(context context);

	public int deleteContext(@Param("flag") int flag,@Param("id") int id);
	

}