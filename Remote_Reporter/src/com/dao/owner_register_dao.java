package com.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.vo.owner_register_vo;

@Repository
public class owner_register_dao {

	@Autowired
	SessionFactory sessionFactory;

	public void insert(owner_register_vo reg) {
		try {
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.save(reg);
			tr.commit();
			session.clear();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
