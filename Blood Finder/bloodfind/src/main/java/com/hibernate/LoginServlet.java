package com.hibernate;

import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.pojo.doner;
import com.pojo.user;

@WebServlet("/log")
public class LoginServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) {
		try {

			String bloodgrp = req.getParameter("bloodgrp");
			String selectstate = req.getParameter("selectstate");
			user u = new user();
			HttpSession session = req.getSession();

			if ("vishalkumarprajapati.vk@gmail.com".equals(bloodgrp) && "Vishal@123".equals(selectstate)) {
				session.setAttribute("userobj", u);
				u.setRole("admin");
				resp.sendRedirect("admin.jsp");
						
			}

			else  {
				Session s = Fatchdata.getFactory().openSession();
				Query q=s.createQuery("from doner");
				List<doner> list=q.list();
				
				for(doner doner:list){
					if(doner.getBgrp().equals(bloodgrp) || doner.getState().equals(selectstate)) {
						resp.sendRedirect("moreview.jsp");
					}
//					else {
//						session.setAttribute("suc", "Invalid Email And Password");
//						resp.sendRedirect("login.jsp");
//					}

				
				}
				
				session.setAttribute("suc", "Record Not Found ");
				resp.sendRedirect("login.jsp");
			}
				
				/*if (Us != null) {
					session.setAttribute("userobj", Us);
					resp.sendRedirect("home.jsp");
				} else {
					session.setAttribute("succMsg", "Invalid Email And Password");
					resp.sendRedirect("login.jsp");
				}*/
				
			

		} catch (Exception e) {

		}
	}
}
