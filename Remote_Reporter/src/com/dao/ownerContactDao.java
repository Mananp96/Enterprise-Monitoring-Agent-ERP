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

import com.vo.ownerCompanyVo;
import com.vo.ownerContactVo;

@Repository
public class ownerContactDao {

	@Autowired
	SessionFactory sessionFactory;

	public void insert(ownerContactVo cvo) {
		try {
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.save(cvo);
			tr.commit();
			session.clear();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public List viewContact(ownerContactVo ownerContactVo) {
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		List ls = new ArrayList();

		try {
			Query que = session.createQuery(
					"from ownerContactVo where loginVo = '" + ownerContactVo.getLoginVo().getLogid() + "'");
			ls = que.list();
			tr.commit();
			session.clear();
			session.close();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return ls;
	}

	public List contactProfile(ownerContactVo vo) {
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		List ls = new ArrayList();

		try {

			Query que = session.createQuery("from ownerContactVo where id='" + vo.getContactid() + "'");
			ls = que.list();
			tr.commit();
			session.clear();
			session.close();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return ls;
	}

	public void delete_contact(ownerContactVo cvo) {
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();

		try {
			session.delete(cvo);

			tr.commit();
			session.clear();
			session.close();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
	}

	public List edit_contact(ownerContactVo cvo) {
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		List ls = new ArrayList();
		try {

			Query que = session.createQuery("from regV where id='" + cvo.getContactid() + "'");
			ls = que.list();
			tr.commit();
			session.clear();
			session.close();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return ls;
	}

	public void update_contact(ownerContactVo cvo) {
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();

		try {

			session.saveOrUpdate(cvo);

			tr.commit();
			session.clear();
			session.close();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
	}

	public void insertFK(ownerCompanyVo companyVo) {
		try {
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.save(companyVo);
			tr.commit();
			session.clear();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
