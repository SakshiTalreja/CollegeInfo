package com.ScrappingDemo;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class CollegeInformation {

	public static void main(String[] args) {
		
		Document doc;
		Elements body;
		String data, data1,data2,data22,data33,data3,data4;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/CollegeInfo.", "root", "");
			Statement smt = cn.createStatement();
		try {
			for(int i=0;i<534;i++) {
			 doc=Jsoup.connect("https://www.indcareer.com/find/science-and-engineering-colleges?page="+i+"").get();
			 body=doc.select("ul.list-group");
			
//			System.out.println((body).select("div.media").size());
//			Elements body1=doc.select("div.item-list");
						
			  for(Element e : body.select("li.list-group-item")) {
				 data=e.select("div.media h4 a").attr("title");
			     data1=e.select("div.media h4 a").attr("href");
			     data2=e.select("span").text();
			     data3=e.select("span").text();
			     data4=e.select("div.media-body ul.list-unstyled li").text();
			    
			     if(data.length()!=0 && data1.length()!=0 && data2.length()!=0 && data3.length()!=0) {
			    	data22=data2.substring(0, data2.indexOf(" "));
			    	data33=data3.substring(data3.indexOf(" ")+1);
			        System.out.println(data);
			        System.out.println("https://www.indcareer.com"+data1);
			        System.out.println(data2.substring(0, data2.indexOf(" ")));
			        System.out.println(data3.substring(data3.indexOf(" ")+1));
			        System.out.println(data4);
			        System.out.println();
			        String insert="insert into colleges values('"+data.replace("'","''")+"','"+data1+"','"+data22+"','"+data33+"','"+data4.replace("'","''")+"')"; 
				    smt.executeUpdate(insert);
				}
		      }
			}		
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}catch(Exception exp) {
			System.out.println("Error: "+exp);
		}

	}

}
