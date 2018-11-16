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

import com.vo.dealVo;


@Repository
public class dealNoteDao {
	@Autowired
	SessionFactory sessionFactory;

	public void adddealNote(dealVo dealvo) {
			
		try
		{
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.save(dealvo);
			tr.commit();
			session.clear();
			session.close();
		}catch (Exception e){
			e.printStackTrace();
		}
	}

	public List viewDealnote(dealVo dealvo) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		List noteDeallist = new ArrayList();
		try {

			Query que = session.createQuery("from deaNoteVo where dealVo = '"+dealvo.getDealid()+"'");
			noteDeallist = que.list();
			tr.commit();
			session.clear();
			session.close();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return noteDeallist;
	}

}
