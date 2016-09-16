package com.myblog.service.imp;



import org.springframework.stereotype.Service;

import com.myblog.entities.context;

import com.myblog.dao.contextDao;

import com.myblog.service.ContextService;

import java.util.List;

import javax.annotation.Resource;

@Service("ContextService")
public  class ContextServiceImpl implements ContextService {
	@Resource
	private contextDao contextDao;

	
	
	public int getCount() throws Exception{
		return contextDao.getContextCount();
	}
	

	
	public List<context> getContextInfo() throws Exception {
		return this.contextDao.getContext();
	}

	
	public void update(context context) throws Exception {		
		contextDao.updateContext(context);	
	}
	


	public int deleteContext(int id) throws Exception {
		return contextDao.deleteContext(id);
	}
	
	public void insert(context context)throws Exception{
		contextDao.insertContext(context);
	}



	@Override
	public List<context> getAllContextInfo() throws Exception {
	
		return contextDao.getAllContext();
	}



	@Override
	public context getContent(String title) throws Exception {
		// TODO Auto-generated method stub
		return contextDao.getContent(title);
	}

}
