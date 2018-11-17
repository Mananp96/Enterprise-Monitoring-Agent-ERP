package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ownerInbox {
	@RequestMapping(value="/owner_inbox.do",method=RequestMethod.GET)
	public ModelAndView getreq()
	{
		return new ModelAndView("owner/owner_inbox");		
	}
}

