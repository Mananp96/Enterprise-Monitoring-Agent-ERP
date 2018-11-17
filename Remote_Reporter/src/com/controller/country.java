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

import com.vo.country_vo;





@Controller
public class country { 
	@Autowired
	country_dao cd;
	
	@RequestMapping(value="/add_country.do",method=RequestMethod.GET)
	public ModelAndView getreq()
	{
		return new ModelAndView("admin/add_country","countryreg",new country_vo());
		
	}
	
	//method for add Country
	@RequestMapping(value="/save.do",method=RequestMethod.POST)
	public ModelAndView save(@ModelAttribute country_vo reg,HttpServletRequest req)
	{
		cd.insert(reg);
		
		return new ModelAndView("redirect:add_country.do");
		
	}//end of method add Country
	
	//method for viewCountry
	@RequestMapping(value="/view_country.do",method=RequestMethod.GET)
	public ModelAndView viewCountry(@ModelAttribute country_vo reg,HttpServletRequest req)
	{
		List ls=cd.viewCountry();
		HttpSession session =req.getSession();
		session.setAttribute("list", ls);
		
		return new ModelAndView("admin/view_country");
		
	}//end of method viewCountry
	
	@RequestMapping(value="/delete.do",method=RequestMethod.GET)
	public ModelAndView delete(HttpServletRequest req)
	{	
		int countryid = Integer.parseInt(req.getParameter("id"));
		country_vo vo = new country_vo();
		vo.setCountryid(countryid);
		cd.delete(vo);
		return new ModelAndView("redirect:view_country.do");
		
	}
	
	
	
	@RequestMapping(value="/edit.do",method=RequestMethod.GET)
	public ModelAndView editCountry(HttpServletRequest req)
	{	
		int countryid = Integer.parseInt(req.getParameter("id"));
		
		country_vo vo = new country_vo();
		vo.setCountryid(countryid);
		
		
		List ls = cd.edit(vo);
		return new ModelAndView("admin/edit_country","update",(country_vo)ls.get(0));
		
	}
	
	@RequestMapping(value="/update.do",method=RequestMethod.POST)
	public ModelAndView updateCountry(@ModelAttribute country_vo reg,HttpServletRequest req)
	{
		cd.update(reg);
		
		return new ModelAndView("redirect:view_country.do");
		
	}
}
