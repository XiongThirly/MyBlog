package com.myblog.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.myblog.entities.comments;

import com.myblog.tools.PageBean;

public interface CommentsService {
    int deleteByPrimaryKey(Integer commentsid)throws Exception;

    int insert(comments record)throws Exception;

    int insertSelective(comments record)throws Exception;

    List<comments> selectComment()throws Exception;
    
    
    
    public PageBean FindPage(int page ,int index) throws Exception;
}
