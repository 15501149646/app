package adapter;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

public class MyRequest extends HttpServletRequestWrapper {
   private HttpServletRequest request;
	
	
	public MyRequest(HttpServletRequest request) {
		super(request);
		// TODO Auto-generated constructor stub
		this.request=request;
	}
	
	@Override
		public String getParameter(String name) {
			// TODO Auto-generated method stub
		try {
			String names = request.getParameter(name);
			
			
			names=new String(names.getBytes("ISO-8859-1"),"UTF-8");
			System.out.println(names);
			return names;
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
			return null;
		}

}
