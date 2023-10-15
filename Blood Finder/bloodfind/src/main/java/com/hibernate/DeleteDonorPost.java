package com.hibernate;

import java.io.IOException;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.cfg.Environment;
import org.hibernate.service.ServiceRegistry;

import com.pojo.doner;
@WebServlet("/DeleteServlet")
public class DeleteDonorPost extends HttpServlet {

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int id =Integer.parseInt(req.getParameter("id"));
		
		System.out.println("project start");
	       SessionFactory sf=null;
	       Configuration cf=new Configuration();
	       Properties p= new Properties();
	       p.put(Environment.DRIVER, "com.mysql.jdbc.Driver");
	       p.put(Environment.URL, "JDBC:MySql://localhost:3306/bloodbank");
	       p.put(Environment.USER, "root");
	       p.put(Environment.PASS, "Vishal@123");
	       p.put(Environment.DIALECT, "org.hibernate.dialect.MySQL8Dialect");
	       p.put(Environment.HBM2DDL_AUTO, "update");
	       p.put(Environment.SHOW_SQL, "true");
	       cf.setProperties(p);
	       cf.addAnnotatedClass(doner.class);
	       StandardServiceRegistryBuilder ssr= new StandardServiceRegistryBuilder();
	       ServiceRegistry sr= ssr.applySettings(cf.getProperties()).build();
	      sf=cf.buildSessionFactory(sr);
			/* doner d= new doner(); */
	     //  t.setTid(0);
	       
	      doner d= new doner();
	      d.setId(id);
	       Session s= sf.openSession();
	      s.delete(d);
	       Transaction tx=s.beginTransaction();
	       s.save(d);
	       s.getTransaction().commit();
	       s.close();
	       resp.sendRedirect("admin.jsp");
		
	}

	

}

