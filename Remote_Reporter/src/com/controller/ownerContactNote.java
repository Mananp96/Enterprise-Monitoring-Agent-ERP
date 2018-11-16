package com.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dao.ContactNoteDao;
import com.dao.ownerContactDao;
import com.vo.ContactNoteVo;
import com.vo.country_vo;
import com.vo.dealVo;
import com.vo.ownerCompanyVo;
import com.vo.ownerContactVo;

@Controller
public class ownerContactNote {

	@Autowired
	ownerContactDao contactDao;

	@Autowired
	ContactNoteDao noteDao;

	// method for add Contact Note
	@RequestMapping(value = "/addcontactNote.do", method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute ContactNoteVo contactNoteVo, HttpServletRequest req) {
		noteDao.addcontactNote(contactNoteVo);

		List noteContactlist = noteDao.getContactNote(contactNoteVo.getOwnerContactVo());
		req.getSession().setAttribute("noteContactlist", noteContactlist);
		return new ModelAndView("owner/contactProfile", "ownerprofile", new ContactNoteVo());

	}// end of method add contact note
	/*
	 * @RequestMapping(value="/viewcontactNote.do",method=RequestMethod.GET)
	 * public ModelAndView viewCompany(@ModelAttribute ContactNoteVo
	 * contactNoteVo,HttpServletRequest req) { int contactid; contactid =
	 * Integer.parseInt(req.getParameter("id")); ownerContactVo contactprofilevo
	 * =new ownerContactVo(); contactprofilevo.setContactid(contactid); List
	 * noteContactlist = noteDao.getContactNote(contactprofilevo); HttpSession
	 * session =req.getSession(); session.setAttribute("noteContactlist",
	 * noteContactlist); return new
	 * ModelAndView("owner/contactProfile","ownerprofile",contactNoteVo); }
	 */

	@RequestMapping(value = "/noteContactDelete.do", method = RequestMethod.GET)
	public ModelAndView deldeal(@ModelAttribute ContactNoteVo notevo, HttpServletRequest req) {

		int noteid = Integer.parseInt(req.getParameter("noteid"));

		notevo.setContactNoteid(noteid);
		noteDao.deleteNoteContact(notevo);

		int contactid = Integer.parseInt(req.getParameter("id"));
		HttpSession session = req.getSession();
		session.setAttribute("contactid", contactid);
		
		ownerContactVo ownerContactVo = new ownerContactVo();
		ownerContactVo.setContactid(contactid);
		
		
		List noteContactlist = noteDao.getContactNote(ownerContactVo);
		req.getSession().setAttribute("noteContactlist", noteContactlist);
		System.out.println("manan");
		return new ModelAndView("owner/contactProfile", "ownerprofile", new ContactNoteVo());

	}
}
