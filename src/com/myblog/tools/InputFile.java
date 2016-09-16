package com.myblog.tools;


import java.io.BufferedWriter;
import java.io.File;



import java.io.FileWriter;
import java.io.IOException;

import org.springframework.stereotype.Service;

@Service
public class InputFile {
	/**
	 * @param 传入文本内容及文件名
	 * @return 返回文件地址
	 * @author Thirly
	 */
	public String inputFile(Integer number,String txt){
	String FileAddress = "D:/file/";
	String FileName = number.toString()+".txt";

	
	 try {

		 

		   File file = new File(FileAddress+FileName);

		
		   if (!file.exists()) {
		    file.createNewFile();
		   }

		   FileWriter fw = new FileWriter(file.getAbsoluteFile());
		   BufferedWriter bw = new BufferedWriter(fw);
		   bw.write(txt);
		   bw.close();

	

		  } catch (IOException e) {
		   e.printStackTrace();
		  }

	return FileAddress+FileName;
	}
}
