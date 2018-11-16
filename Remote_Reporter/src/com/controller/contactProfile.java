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

import com.dao.ContactNoteDao;
import com.dao.country_dao;
import com.dao.dealDao;
import com.dao.ownerContactDao;
import com.dao.taskDao;
import com.vo.ContactNoteVo;
import com.vo.ownerContactVo;

@Controller
public class contactProfile {
	
	@Autowired
	ownerContactDao cpDAO;
	
	@Autowired
	country_dao cd;
	
	@Autowired
	dealDao dealdao;
	
	@Autowired
	taskDao taskdao;
	
	@Autowired
	ContactNoteDao noteDao;
	
	@RequestMapping(value="/contactProfile.do",method=RequestMethod.GET)
	public ModelAndView viewProfile(HttpServletRequest req)
	{
		int contactid;
		HttpSession session =req.getSession();
	
		
		contactid = Integer.parseInt(req.getParameter("id"));
		
	
	ownerContactVo contactprofilevo =new ownerContactVo();
	contactprofilevo.setContactid(contactid);
	
	List contactprofileList =cpDAO.contactProfile(contactprofilevo);
	List countryList=cd.viewCountry();
	List dealContactlist = dealdao.getContactDeal(contactprofilevo);
	List noteContactlist = noteDao.getContactNote(contactprofilevo);
	
	session.setAttribute("clist", countryList);
	session.setAttribute("cplist", contactprofileList);
	System.out.println("contactProfileList>>>>>>>>" + contactprofileList.size());
	session.setAttribute("dealContactlist", dealContactlist);	
	session.setAttribute("noteContactlist", noteContactlist);
	
	return new ModelAndView("owner/contactProfile","ownerprofile",new ContactNoteVo());
		
	}
	
	@RequestMapping(value="/contactDelete.do",method=RequestMethod.GET)
	public ModelAndView contactdelete(@ModelAttribute ownerContactVo cvo,HttpServletRequest req)
	{	
		int contactid = Integer.parseInt(req.getParameter("id"));
		cvo.setContactid(contactid);
		System.out.println(contactid);
		noteDao.deleteContactNote(cvo);
		dealdao.deleteContactDeal(cvo);
		taskdao.deleteContactTask(cvo);
		cpDAO.delete_contact(cvo);
		
		System.out.println("manan");
		return new ModelAndView("redirect:viewContact.do");
		
	}
	
	@RequestMapping(value="/contactEdit.do",method=RequestMethod.GET)
	public ModelAndView contactedit(@ModelAttribute ownerContactVo cvo,HttpServletRequest req)
	{
		int contactid = Integer.parseInt(req.getParameter("id"));
		
		ownerContactVo contactprofilevo =new ownerContactVo();
		contactprofilevo.setContactid(contactid);
		
		List ls =cpDAO.contactProfile(contactprofilevo);
		List ls1=cd.viewCountry();
		HttpSession session =req.getSession();
		session.setAttribute("clist", ls1);
		session.setAttribute("cplist", ls);
			
		return new ModelAndView("redirect:contactProfile.do");
		
	}
	
	@RequestMapping(value="/contactUpdate.do",method=RequestMethod.POST)
	public ModelAndView contactupdate(@ModelAttribute ownerContactVo cvo,HttpServletRequest req)
	{
		int id = Integer.parseInt(req.getParameter("id"));
		cpDAO.update_contact(cvo);
		System.out.println("manan");
		return new ModelAndView("redirect:viewContact.do");
		
	}
	
	
	
}	
