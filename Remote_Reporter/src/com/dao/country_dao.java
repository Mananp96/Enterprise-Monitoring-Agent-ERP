package com.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.vo.country_vo;

@Repository
public class country_dao {
	@Autowired
	SessionFactory sessionFactory;

	public void insert(country_vo reg) {
		// TODO Auto-generated method stub

		try
		{
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.save(reg);
			tr.commit();
			session.clear();
			session.close();
		}catch (Exception e){
			e.printStackTrace();
		}
	}

	public List viewCountry() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		List ls = new ArrayList();
		try {

			Query que = session.createQuery("from country_vo");
			ls = que.list();
			tr.commit();
			session.clear();
			session.close();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return ls;
	}

	public List edit(country_vo vo) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		List ls = new ArrayList();
		try {

			Query que = session.createQuery("from country_vo where id='"+ vo.getCountryid()+"'");
			ls = que.list();
			tr.commit();
			session.clear();
			session.close();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return ls;
	}

	public void delete(country_vo vo) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();

		try {

			session.delete(vo);

			tr.commit();
			
			session.clear();
			session.close();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		
	}

	public void update(country_vo vo) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();

		try {

			session.saveOrUpdate(vo);

			tr.commit();
			session.clear();
			session.close();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
	}
}
