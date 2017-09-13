package lis;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;


public class listen implements HttpSessionBindingListener{
      private String name="";
	 public listen(){}
	 public listen(String name){
		 this.name=name;;
	 }
	
	@Override
	public void valueBound(HttpSessionBindingEvent arg0) {
		// TODO Auto-generated method stub
		
		HttpSession session = arg0.getSession();
		
		ServletContext servletContext = session.getServletContext();
		
		List<String> nameList =(List<String>) servletContext.getAttribute("names");
		if(nameList==null){
			  nameList=new ArrayList<String>();
			servletContext.setAttribute("names", nameList);
			
		}
		
		nameList.add(name);
		
		System.out.println("用户已上线");
		
		
	}

	@Override
	public void valueUnbound(HttpSessionBindingEvent arg0) {
		// TODO Auto-generated method stub
HttpSession session = arg0.getSession();
		
		ServletContext servletContext = session.getServletContext();
		
		List<String> nameList =(List<String>) servletContext.getAttribute("names");
		nameList.remove(name);
		
		System.out.println(name+"用户已下线");
		
	}

}
