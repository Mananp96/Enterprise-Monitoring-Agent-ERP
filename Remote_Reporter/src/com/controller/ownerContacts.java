package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dao.country_dao;
import com.dao.loginDao;
import com.dao.ownerCompanyDao;
import com.dao.ownerContactDao;
import com.vo.loginVo;
import com.vo.ownerCompanyVo;
import com.vo.ownerContactVo;

@Controller
public class ownerContacts {

	@Autowired
	ownerContactDao cd;

	@Autowired
	country_dao dao;

	@Autowired
	ownerCompanyDao companyDao;

	@Autowired
	loginDao loginDao;

	@RequestMapping(value = "/viewContact.do", method = RequestMethod.GET)
	public ModelAndView viewContact(@ModelAttribute ownerContactVo cvo, HttpServletRequest req,
			ownerCompanyVo companyVo) {
		String userName = BaseMethod.getCurrentUser().getUsername();

		loginVo loginVo = new loginVo();
		loginVo.setUserName(userName);

		int loginId = this.loginDao.getLoginID(loginVo);

		loginVo.setLogid(loginId);
		cvo.setLoginVo(loginVo);
		companyVo.setLoginVo(loginVo);

		HttpSession session = req.getSession();
		List contactList = cd.viewContact(cvo);
		session.setAttribute("list", contactList);
		System.out.println("contactlist>>>>>>>>>>" + contactList.size());

		List countryList = dao.viewCountry();
		session.setAttribute("clist", countryList);

		List<?> companyList = companyDao.viewCompany(companyVo);
		session.setAttribute("olist", companyList);

		return new ModelAndView("owner/owner_contacts", "ownerContact", new ownerContactVo());
	}

	@RequestMapping(value = "/add_contact.do", method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute ownerContactVo cvo, HttpServletRequest req, ownerCompanyVo companyVo) {
		String userName = BaseMethod.getCurrentUser().getUsername();

		loginVo loginVo = new loginVo();
		loginVo.setUserName(userName);

		int loginId = this.loginDao.getLoginID(loginVo);

		loginVo.setLogid(loginId);
		cvo.setLoginVo(loginVo);

		companyVo = cvo.getOwnerCompanyVo();
		cd.insertFK(companyVo);

		cvo.setOwnerCompanyVo(companyVo);

		cd.insert(cvo);
		System.out.println("manan");
		return new ModelAndView("redirect:viewContact.do");

	}
}
