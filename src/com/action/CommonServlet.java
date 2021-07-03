package com.action;

/**
 * 上传控制servlet中无法实现的功能由此操作 
 * 
 * 通用操作控制
 * 
 */
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.bean.NewsBean;
import com.bean.SystemBean;
import com.util.Constant;
import com.util.Filter;

public class CommonServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public CommonServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request,response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType(Constant.CONTENTTYPE);
		request.setCharacterEncoding(Constant.CHARACTERENCODING);
		String sysdir = new SystemBean().getDir();
		HttpSession session = request.getSession();
		
				String method = request.getParameter("method").trim();
				
				/**********************************************
				 * 新闻
				 ************************************************/
				if(method.equals("DELNEWS")){//删除新闻 来自普通新闻页面index.jsp
					String strDirPath = request.getSession().getServletContext().getRealPath("/");
					String check[] = request.getParameterValues("checkit");
        			if(check == null){
						request.setAttribute("message", "请选择要删除的记录！");
						request.getRequestDispatcher(sysdir+"/news/index.jsp").forward(request, response);
					}
					else{
						int id2[]= new int[check.length];
						for(int i = 0;i<check.length;i++){
							int s = Integer.parseInt(check[i]);				
							id2[i] = s;
						}
						int flag = new NewsBean().delNews(id2,strDirPath); 
						if(flag == Constant.SUCCESS){
							request.getRequestDispatcher(sysdir+"/news/index.jsp").forward(request, response);
						}
						else{
							request.setAttribute("message", "系统维护中，请稍后再试！");
							request.getRequestDispatcher(sysdir+"/news/index.jsp").forward(request, response);
						}
					}
				}
				else if(method.equals("HIDENEWS")){//隐藏、显示新闻 来自普通新闻页面index.jsp
					String id = Filter.escapeHTMLTags(request.getParameter("id").trim());
					int flag = new NewsBean().hideNews(Integer.parseInt(id));
					if(flag == Constant.SUCCESS){
						request.getRequestDispatcher(sysdir+"/news/index.jsp").forward(request, response);
					}
					else{
						request.setAttribute("message", "系统维护中，请稍后再试！");
						request.getRequestDispatcher(sysdir+"/news/index.jsp").forward(request, response);
					}
				}
				else if(method.equals("UPNEWS")){//置顶 新闻 来自普通新闻页面index.jsp
					String id = Filter.escapeHTMLTags(request.getParameter("id").trim());
					int flag = new NewsBean().upNews(Integer.parseInt(id));
					if(flag == Constant.SUCCESS){
						request.getRequestDispatcher(sysdir+"/news/index.jsp").forward(request, response);
					}
					else{
						request.setAttribute("message", "系统维护中，请稍后再试！");
						request.getRequestDispatcher(sysdir+"/news/index.jsp").forward(request, response);
					}
				}
				else if(method.equals("DELUPNEWS")){//删除新闻 来自置顶新闻页面up.jsp
					String strDirPath = request.getSession().getServletContext().getRealPath("/");
					String check[] = request.getParameterValues("checkit");
        			if(check == null){
						request.setAttribute("message", "请选择要删除的记录！");
						request.getRequestDispatcher(sysdir+"/news/up.jsp").forward(request, response);
					}
					else{
						int id2[]= new int[check.length];
						for(int i = 0;i<check.length;i++){
							int s = Integer.parseInt(check[i]);				
							id2[i] = s;
						}
						int flag = new NewsBean().delNews(id2,strDirPath); 
						if(flag == Constant.SUCCESS){
							request.getRequestDispatcher(sysdir+"/news/up.jsp").forward(request, response);
						}
						else{
							request.setAttribute("message", "系统维护中，请稍后再试！");
							request.getRequestDispatcher(sysdir+"/news/up.jsp").forward(request, response);
						}
					}
				}
				
				/**********************************************
				 * 删除视频	
				 ************************************************/
				else if(method.equals("delvideo")){//删除视频			
        			String id = Filter.escapeHTMLTags(request.getParameter("id")).trim();
        			int flag = new NewsBean().delVideo(Integer.parseInt(id));
	        		if(flag == Constant.SUCCESS){
	        			request.setAttribute("message", "操作成功！");
                    	request.getRequestDispatcher(sysdir+"/video/video.jsp").forward(request,response);
                    }
                    else{
                    	request.setAttribute("message", "操作失败，如果连续多次操作失败，请联系系统管理员！");
                		request.getRequestDispatcher(sysdir+"/video/video.jsp").forward(request,response);
                    }
        		}	
				else if(method.equals("delfile")){//删除			
        			String id = Filter.escapeHTMLTags(request.getParameter("id")).trim();
        			int flag = new NewsBean().delFiles(Integer.parseInt(id));
	        		if(flag == Constant.SUCCESS){
	        			request.setAttribute("message", "操作成功！");
                    	request.getRequestDispatcher("member/info/files.jsp").forward(request,response);
                    }
                    else{
                    	request.setAttribute("message", "操作失败，如果连续多次操作失败，请联系系统管理员！");
                		request.getRequestDispatcher("admin/info/files.jsp").forward(request,response);
                    }
        		}
				else if(method.equals("admindelfile")){//删除			
        			String id = Filter.escapeHTMLTags(request.getParameter("id")).trim();
        			int flag = new NewsBean().delFiles(Integer.parseInt(id));
	        		if(flag == Constant.SUCCESS){
	        			request.setAttribute("message", "操作成功！");
                    	request.getRequestDispatcher("admin/member/file.jsp").forward(request,response);
                    }
                    else{
                    	request.setAttribute("message", "操作失败，如果连续多次操作失败，请联系系统管理员！");
                		request.getRequestDispatcher("admin/member/file.jsp").forward(request,response);
                    }
        		}	
				else if(method.equals("shfile")){//审核		
        			String id = Filter.escapeHTMLTags(request.getParameter("id")).trim();
        			int flag = new NewsBean().shFiles(Integer.parseInt(id));
	        		if(flag == Constant.SUCCESS){
	        			request.setAttribute("message", "操作成功！");
                    	request.getRequestDispatcher("admin/member/file.jsp").forward(request,response);
                    }
                    else{
                    	request.setAttribute("message", "操作失败，如果连续多次操作失败，请联系系统管理员！");
                		request.getRequestDispatcher("admin/member/file.jsp").forward(request,response);
                    }
        		}	
				else{
	            	request.getRequestDispatcher("error.jsp").forward(request, response);
	            }
			

	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occure
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
