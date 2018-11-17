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

import com.dao.dealDao;
import com.dao.documentDao;
import com.dao.loginDao;
import com.dao.ownerCompanyDao;
import com.dao.ownerContactDao;
import com.vo.dealVo;
import com.vo.loginVo;

@Controller
public class ownerCalender {
	@Autowired
	dealDao dealdao;
	
	@Autowired
	ownerCompanyDao companyDao;
	
	@Autowired
	documentDao documentDao;
	
	@Autowired
	ownerContactDao contactDao;
	
	@Autowired
	loginDao loginDao;
	
	@RequestMapping(value="/ownerCalender.do",method=RequestMethod.GET)
	public ModelAndView getreq()
	{
		
		
		return new ModelAndView("owner/calender");		
	}
	
	@RequestMapping(value="/dealCalender.do",method=RequestMethod.GET)
	public ModelAndView getreq(@ModelAttribute dealVo dealvo,HttpServletRequest req)
	{	
		String userName = BaseMethod.getCurrentUser().getUsername();
		
		loginVo loginVo = new loginVo();
		loginVo.setUserName(userName);
		
		int loginId = this.loginDao.getLoginID(loginVo);
		
		loginVo.setLogid(loginId);
		dealvo.setLoginVo(loginVo);
		
		HttpSession session =req.getSession();
		List<?> ls=dealdao.viewDeal(dealvo);
		session.setAttribute("dlist", ls);
		
		
		
		return new ModelAndView("redirect:ownerCalender.do");		
	}
}
