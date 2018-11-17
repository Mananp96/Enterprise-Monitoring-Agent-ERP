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
import com.vo.loginVo;
import com.vo.ownerCompanyVo;

@Controller
public class ownerCompanies {
	@Autowired
	ownerCompanyDao cd;
	
	@Autowired
	country_dao dao;
	
	@Autowired
	loginDao loginDao;
	
	@RequestMapping(value="/owner_companies.do",method=RequestMethod.GET)
	public ModelAndView viewCompany(@ModelAttribute ownerCompanyVo vo,HttpServletRequest req)
	{	
		String userName = BaseMethod.getCurrentUser().getUsername();
		
		loginVo loginVo = new loginVo();
		loginVo.setUserName(userName);
		
		int loginId = this.loginDao.getLoginID(loginVo);
		
		loginVo.setLogid(loginId);
		vo.setLoginVo(loginVo);
		
		List ls=cd.viewCompany(vo);
		HttpSession session =req.getSession();
		session.setAttribute("list", ls);
		
		List ls1=dao.viewCountry();
		session.setAttribute("clist", ls1);
	
		return new ModelAndView("owner/owner_companies","ownerCompany",new ownerCompanyVo());		
	}
	@RequestMapping(value="/addCompany.do",method=RequestMethod.POST)
	public ModelAndView save(@ModelAttribute ownerCompanyVo vo,HttpServletRequest req)
	{
		String userName = BaseMethod.getCurrentUser().getUsername();
		
		loginVo loginVo = new loginVo();
		loginVo.setUserName(userName);
		
		int loginId = this.loginDao.getLoginID(loginVo);
		
		loginVo.setLogid(loginId);
		vo.setLoginVo(loginVo);
		cd.insert(vo);
		
		return new ModelAndView("redirect:owner_companies.do");
		
	}
	
}
