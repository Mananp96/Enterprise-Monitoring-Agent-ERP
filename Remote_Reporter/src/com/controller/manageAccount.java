package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class manageAccount {
	@RequestMapping(value="/view_owner.do",method=RequestMethod.GET)
	public ModelAndView viewOwner()
	{
		return new ModelAndView("admin/view_owner");		
	}
	
	@RequestMapping(value="/view_employee.do",method=RequestMethod.GET)
	public ModelAndView viewEmployee()
	{
		return new ModelAndView("admin/view_employee");		
	}
}
