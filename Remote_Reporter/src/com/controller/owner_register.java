package com.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dao.owner_register_dao;
import com.vo.owner_register_vo;

@Controller
public class owner_register {
	@Autowired
	owner_register_dao od;

	@RequestMapping(value = "/owner.do", method = RequestMethod.GET)
	public ModelAndView ownerReg() {

		return new ModelAndView("owner/owner.do", "ownerReg", new owner_register_vo());
	}

	@RequestMapping(value = "/owner_register.do", method = RequestMethod.POST)
	public ModelAndView owner_register(@ModelAttribute owner_register_vo reg, HttpServletRequest req) {
		od.insert(reg);
		return new ModelAndView("redirect:owner.do");
	}
}
