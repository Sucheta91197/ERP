package com.erp.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.erp.entites.AccountPayable;
import com.erp.entites.Budget;
import com.erp.utill.HibernateUtill;

public class BudgetDao

{

	public static boolean saveBudget(Budget budget) {

		Boolean status = false;
		Session session = HibernateUtill.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();
		if ((Integer) session.save(budget) != 0) {
			status = true;
		}
		transaction.commit();
		session.close();
		return status;
	}

	public static List<Budget> getAllBudget() {

		Session session = HibernateUtill.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();
		List<Budget> list = new ArrayList<Budget>();
		Query query = session.createQuery("from Budget");
		list = query.list();
		transaction.commit();
		session.close();
		return list;

	}

	public static Budget getBudget(int id) {

		SessionFactory sf = HibernateUtill.getSessionFactory();

		Session session = sf.openSession();

		Transaction tx = session.beginTransaction();

		Budget budget = session.get(Budget.class, id);
		if (budget != null) {
			return budget;
		}
		tx.commit();
		session.close();
		return new Budget();
	}

	

	public static boolean deleteBudget(int id) {

		SessionFactory sf = HibernateUtill.getSessionFactory();

		Session session = sf.openSession();

		Transaction tx = session.beginTransaction();

		session.delete(getBudget(id));

		tx.commit();
		session.close();

		return true;
	}

	public static boolean updateBudget(Budget budget) {
		SessionFactory sf = HibernateUtill.getSessionFactory();
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(budget);
		tx.commit();
		session.close();
		return true;
	}

}
