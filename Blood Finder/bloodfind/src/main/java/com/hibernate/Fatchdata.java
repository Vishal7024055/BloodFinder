package com.hibernate;
import java.util.Properties;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.cfg.Environment;
import org.hibernate.service.ServiceRegistry;
import com.pojo.*;

// Data Fatch
public class Fatchdata {
	public static SessionFactory factory;
	public static SessionFactory getFactory() {
		
		if(factory==null) {
			
			factory= new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		}
		return factory;
	}
	public void closefactory() {
		if(factory.isOpen()) {
			
			factory.close();
		}
	}
	
}
