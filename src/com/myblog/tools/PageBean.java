package com.myblog.tools;



import java.util.List;

import org.springframework.stereotype.Component;

import com.myblog.entities.context;

@Component
public class PageBean {

		private int page_number;
		
		private int index;
		
		private int total_page;
		
		private int current_page;
		
		private List<context> page_list;

		public int getPage_number() {
			return page_number;
		}

		public void setPage_number(int page_number) {
			this.page_number = page_number;
		}

		public int getIndex() {
			return index;
		}

		public void setIndex(int index) {
			this.index = index;
		}

		public int getTotal_page() {
			return total_page;
		}

		public void setTotal_page(int total_page) {
			this.total_page = total_page;
		}

		public int getCurrent_page() {
			return current_page;
		}

		public void setCurrent_page(int current_page) {
			this.current_page = current_page;
		}

		public List<context> getPage_list() {
			return page_list;
		}

		public void setPage_list(List<context> page_list) {
			this.page_list = page_list;
		}

		
		
		
	
}
