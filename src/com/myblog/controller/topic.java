package com.myblog.controller;

import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("topic")
public class topic {

	public Map<Object, Object> topics(@RequestParam("sno") String sno,@RequestParam("name") String name){
		
		Map<Object,Object>  map= new HashMap<>();
		
	    Random r = new Random();
		
		int n=r.nextInt(37);
	
		n=Math.abs(r.nextInt()%37)+1;
		
        while(n!=0){
    	
    	
    	
    }
		return map;
		
		
	}
	
}
