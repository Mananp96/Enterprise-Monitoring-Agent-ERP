package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ownerProfile {
	@RequestMapping(value="/profile.do",method=RequestMethod.GET)
	public ModelAndView getreq()
	{
		
		
		return new ModelAndView("owner/profile");		
	}
}
