package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dao.loginDao;
import com.vo.loginVo;

@Controller
public class frontend_home {
	@Autowired
	loginDao logindao;

	@RequestMapping(value = "/loginerror.do", method = RequestMethod.GET)
	public String getreq(HttpServletRequest req) {
		HttpSession session = req.getSession();
		session.setAttribute("invalid", "invalid username or password");
		return "front-end/login";
	}

	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public ModelAndView getlogin() {
		return new ModelAndView("front-end/login");
	}

	@RequestMapping(value = "/register.do", method = RequestMethod.GET)
	public ModelAndView getreg() {
		return new ModelAndView("front-end/register");
	}

	@RequestMapping(value = "/forgetpass.do", method = RequestMethod.GET)
	public ModelAndView getpass() {
		return new ModelAndView("front-end/forgetpass");
	}

	@RequestMapping(value = "/forgetNext.do", method = RequestMethod.POST)
	public ModelAndView email(HttpServletRequest req, loginVo loginVo) {
		String username = req.getParameter("email");
		loginVo.setUserName(username);
		List list = logindao.compareUsername(loginVo);
		if (list.size() == 1) {
			System.out.println("list 1");
			HttpSession session = req.getSession();
			session.setAttribute("forgetId", list);
			return new ModelAndView("front-end/forgetpassOtp");
		} else {
			System.out.println("list 0");
			return new ModelAndView("front-end/login");
		}
	}

	@RequestMapping(value = "/newPass.do", method = RequestMethod.POST)
	public ModelAndView newpass(HttpServletRequest req, loginVo loginVo) {
		int logid = Integer.parseInt(req.getParameter("logid"));
		String newPass = req.getParameter("newPass");
		String confirmPass = req.getParameter("confirmPass");
		if (newPass.equals(confirmPass)) {
			loginVo.setLogid(logid);
			loginVo.setPassword(newPass);
			logindao.updatePassword(loginVo);
			return new ModelAndView("front-end/passResetSuccess");
		} else {
			HttpSession session = req.getSession();
			session.setAttribute("passwordMatch", "Password doesn't match!!");
			return new ModelAndView("front-end/forgetpassOtp");
		}
	}

}
