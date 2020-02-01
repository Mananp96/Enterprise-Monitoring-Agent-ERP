package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dao.dealDao;
import com.dao.dealNoteDao;
import com.vo.dealVo;

@Controller
public class dealProfile {

	@Autowired
	dealDao dealdao;

	@Autowired
	dealNoteDao dealnoteDao;

	@RequestMapping(value = "/viewDealProfile.do", method = RequestMethod.GET)
	public ModelAndView getreq(HttpServletRequest req) {
		int dealid = Integer.parseInt(req.getParameter("id"));
		dealVo dealvo = new dealVo();
		dealvo.setDealid(dealid);
		List<?> noteDeallist = dealnoteDao.viewDealnote(dealvo);
		System.out.println("dealNoteList>>>>>>" + noteDeallist);
		List<?> dealprofile = dealdao.viewDealProfile(dealvo);

		HttpSession session = req.getSession();
		session.setAttribute("noteDeallist", noteDeallist);
		session.setAttribute("dealprofile", dealprofile);
		return new ModelAndView("owner/dealProfile");
	}

}
