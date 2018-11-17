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

import com.vo.ContactNoteVo;
import com.vo.ownerContactVo;

@Repository
public class ContactNoteDao {

	@Autowired
	SessionFactory sessionFactory;
	
	public void addcontactNote(ContactNoteVo contactNoteVo) {
		// TODO Auto-generated method stub
			try
			{
				Session session = sessionFactory.openSession();
				Transaction tr = session.beginTransaction();
				session.save(contactNoteVo);
				tr.commit();
				session.clear();
				session.close();
			}catch (Exception e){
				e.printStackTrace();
			}
		}

	public List getContactNote(ownerContactVo contactprofilevo) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		List noteContactlist = new ArrayList();
		try {

			Query que = session.createQuery("from ContactNoteVo where ownerContactVo = '"+contactprofilevo.getContactid()+"'");
			noteContactlist = que.list();
			tr.commit();
			session.clear();
			session.close();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return noteContactlist;
	}

	public void deleteContactNote(ownerContactVo cvo) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();

		try {

			Query query = session.createQuery("delete from ContactNoteVo where ownerContactVo = '" +cvo.getContactid() + "'");
			query.executeUpdate();
			System.out.println("manan");
			tr.commit();
			session.clear();
			session.close();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
	}

	public void deleteNoteContact(ContactNoteVo notevo) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();

		try {

			session.delete(notevo);

			tr.commit();
			session.clear();
			session.close();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
	}

	

}
