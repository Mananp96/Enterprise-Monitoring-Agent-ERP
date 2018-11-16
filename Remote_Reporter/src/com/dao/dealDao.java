package com.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.controller.contactProfile;
import com.vo.dealVo;
import com.vo.ownerContactVo;

@Repository
public class dealDao {

	@Autowired
	SessionFactory sessionFactory;

	public void insert(dealVo dealvo) {
		// TODO Auto-generated method stub
		try {
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.save(dealvo);
			tr.commit();

			session.clear();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public List viewDeal(dealVo dealVo) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		List ls = new ArrayList();
		try {

			Query que = session.createQuery("from dealVo where loginVo = '"+dealVo.getLoginVo().getLogid()+"'");
			ls = que.list();
			tr.commit();

			session.clear();
			session.close();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return ls;

	}

	public List edit(dealVo dealvo) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		List editlist = new ArrayList();
		try {

			Query que = session.createQuery("from dealVo where id = '" + dealvo.getDealid() + "'");
			editlist = que.list();
			tr.commit();
			session.clear();
			session.close();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return editlist;
	}

	public void delete_deal(dealVo dealvo) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();

		try {

			session.delete(dealvo);

			tr.commit();
			session.clear();
			session.close();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
	}

	public void delete_attachment(dealVo dealvo) {
		try {
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query query = session.createQuery("delete from documentVo where dealVo = '" + dealvo.getDealid() + "'");
			query.executeUpdate();
			tr.commit();
			session.clear();
			session.close();

		} catch (HibernateException e) {
			e.printStackTrace();
		}
	}

	public void update_deal(dealVo dealvo) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();

		try {

			session.saveOrUpdate(dealvo);

			tr.commit();
			session.clear();
			session.close();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
	}

	public List getContactDeal(ownerContactVo contactprofilevo) {
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		List dealContactlist = new ArrayList();
		try {

			Query que = session
					.createQuery("from dealVo where ownerContactVo = '" + contactprofilevo.getContactid() + "'");
			dealContactlist = que.list();
			tr.commit();
			session.clear();
			session.close();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return dealContactlist;
	}

	public void deleteContactDeal(ownerContactVo cvo) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();

		try {

			Query query = session.createQuery("delete from dealVo where ownerContactVo = '" + cvo.getContactid() + "'");
			query.executeUpdate();
			System.out.println("manan");
			tr.commit();
			session.clear();
			session.close();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
	}

	public List countDeal() {

		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		List<dealVo> dealContactlist = new ArrayList();
		try {

			SQLQuery que = session.createSQLQuery("SELECT COUNT(dealid),MONTH(dealDate) FROM `ownerdeal` GROUP BY MONTH(dealDate)");
			dealContactlist = que.list();
			tr.commit();
			session.clear();
			session.close();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		//System.err.println("dealVo GROUP BY MONTH(dealDate)"+dealContactlist.);
		return dealContactlist;
	}

	public List viewDealProfile(dealVo dealvo) {
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		List dealprofile = new ArrayList();
		try {

			Query que = session.createQuery("from dealVo where id='"+ dealvo.getDealid()+"'");
			dealprofile = que.list();
			tr.commit();
			session.clear();
			session.close();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return dealprofile;
		
	}

	
}
