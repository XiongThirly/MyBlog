package com.myblog.service.imp;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.myblog.dao.commentsDao;
import com.myblog.entities.comments;
import com.myblog.entities.context;
import com.myblog.service.CommentsService;
import com.myblog.tools.PageBean;



@Service("CommentsService")

public class CommentsServiceImp implements CommentsService {

	@Resource

	private commentsDao comments;
	
	@Resource
	private PageBean pagebean;
	
	@Override
	public int deleteByPrimaryKey(Integer commentsid) throws Exception {
		
		
		comments.deleteByPrimaryKey(commentsid);
		
		return 0;
	}

	@Override
	public int insert(comments record) throws Exception {
		
		comments.insert(record);
		
		return 0;
	}

	@Override
	public int insertSelective(comments record) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<comments> selectComment() throws Exception {
		
		List<comments> comment_list = new ArrayList<comments>();
		
		comment_list = comments.selectComment();
		
		return comment_list;
	}
	@Override
	public PageBean FindPage(int currentpage ,int pagenumber) throws Exception {
		
		int totaloage=comments.getCommentCount(0);
	
		int pagecount =totaloage/pagenumber ;
	
		pagecount =totaloage%pagenumber ==0 ? pagecount : pagecount+1;
		 
		System.out.println(pagecount);
		
		pagebean.setCurrent_page(currentpage);
		
		pagebean.setTotal_page(pagecount);
		
		List<context> pagelist=comments.getPageContext(0,(currentpage-1)*pagenumber, pagenumber);
		
		pagebean.setPage_list(pagelist);
	
		return pagebean;
	}



}
