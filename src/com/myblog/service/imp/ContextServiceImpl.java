package com.myblog.service.imp;



import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.myblog.entities.context;
import com.myblog.entities.page;
import com.myblog.dao.contextDao;

import com.myblog.service.ContextService;
import com.myblog.tools.PageBean;

import java.util.List;

import javax.annotation.Resource;

@Service("ContextService")
public  class ContextServiceImpl implements ContextService {
	@Resource
	private contextDao contextDao;

	@Resource
	
	private PageBean pagebean;
	/** 
	* @Title: getCount 
	* @Description: 由标志值确定数据库的数据总数
	* @param：null
	* @return context 
	* @throws Exception
	*/
	public int getCount(int flag) throws Exception{
		return contextDao.getContextCount(flag);
	}
	

	/** 
	* @Title: getContextInfo 
	* @Description: 获取博客的全部信息
	* @param：null
	* @return context 
	* @throws Exception
	*/
	public List<context> getContextInfo() throws Exception {
		return this.contextDao.getContext();
	}
	/** 
	* @Title: getContextById 
	* @Description: 更新博客数据
	* @param：context
	* @return void 
	* @throws Exception
	*/
	@Transactional(propagation=Propagation.REQUIRED,rollbackFor=Exception.class,timeout=1,isolation=Isolation.DEFAULT) 
	public void updateContent(context context) throws Exception {		
		contextDao.updateContent(context);	
	}
	
	/** 
	* @Title: getContextById 
	* @Description: 通过id修改标志量实现数据的删除
	* @param：id,flag
	* @return context 
	* @throws Exception
	*/
	@Transactional(propagation=Propagation.REQUIRED,rollbackFor=Exception.class,timeout=1,isolation=Isolation.DEFAULT) 
	public void deleteContext(int flag,int id) throws Exception {
		
		contextDao.deleteContext(flag,id);
		
	}
	
	/** 
	* @Title: getContextById 
	* @Description: 通数据库插入新的数据
	* @param：context,name
	* @return context 
	* @throws Exception
	*/
	@Transactional(propagation=Propagation.REQUIRED,rollbackFor=Exception.class,timeout=1,isolation=Isolation.DEFAULT) 
	public void insert(context context,String name)throws Exception{

		try {
			context.setAuthor(name);
	
			contextDao.insertContext(context);
		} catch (Exception e) {

			e.printStackTrace();
		}
	}



	@Override
	public List<context> getAllContextInfo() throws Exception {
	
		return contextDao.getAllContext();
	}



	@Override
	public context getContent(int id) throws Exception {
		// TODO Auto-generated method stub
		return contextDao.getContent(id);
	}


	/** 
	* @Title: getContextById 
	* @Description: 通过limit语句查询分页数据
	* @param：flag,startpage,endpage
	* @return list<context >
	* @throws Exception
	*/
	@Override
	public List<context> getPageContext(@Param("flag") int flag,@Param("startPage") int startPage, @Param("endPage") int endPage) throws Exception {
		// TODO Auto-generated method stub
		return contextDao.getPageContext(flag,startPage,endPage);
	}


	/** 
	* @Title: getContextById 
	* @Description: 通过id获取数据库内容
	* @param：id
	* @return context 
	* @throws Exception
	*/
	@Override
	public context getContextById(int id) throws Exception {
		// TODO Auto-generated method stub
		return contextDao.getContextById(id);
	}



	@Override
	public List<context> search(String type, String title) throws Exception {
		// TODO Auto-generated method stub
		return contextDao.search(type, title);
	}



	@Override
	public void BatchDelete(int [] id) throws Exception {
		
		for(int ids:id){
		
		 contextDao.deleteContext(1,ids);
		 
		}
		
	}


	/** 
	* @Title: FindPage 
	* @Description: 设置数据分页所使用的属性
	* @param：currentpage,pagenumber
	* @return pagebean 
	* @throws Exception
	*/
	@Override
	public PageBean FindPage(int currentpage ,int pagenumber) throws Exception {
		
		int totaloage=contextDao.getContextCount(0);
	
		int pagecount =totaloage/pagenumber ;
	
		pagecount =totaloage%pagenumber ==0 ? pagecount : pagecount+1;
		 
		System.out.println(pagecount);
		
		pagebean.setCurrent_page(currentpage);
		
		pagebean.setTotal_page(pagecount);
		
		List<context> pagelist=contextDao.getPageContext(0,(currentpage-1)*pagenumber, pagenumber);
		
		pagebean.setPage_list(pagelist);
	
		return pagebean;
	}


	/** 
	* @Title: FindPage 
	* @Description: 设置数据分页所使用的属性
	* @param：currentpage,pagenumber
	* @return pagebean 
	* @throws Exception
	*/
	@Override
	public PageBean FindRecyclePage(int currentpage, int pagenumber) throws Exception {
		int totaloage=contextDao.getContextCount(1);
		System.out.println(totaloage);
		int pagecount =totaloage/pagenumber ;
		
		System.out.println(pagecount);
		
		pagecount =totaloage%pagenumber ==0 ? pagecount : pagecount+1;
		 
		System.out.println(pagecount);
		
		pagebean.setCurrent_page(currentpage);
		
		pagebean.setTotal_page(pagecount);
		
		List<context> pagelist=contextDao.getPageContext(1,(currentpage-1)*pagenumber, pagenumber);
		
		pagebean.setPage_list(pagelist);
	
		return pagebean;
	}

}
