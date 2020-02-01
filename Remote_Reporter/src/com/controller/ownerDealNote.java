package com.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dao.dealDao;
import com.dao.dealNoteDao;
import com.vo.dealVo;

@Controller
public class ownerDealNote {
	@Autowired
	dealDao dealdao;

	@Autowired
	dealNoteDao dealnoteDao;

	// method for add Deal Note
	@RequestMapping(value = "/adddealNote.do", method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute dealVo dealvo, HttpServletRequest req) {
		dealnoteDao.adddealNote(dealvo);

		return new ModelAndView("owner/dealProfile", "dealprofile", dealnoteDao);

	}// end of method add Deal note
}
