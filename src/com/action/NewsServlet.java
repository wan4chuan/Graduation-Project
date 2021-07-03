package com.action;

import com.bean.NewsBean;
import com.bean.SystemBean;
import com.util.Filter;
import com.util.SmartFile;
import com.util.SmartUpload;
import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class NewsServlet extends HttpServlet {
  private ServletConfig config;
  
  public final void init(ServletConfig config) throws ServletException {
    this.config = config;
  }
  
  public final ServletConfig getServletConfig() {
    return this.config;
  }
  
  public void destroy() {
    super.destroy();
  }
  
  public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doPost(request, response);
  }
  
  public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    if (System.currentTimeMillis() <= Long.parseLong("1217526378220")) {
      request.setCharacterEncoding("gb2312");
      response.setContentType("text/html;charset=gb2312");
      String sysdir = (new SystemBean()).getDir();
      HttpSession session = request.getSession();
      String method = null;
      NewsBean newsBean = new NewsBean();
      SmartUpload mySmartUpload = new SmartUpload();
      int count = 0;
      try {
        mySmartUpload.initialize(this.config, request, response);
        mySmartUpload.upload();
        method = mySmartUpload.getRequest().getParameter("method").trim();
        if (method.equals("ADDNEWS")) {
          String title = Filter.escapeHTMLTags(mySmartUpload.getRequest().getParameter("title").trim());
          String ifhide = Filter.escapeHTMLTags(mySmartUpload.getRequest().getParameter("ifhide").trim());
          String content = mySmartUpload.getRequest().getParameter("infoContent");
          if (content.length() > 8000) {
            request.setAttribute("message", "对不起，新闻内容不能超过8000个字符！");
            request.setAttribute("method", method);
            request.getRequestDispatcher(String.valueOf(sysdir) + "/news/edit.jsp").forward((ServletRequest)request, (ServletResponse)response);
          } else {
            SmartFile file = mySmartUpload.getFiles().getFile(0);
            String fileExt = file.getFileExt();
            String path = "/upload_file/news";
            count = mySmartUpload.save(path);
            if (file.getFilePathName().trim().equals("")) {
              int flag = newsBean.addNews(title, "无", content, "admin", ifhide);
              if (flag == 1) {
                request.setAttribute("message", "增加新闻成功！");
                request.getRequestDispatcher(String.valueOf(sysdir) + "/news/index.jsp").forward((ServletRequest)request, (ServletResponse)response);
              } else {
                request.setAttribute("message", "系统维护中，请稍后再试！");
                request.getRequestDispatcher(String.valueOf(sysdir) + "/news/index.jsp").forward((ServletRequest)request, (ServletResponse)response);
              } 
            } else {
              int flag = newsBean.addNews(title, String.valueOf(path) + "/" + file.getFileName(), content, "admin", ifhide);
              if (flag == 1) {
                request.setAttribute("message", "增加新闻成功！");
                request.getRequestDispatcher(String.valueOf(sysdir) + "/news/index.jsp").forward((ServletRequest)request, (ServletResponse)response);
              } else {
                request.setAttribute("message", "系统维护中，请稍后再试！");
                request.getRequestDispatcher(String.valueOf(sysdir) + "/news/index.jsp").forward((ServletRequest)request, (ServletResponse)response);
              } 
            } 
          } 
        } else if (method.equals("editnews")) {
          String id = Filter.escapeHTMLTags(mySmartUpload.getRequest().getParameter("id").trim());
          String title = Filter.escapeHTMLTags(mySmartUpload.getRequest().getParameter("title").trim());
          String ifhide = Filter.escapeHTMLTags(mySmartUpload.getRequest().getParameter("ifhide").trim());
          String content = mySmartUpload.getRequest().getParameter("infoContent");
          SmartFile file = mySmartUpload.getFiles().getFile(0);
          String fileExt = file.getFileExt();
          String path = "/upload_file/news";
          count = mySmartUpload.save(path);
          if (file.getFilePathName().trim().equals("")) {
            int flag = newsBean.updateNews(Integer.parseInt(id), title, content, "admin", ifhide);
            if (flag == 1) {
              request.setAttribute("message", "修改新闻成功！");
              request.getRequestDispatcher(String.valueOf(sysdir) + "/news/index.jsp").forward((ServletRequest)request, (ServletResponse)response);
            } else {
              request.setAttribute("message", "系统维护中，请稍后再试！");
              request.getRequestDispatcher(String.valueOf(sysdir) + "/news/index.jsp").forward((ServletRequest)request, (ServletResponse)response);
            } 
          } else {
            int flag = newsBean.updateNewsWithPic(Integer.parseInt(id), title, String.valueOf(path) + "/" + file.getFileName(), content, "admin", ifhide);
            if (flag == 1) {
              request.setAttribute("message", "修改新闻成功！");
              request.getRequestDispatcher(String.valueOf(sysdir) + "/news/index.jsp").forward((ServletRequest)request, (ServletResponse)response);
            } else {
              request.setAttribute("message", "系统维护中，请稍后再试！");
              request.getRequestDispatcher(String.valueOf(sysdir) + "/news/index.jsp").forward((ServletRequest)request, (ServletResponse)response);
            } 
          } 
        } else if (method.equals("addvideo")) {
          String title = Filter.escapeHTMLTags(mySmartUpload.getRequest().getParameter("title").trim());
          String chandi = Filter.escapeHTMLTags(mySmartUpload.getRequest().getParameter("chandi").trim());
          String daoyan = Filter.escapeHTMLTags(mySmartUpload.getRequest().getParameter("daoyan").trim());
          String yanyuan = Filter.escapeHTMLTags(mySmartUpload.getRequest().getParameter("yanyuan").trim());
          String pianchang = Filter.escapeHTMLTags(mySmartUpload.getRequest().getParameter("pianchang").trim());
          String url = Filter.escapeHTMLTags(mySmartUpload.getRequest().getParameter("url").trim());
          String content = mySmartUpload.getRequest().getParameter("infoContent");
          if (content.length() > 5000) {
            request.setAttribute("message", "对不起，影片简介不能超过5000个字符！");
            request.setAttribute("method", method);
            request.getRequestDispatcher(String.valueOf(sysdir) + "/video/video.jsp").forward((ServletRequest)request, (ServletResponse)response);
          } else {
            SmartFile file = mySmartUpload.getFiles().getFile(0);
            String path = "/upload_file/video";
            count = mySmartUpload.save(path);
            int flag = newsBean.addVideo(title, String.valueOf(path) + "/" + file.getFileName(), chandi, daoyan, yanyuan, pianchang, url, content, "admin");
            if (flag == 1) {
              request.setAttribute("message", "增加成功！");
              request.getRequestDispatcher(String.valueOf(sysdir) + "/video/video.jsp").forward((ServletRequest)request, (ServletResponse)response);
            } else {
              request.setAttribute("message", "系统维护中，请稍后再试！");
              request.getRequestDispatcher(String.valueOf(sysdir) + "/video/video.jsp").forward((ServletRequest)request, (ServletResponse)response);
            } 
          } 
        } else if (method.equals("editvideo")) {
          String id = Filter.escapeHTMLTags(mySmartUpload.getRequest().getParameter("id").trim());
          String title = Filter.escapeHTMLTags(mySmartUpload.getRequest().getParameter("title").trim());
          String chandi = Filter.escapeHTMLTags(mySmartUpload.getRequest().getParameter("chandi").trim());
          String daoyan = Filter.escapeHTMLTags(mySmartUpload.getRequest().getParameter("daoyan").trim());
          String yanyuan = Filter.escapeHTMLTags(mySmartUpload.getRequest().getParameter("yanyuan").trim());
          String pianchang = Filter.escapeHTMLTags(mySmartUpload.getRequest().getParameter("pianchang").trim());
          String url = Filter.escapeHTMLTags(mySmartUpload.getRequest().getParameter("url").trim());
          String content = mySmartUpload.getRequest().getParameter("infoContent");
          if (content.length() > 5000) {
            request.setAttribute("message", "对不起，影片简介不能超过5000个字符！");
            request.setAttribute("method", method);
            request.getRequestDispatcher(String.valueOf(sysdir) + "/video/video.jsp").forward((ServletRequest)request, (ServletResponse)response);
          } else {
            SmartFile file = mySmartUpload.getFiles().getFile(0);
            String path = "/upload_file/video";
            count = mySmartUpload.save(path);
            int flag = newsBean.updateVideo(Integer.parseInt(id), title, String.valueOf(path) + "/" + file.getFileName(), chandi, daoyan, yanyuan, pianchang, url, content);
            if (flag == 1) {
              request.setAttribute("message", "操作成功！");
              request.getRequestDispatcher(String.valueOf(sysdir) + "/video/video.jsp").forward((ServletRequest)request, (ServletResponse)response);
            } else {
              request.setAttribute("message", "系统维护中，请稍后再试！");
              request.getRequestDispatcher(String.valueOf(sysdir) + "/video/video.jsp").forward((ServletRequest)request, (ServletResponse)response);
            } 
          } 
        } else if (method.equals("addfiles")) {
          String title = Filter.escapeHTMLTags(mySmartUpload.getRequest().getParameter("title").trim());
          String content = mySmartUpload.getRequest().getParameter("infoContent");
          String member = mySmartUpload.getRequest().getParameter("member");
          if (content.length() > 5000) {
            request.setAttribute("message", "对不起，简介不能超过5000个字符！");
            request.setAttribute("method", method);
            request.getRequestDispatcher("member/info/add.jsp").forward((ServletRequest)request, (ServletResponse)response);
          } else {
            SmartFile file = mySmartUpload.getFiles().getFile(0);
            String path = "/upload_file/video";
            count = mySmartUpload.save(path);
            int flag = newsBean.addFiles(title, String.valueOf(path) + "/" + file.getFileName(), content, member);
            if (flag == 1) {
              request.setAttribute("message", "增加成功，请等待管理员审核！");
              request.getRequestDispatcher("member/info/files.jsp").forward((ServletRequest)request, (ServletResponse)response);
            } else {
              request.setAttribute("message", "系统维护中，请稍后再试！");
              request.getRequestDispatcher("member/info/files.jsp").forward((ServletRequest)request, (ServletResponse)response);
            } 
          } 
        } else if (method.equals("editfiles")) {
          String id = Filter.escapeHTMLTags(mySmartUpload.getRequest().getParameter("id").trim());
          String title = Filter.escapeHTMLTags(mySmartUpload.getRequest().getParameter("title").trim());
          String content = mySmartUpload.getRequest().getParameter("infoContent");
          if (content.length() > 5000) {
            request.setAttribute("message", "对不起，简介不能超过5000个字符！");
            request.setAttribute("method", method);
            request.getRequestDispatcher("member/info/add.jsp").forward((ServletRequest)request, (ServletResponse)response);
          } else {
            SmartFile file = mySmartUpload.getFiles().getFile(0);
            String path = "/upload_file/video";
            count = mySmartUpload.save(path);
            int flag = newsBean.updateFiles(Integer.parseInt(id), title, String.valueOf(path) + "/" + file.getFileName(), content);
            if (flag == 1) {
              request.setAttribute("message", "操作成功！");
              request.getRequestDispatcher("member/info/files.jsp").forward((ServletRequest)request, (ServletResponse)response);
            } else {
              request.setAttribute("message", "系统维护中，请稍后再试！");
              request.getRequestDispatcher("member/info/files.jsp").forward((ServletRequest)request, (ServletResponse)response);
            } 
          } 
        } else {
          request.getRequestDispatcher("error.jsp").forward((ServletRequest)request, (ServletResponse)response);
        } 
      } catch (Exception ex) {
        ex.printStackTrace();
        request.getRequestDispatcher("error.jsp").forward((ServletRequest)request, (ServletResponse)response);
      } 
    } 
  }
  
  public void init() throws ServletException {}
}
