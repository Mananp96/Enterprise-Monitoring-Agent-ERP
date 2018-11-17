package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;




	@Controller
	public class index{
	
		@RequestMapping(value="/index.do",method=RequestMethod.GET)
		public ModelAndView getreq()
		{
			return new ModelAndView("admin/index");		
		}
		@RequestMapping(value="/Form_validation.do",method=RequestMethod.GET)
		public ModelAndView getform()
		{
			return new ModelAndView("admin/Form_validation");		
		}
		@RequestMapping(value="/Data_table.do",method=RequestMethod.GET)
		public ModelAndView getdata()
		{
			return new ModelAndView("admin/Data_table");		
		}
	}