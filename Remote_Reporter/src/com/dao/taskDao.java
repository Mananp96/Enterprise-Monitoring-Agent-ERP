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

import com.vo.ownerContactVo;
import com.vo.taskVo;

@Repository
public class taskDao {

	@Autowired
	SessionFactory sessionFactory;

	public void insert(taskVo taskvo) {
		try {
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.save(taskvo);
			tr.commit();
			session.clear();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public List viewTask(taskVo taskVo) {
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		List ls = new ArrayList();
		try {
			Query que = session.createQuery("from taskVo where loginVo = '" + taskVo.getLoginVo().getLogid() + "'");
			ls = que.list();
			tr.commit();
			session.clear();
			session.close();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return ls;
	}

	public List edit(taskVo taskvo) {
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		List editlist = new ArrayList();
		try {
			Query que = session.createQuery("from taskVo where id = '" + taskvo.getTaskid() + "'");
			editlist = que.list();
			tr.commit();
			session.clear();
			session.close();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return editlist;
	}

	public void delete_task(taskVo taskvo) {
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();

		try {
			session.delete(taskvo);
			tr.commit();
			session.clear();
			session.close();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
	}

	public void delete_taskattachment(taskVo taskvo) {
		try {
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query query = session.createQuery("delete from documentVo where taskVo = '" + taskvo.getTaskid() + "'");
			query.executeUpdate();
			tr.commit();
			session.clear();
			session.close();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
	}

	public void update_task(taskVo taskvo) {
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();

		try {
			session.saveOrUpdate(taskvo);
			tr.commit();
			session.clear();
			session.close();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
	}

	public void deleteContactTask(ownerContactVo cvo) {
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();

		try {
			Query query = session.createQuery("delete from taskVo where ownerContactVo = '" + cvo.getContactid() + "'");
			query.executeUpdate();
			System.out.println("manan");
			tr.commit();
			session.clear();
			session.close();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
	}
}
