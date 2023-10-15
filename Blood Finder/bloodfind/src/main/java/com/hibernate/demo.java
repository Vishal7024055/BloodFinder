package com.hibernate;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale.Category;
import java.util.Properties;
import java.io.IOException;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.cfg.Environment;
import org.hibernate.service.ServiceRegistry;

import com.pojo.doner;
import com.pojo.user;

import javax.servlet.http.HttpSession;

public class demo {
	public static void main(String[] args) {
		
		String hql = "FROM doner p WHERE (p.bgrp IN (:targetNames) AND p.State IN (:rowNames))";
		Session session = Fatchdata.getFactory().openSession();
		List<String> targetNames = new ArrayList<>();
		targetNames.add("A-");
		

		List<String> rowNames = new ArrayList<>();
		rowNames.add("Uttar Pradesh");
		

		List<doner> doner = session.createQuery(hql, doner.class)
		        .setParameterList("targetNames", targetNames)
		        .setParameterList("rowNames", rowNames)
		        .list();

		session.close();

		if (!doner.isEmpty()) {
		    // You have found data with the specified target names and row names.
		    for (doner d : doner) {
		        // Process each person as needed
		    	System.out.println(d.getId());
		    	
		    }
		} else {
		    // No matching records found.
		}





		
		
	



		
		
		
		
	
	
		
		
		
	}
}
