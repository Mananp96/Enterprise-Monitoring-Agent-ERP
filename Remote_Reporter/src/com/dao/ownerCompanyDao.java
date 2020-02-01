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

@Repository
public class ownerCompanyDao {
	@Autowired
	SessionFactory sessionFactory;

	public List viewCompany(ownerCompanyVo ownerCompanyVo) {
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		List ls = new ArrayList();
		try {
			Query que = session.createQuery(
					"from ownerCompanyVo where loginVo = '" + ownerCompanyVo.getLoginVo().getLogid() + "'");
			ls = que.list();
			tr.commit();
			session.clear();
			session.close();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return ls;
	}

	public void insert(ownerCompanyVo vo) {
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();

		try {
			session.save(vo);
			tr.commit();
			session.clear();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
