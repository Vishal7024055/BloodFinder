package com.hibernate;
import java.io.IOException;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
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
import javax.servlet.http.HttpSession;

import com.pojo.doner;
import com.hibernate.*;
@WebServlet("/home")
public class UtillforDoner extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name=req.getParameter("fname");
		String email=req.getParameter("email");
		String num=req.getParameter("num");
		String dob=req.getParameter("dob");
		String bloodgrp=req.getParameter("bloodgrp");
		String selectstate=req.getParameter("selectstate");
		String city=req.getParameter("city");
		String redio=req.getParameter("redio");
		Fatchdata f= new Fatchdata();
		
		
		
		
		
		System.out.println("project start");
	       SessionFactory sf=null;
	       Configuration cf=new Configuration();
	       Properties p= new Properties();
	       p.put(Environment.DRIVER, "com.mysql.jdbc.Driver");
	       p.put(Environment.URL, "JDBC:MySql://localhost:3306/bloodbank2");
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
	       doner d= new doner();
	     //  t.setTid(0);
	      d.setName(name);
	      d.setEmail(email);
	      d.setMobile(num);
	      d.setDob(dob);
	      d.setBgrp(bloodgrp);
	      d.setState(selectstate);
	      d.setCity(city);
	      d.setHiv(redio);
	     
	      
	     
	       Session s= sf.openSession();
	       Transaction tx=s.beginTransaction();
	       s.save(d);
	       s.getTransaction().commit();
	       s.close();
	       HttpSession hs= req.getSession();
	      

				hs.setAttribute("succMsg", "!.Donor Registration Succesfull.!");
				resp.sendRedirect("Reg.jsp");
			return;
	       
		
		
		
		
		
	}
	
	  

}
