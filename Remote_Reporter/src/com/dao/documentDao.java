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
import com.vo.documentVo;


@Repository
public class documentDao {
	@Autowired
	SessionFactory sessionFactory;
	
	
	
	public void insert_dealdoc(documentVo documentVo) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.save(documentVo);
			tr.commit();
			session.clear();
			session.close();
	}
	
	public  void insert_taskdoc(documentVo documentVo) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.save(documentVo);
			tr.commit();
			session.clear();
			session.close();
	}

	public List viewdoc(documentVo documentVo) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		List docls = new ArrayList();
		try {

			Query que = session.createQuery("from documentVo where loginVo='"+documentVo.getLoginVo().getLogid()+"'");
			docls = que.list();
			tr.commit();
			session.clear();
			session.close();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return docls;
		
		
	}
	
	/*public List getfolder(documentVo documentVo) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		List ls = new ArrayList();
		List ls2 = new ArrayList();
		
	      		
		try {

			Query que = session.createQuery("from documentVo where folderName like '"+deal+"'");
			Query que2 = session.createQuery("from documentVo where folderName like '"+task+"'");
			ls = que.list();
			ls2 = que2.list();
			tr.commit();
			session.close();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return ls,ls2;
	}*/

	public List getDealDoc(documentVo documentVo) {

		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		List fileDoc = new ArrayList();
		try {

			Query que = session.createQuery("from documentVo where folderName='"+documentVo.getFolderName()+"' ");
			fileDoc = que.list();
			tr.commit();
			session.clear();
			session.close();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		
		return fileDoc;
	}

	public List getTaskDoc(String flag) {
		// TODO Auto-generated method stub
		
		return null;
	}
	
}



/*package com.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.vo.documentVo;


@Repository
public class documentDao {
	@Autowired
	SessionFactory sessionFactory;
	
	
	
	public void insert_dealdoc(documentVo documentVo) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.save(documentVo);
			tr.commit();
			session.clear();
			session.close();
	}
	
	public  void insert_taskdoc(documentVo documentVo) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.save(documentVo);
			tr.commit();
			session.clear();
			session.close();
	}

	public List getfolder(documentVo documentVo) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		List ls = new ArrayList();
		try {

			Query que = session.createQuery("from documentVo GROUP BY folderName");
			ls = que.list();
			tr.commit();
			session.clear();
			session.close();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return ls;
	}
	
}*/
