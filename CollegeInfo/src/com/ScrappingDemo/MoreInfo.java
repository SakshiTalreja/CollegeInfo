package com.ScrappingDemo;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;


public class MoreInfo {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Document doc,doc1;
		Elements body,body1;
		String data,data1,clgname,clgweb,clgphone,phone = null,clgemail;
		int j;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/CollegeInfo", "root", "");
			Statement smt = cn.createStatement();
		try {
			for(int i=502;i<533;i++){
			 doc=Jsoup.connect("https://www.indcareer.com/find/science-and-engineering-colleges?page="+i+"").get();
			 body=doc.select("ul.list-group");
			 //System.out.println((body).select("div.media").size());
			 //Elements body1=doc.select("div.item-list");
			 j=0;
			 if(j<(body).select("div.media").size()) {
				 for(Element e : body.select("li.list-group-item")) {
					 
					 data=e.select("div.media h4 a").attr("href");
					 //System.out.println(data);
					 doc1=Jsoup.connect("https://www.indcareer.com"+data+"").get();
					 body1=doc1.select("div.col-sm-4.pull-right");
					 clgname=(body1).select("table.table.table-bordered caption.fn.org").text();
					 for(Element e1 : body1.select("table.table.table-bordered tbody tr")){
						 
						 data1=e1.select("th").text();
						 clgweb=e1.select("td a").attr("href");
						 clgphone=e1.select("td").text();
						 if(data1.equals("Phone")) {
							 
							 phone=clgphone;
						 }
						 if(data1.equals("Website")){
							 clgemail="https://www.indcareer.com"+data+"";
							 String insert="insert into moreinfo values('"+clgname.replace("'","''")+"','"+phone.replace("'","''")+"','"+clgweb+"','"+clgemail+"')"; 
						     smt.executeUpdate(insert);
						     System.out.println(clgname);
						     System.out.println(phone);
						     System.out.println(clgweb);
						     System.out.println(clgemail);
						 }
					 }					 
				 }
				 j++;
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