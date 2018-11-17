package com.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.vo.loginVo;

@Repository
public class loginDao {
	
	@Autowired
	SessionFactory sessionFactory;

	public void insert(loginVo lvo) {
		// TODO Auto-generated method stub
		try
		{
			Session session = sessionFactory.openSession();
			session.save(lvo);
			Transaction tr = session.beginTransaction();
			tr.commit();
			session.close();
		}catch (Exception e){
			e.printStackTrace();
		}
	}

	public int getLoginID(loginVo loginVo) {

		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from loginVo where userName='"+loginVo.getUserName()+"'");
		List<loginVo> ls = query.list();
		return ls.get(0).getLogid();
	}

	public List compareUsername(loginVo loginVo) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from loginVo where userName='"+loginVo.getUserName()+"'");
		List<loginVo> ls = query.list();
		return ls;
	}

	public void updatePassword(loginVo loginVo) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		
		Transaction tr = session.beginTransaction();

		try {

			session.saveOrUpdate(loginVo);

			tr.commit();
			session.clear();
			session.close();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
	}

	

	
}
