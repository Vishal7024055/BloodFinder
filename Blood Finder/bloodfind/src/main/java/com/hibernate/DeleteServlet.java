/*
 * package com.hibernate;
 * 
 * import java.io.IOException; import java.net.http.HttpRequest; import
 * java.net.http.HttpResponse;
 * 
 * import javax.servlet.ServletException; import
 * javax.servlet.annotation.WebServlet; import javax.servlet.http.HttpServlet;
 * import javax.servlet.http.HttpServletRequest; import
 * javax.servlet.http.HttpServletResponse; import com.hibernate.*; import
 * com.pojo.doner;
 * 
 * import org.hibernate.Session; import org.hibernate.Transaction;
 * 
 * public class DeleteServlet extends HttpServlet { private static final long
 * serialVersionUID = 1L;
 * 
 * public DeleteServlet() { super();
 * 
 * }
 * 
 * protected void doGet(HttpServletRequest req, HttpServletResponse res) throws
 * ServletException,IOException {
 * 
 * try { int donerID=Integer.parseInt(req.getParameter("id").trim()); Session s=
 * Fatchdata.getFactory().openSession(); Transaction tx= s.beginTransaction();
 * doner d=(doner) s.get(doner.class, donerID); s.delete(d); tx.commit();
 * s.close(); res.sendRedirect("admin.jsp");
 * 
 * } catch (Exception e) {
 * 
 * }
 * 
 * 
 * }
 * 
 * }
 */