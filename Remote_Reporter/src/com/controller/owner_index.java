package com.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dao.dealDao;
import com.dao.loginDao;
import com.dao.ownerContactDao;
import com.dao.taskDao;
import com.vo.dealVo;
import com.vo.documentVo;
import com.vo.loginVo;
import com.vo.ownerCompanyVo;
import com.vo.ownerContactVo;
import com.vo.taskVo;

@Controller
public class owner_index {

	@Autowired
	dealDao dealDao;

	@Autowired
	ownerContactDao contactDao;

	@Autowired
	taskDao taskDao;

	//@Autowired documentDao documentDao;

	@Autowired
	loginDao loginDao;

	@RequestMapping(value = "/owner_index.do", method = RequestMethod.GET)
	public ModelAndView getreq(HttpServletRequest req, dealVo dealVo, ownerContactVo contactVo, taskVo taskVo,
			ownerCompanyVo companyVo, documentVo documentVo) {
		String userName = BaseMethod.getCurrentUser().getUsername();

		loginVo loginVo = new loginVo();
		loginVo.setUserName(userName);

		int loginId = this.loginDao.getLoginID(loginVo);

		loginVo.setLogid(loginId);
		dealVo.setLoginVo(loginVo);
		contactVo.setLoginVo(loginVo);
		taskVo.setLoginVo(loginVo);
		companyVo.setLoginVo(loginVo);
		documentVo.setLoginVo(loginVo);
		List dealls = this.dealDao.viewDeal(dealVo);
		List contactls = this.contactDao.viewContact(contactVo);
		List taskls = this.taskDao.viewTask(taskVo);
		/* List docls = this.documentDao.viewdoc(); */

		ModelAndView model = new ModelAndView("owner/owner_index");
		model.addObject("deals", dealls.size());
		model.addObject("contacts", contactls.size());
		model.addObject("tasks", taskls.size());
		/* model.addObject("documents",docls.size()); */

		Map<String, String> map = new HashMap<String, String>();
		List countDeal = this.dealDao.countDeal();
		/*
		 * for (Object[] dealVo : countDeal) { Integer month =
		 * dealVo.getDealDate().getMonth(); map.put(month+1, countDeal.size()); }
		 */

		/*
		 * for (Iterator iterator = countDeal.iterator(); iterator.hasNext();) {
		 * Object[] count = (Object[]) iterator.next();
		 * System.out.println("jjjjjjjjjjj"+count[0]);
		 * System.out.println("lllllllllll"+count[1]); map.put(count[0].toString(),
		 * count[1].toString()); HttpSession session = req.getSession();
		 * session.setAttribute("dealgraph", map); }
		 */

		/*
		 * for(Map.Entry<String, String> map1 : map.entrySet()){
		 * 
		 * System.err.println("Mounth--"+map1.getKey());
		 * System.err.println("Count--"+map1.getValue()); }
		 */
		HttpSession session = req.getSession();
		session.setAttribute("dealgraph", countDeal);

		return model;
	}
}
