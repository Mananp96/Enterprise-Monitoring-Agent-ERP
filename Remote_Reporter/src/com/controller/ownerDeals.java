package com.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.amazonaws.auth.profile.ProfileCredentialsProvider;
import com.amazonaws.regions.Region;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.s3.AmazonS3Client;
import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.dao.dealDao;
import com.dao.documentDao;
import com.dao.loginDao;
import com.dao.ownerCompanyDao;
import com.dao.ownerContactDao;
import com.vo.dealVo;
import com.vo.documentVo;
import com.vo.loginVo;
import com.vo.ownerCompanyVo;
import com.vo.ownerContactVo;

@Controller
public class ownerDeals {

	private static Regions region = Regions.AP_SOUTHEAST_1;
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

	@RequestMapping(value = "/owner_deals.do", method = RequestMethod.GET)
	public ModelAndView getreq(@ModelAttribute dealVo dealvo, HttpServletRequest req, ownerCompanyVo companyVo,
			ownerContactVo contactVo) {

		String userName = BaseMethod.getCurrentUser().getUsername();
		loginVo loginVo = new loginVo();
		loginVo.setUserName(userName);

		int loginId = this.loginDao.getLoginID(loginVo);

		loginVo.setLogid(loginId);
		dealvo.setLoginVo(loginVo);
		contactVo.setLoginVo(loginVo);
		companyVo.setLoginVo(loginVo);
		HttpSession session = req.getSession();
		List ls = dealdao.viewDeal(dealvo);
		session.setAttribute("dlist", ls);

		List ls1 = companyDao.viewCompany(companyVo);
		session.setAttribute("olist", ls1);

		List ls2 = contactDao.viewContact(contactVo);
		session.setAttribute("clist", ls2);

		return new ModelAndView("owner/owner_deals", "addDeal", new dealVo());
	}

	@RequestMapping(value = "/addDeal.do", method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute dealVo dealvo, @RequestParam CommonsMultipartFile file,
			HttpSession session, documentVo vo, HttpServletRequest req) throws Exception {

		String userName = BaseMethod.getCurrentUser().getUsername();
		loginVo loginVo = new loginVo();
		loginVo.setUserName(userName);

		int loginId = this.loginDao.getLoginID(loginVo);

		loginVo.setLogid(loginId);
		dealvo.setLoginVo(loginVo);

		String path = session.getServletContext().getRealPath("/");
		String filename = file.getOriginalFilename();

		System.out.println(path + " " + filename);
		byte barr[] = file.getBytes();

		BufferedOutputStream bout = new BufferedOutputStream(new FileOutputStream(path + "/doc/" + filename));
		bout.write(barr);
		bout.flush();
		bout.close();
		vo.setFileName(filename);
		vo.setFilePath(path);
		dealdao.insert(dealvo);

		vo.setFolderName("deal");
		vo.setDealVo(dealvo);

		documentDao.insert_dealdoc(vo);

		String bucketName = "s3.demo.ema";

		@SuppressWarnings("deprecation")
		ProfileCredentialsProvider credentialsProvider = new ProfileCredentialsProvider("default");
		AmazonS3Client amazonS3 = new AmazonS3Client(credentialsProvider);
		amazonS3.setRegion(Region.getRegion(region));
		PutObjectRequest objectRequest = new PutObjectRequest(bucketName,
				userName + "/Deals/" + file.getOriginalFilename(), file.getInputStream(), null);
		objectRequest.setCannedAcl(CannedAccessControlList.PublicRead);
		ObjectMetadata objectMetadata = new ObjectMetadata();
		objectMetadata.setSSEAlgorithm(ObjectMetadata.AES_256_SERVER_SIDE_ENCRYPTION);
		objectRequest.setMetadata(objectMetadata);
		amazonS3.putObject(objectRequest);

		System.out.println("manan");
		return new ModelAndView("redirect:owner_deals.do");

	}

	@RequestMapping(value = "/deleteDeal.do", method = RequestMethod.GET)
	public ModelAndView deldeal(@ModelAttribute dealVo dealvo, HttpServletRequest req) {

		String userName = BaseMethod.getCurrentUser().getUsername();

		loginVo loginVo = new loginVo();
		loginVo.setUserName(userName);

		int loginId = this.loginDao.getLoginID(loginVo);

		loginVo.setLogid(loginId);
		dealvo.setLoginVo(loginVo);
		int dealid = Integer.parseInt(req.getParameter("id"));

		dealvo.setDealid(dealid);
		dealdao.delete_attachment(dealvo);
		dealdao.delete_deal(dealvo);
		System.out.println("manan");
		return new ModelAndView("redirect:owner_deals.do");

	}

	@RequestMapping(value = "/editDeal.do", method = RequestMethod.GET)
	public ModelAndView editDeal(@ModelAttribute dealVo dealvo, HttpServletRequest req) {
		String userName = BaseMethod.getCurrentUser().getUsername();

		loginVo loginVo = new loginVo();
		loginVo.setUserName(userName);

		int loginId = this.loginDao.getLoginID(loginVo);

		loginVo.setLogid(loginId);
		dealvo.setLoginVo(loginVo);
		HttpSession session = req.getSession();
		int dealid = Integer.parseInt(req.getParameter("id"));
		dealvo.setDealid(dealid);

		List<?> editdeal = dealdao.edit(dealvo);
		System.out.println("LIST Size>>>>>>>>>>>>>" + editdeal.size());

		session.setAttribute("editdeal", editdeal);
		return new ModelAndView("owner/dealsJson");

	}

	@RequestMapping(value = "/updateDeal.do", method = RequestMethod.POST)
	public ModelAndView dealupdate(@ModelAttribute dealVo dealvo, HttpServletRequest req) {

		String userName = BaseMethod.getCurrentUser().getUsername();

		loginVo loginVo = new loginVo();
		loginVo.setUserName(userName);

		int loginId = this.loginDao.getLoginID(loginVo);

		loginVo.setLogid(loginId);
		dealvo.setLoginVo(loginVo);
		int dealid = Integer.parseInt(req.getParameter("id"));
		System.out.println(dealid);
		dealvo.setDealid(dealid);
		Date date = new Date();
		dealvo.setDealDate(date);
		dealdao.update_deal(dealvo);
		System.out.println("manan");
		return new ModelAndView("redirect:owner_deals.do");

	}
}

/*
 * package com.controller;
 * 
 * import java.io.BufferedOutputStream; import java.io.FileOutputStream; import
 * java.text.SimpleDateFormat; import java.util.Date; import java.util.List;
 * 
 * import javax.servlet.http.HttpServletRequest; import
 * javax.servlet.http.HttpSession;
 * 
 * 
 * import org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.stereotype.Controller; import
 * org.springframework.web.bind.annotation.ModelAttribute; import
 * org.springframework.web.bind.annotation.RequestMapping; import
 * org.springframework.web.bind.annotation.RequestMethod; import
 * org.springframework.web.bind.annotation.RequestParam; import
 * org.springframework.web.multipart.commons.CommonsMultipartFile; import
 * org.springframework.web.servlet.ModelAndView;
 * 
 * import com.dao.dealDao; import com.dao.documentDao; import com.dao.loginDao;
 * import com.dao.ownerCompanyDao; import com.dao.ownerContactDao; import
 * com.vo.dealVo; import com.vo.documentVo; import com.vo.loginVo; import
 * com.vo.ownerCompanyVo; import com.vo.ownerContactVo; import com.vo.taskVo;
 * 
 * 
 * @Controller public class ownerDeals {
 * 
 * @Autowired dealDao dealdao;
 * 
 * @Autowired ownerCompanyDao companyDao;
 * 
 * @Autowired documentDao documentDao;
 * 
 * @Autowired ownerContactDao contactDao;
 * 
 * @Autowired loginDao loginDao;
 * 
 * @RequestMapping(value="/owner_deals.do",method=RequestMethod.GET) public
 * ModelAndView getreq(@ModelAttribute dealVo dealvo,HttpServletRequest
 * req,ownerContactVo contactVo,ownerCompanyVo companyVo) { String userName =
 * BaseMethod.getCurrentUser().getUsername();
 * 
 * loginVo loginVo = new loginVo(); loginVo.setUserName(userName);
 * 
 * int loginId = this.loginDao.getLoginID(loginVo);
 * 
 * loginVo.setLogid(loginId); dealvo.setLoginVo(loginVo);
 * companyVo.setLoginVo(loginVo); contactVo.setLoginVo(loginVo); HttpSession
 * session =req.getSession(); List<?> ls=dealdao.viewDeal(dealvo);
 * session.setAttribute("dlist", ls);
 * 
 * List<?> ls1=companyDao.viewCompany(companyVo); session.setAttribute("olist",
 * ls1);
 * 
 * List ls2 = contactDao.viewContact(contactVo ); session.setAttribute("clist",
 * ls2);
 * 
 * return new ModelAndView("owner/owner_deals","addDeal",new dealVo()); }
 * 
 * @RequestMapping(value = "/addDeal.do", method = RequestMethod.POST) public
 * ModelAndView save(@ModelAttribute dealVo dealvo, HttpServletRequest req,
 * 
 * @RequestParam CommonsMultipartFile file,HttpSession session) throws Exception
 * { String userName = BaseMethod.getCurrentUser().getUsername();
 * 
 * loginVo loginVo = new loginVo(); loginVo.setUserName(userName);
 * 
 * int loginId = this.loginDao.getLoginID(loginVo);
 * 
 * loginVo.setLogid(loginId); dealvo.setLoginVo(loginVo);
 * 
 * documentVo vo = new documentVo();
 * 
 * SimpleDateFormat dateformat = new SimpleDateFormat("dd/MM/yyyy"); Date date =
 * new Date(); dealvo.setDealDate(date); this.dealdao.insert(dealvo);
 * 
 * if (file.equals(true)) { String path =
 * session.getServletContext().getRealPath("/"); String filename =
 * file.getOriginalFilename();
 * 
 * System.out.println(path + " " + filename); byte barr[] = file.getBytes();
 * 
 * BufferedOutputStream bout = new BufferedOutputStream(new
 * FileOutputStream(path + "/doc/" + filename)); bout.write(barr); bout.flush();
 * bout.close(); vo.setFileName(filename); vo.setFilePath(path);
 * vo.setFolderName("deal"); vo.setDealVo(dealvo);
 * documentDao.insert_dealdoc(vo); } return new
 * ModelAndView("redirect:owner_deals.do"); }
 * 
 * @RequestMapping(value = "/deleteDeal.do", method = RequestMethod.GET) public
 * ModelAndView deldeal(@ModelAttribute dealVo dealvo, HttpServletRequest req) {
 * 
 * String userName = BaseMethod.getCurrentUser().getUsername();
 * 
 * loginVo loginVo = new loginVo(); loginVo.setUserName(userName);
 * 
 * int loginId = this.loginDao.getLoginID(loginVo);
 * 
 * loginVo.setLogid(loginId); dealvo.setLoginVo(loginVo); int dealid =
 * Integer.parseInt(req.getParameter("id"));
 * 
 * dealvo.setDealid(dealid); dealdao.delete_attachment(dealvo);
 * dealdao.delete_deal(dealvo); System.out.println("manan"); return new
 * ModelAndView("redirect:owner_deals.do");
 * 
 * }
 * 
 * 
 * @RequestMapping(value="/editDeal.do",method=RequestMethod.GET) public
 * ModelAndView editDeal(@ModelAttribute dealVo dealvo,HttpServletRequest req) {
 * String userName = BaseMethod.getCurrentUser().getUsername();
 * 
 * loginVo loginVo = new loginVo(); loginVo.setUserName(userName);
 * 
 * int loginId = this.loginDao.getLoginID(loginVo);
 * 
 * loginVo.setLogid(loginId); dealvo.setLoginVo(loginVo); HttpSession session
 * =req.getSession(); int dealid = Integer.parseInt(req.getParameter("id"));
 * dealvo.setDealid(dealid);
 * 
 * List<?> editdeal = dealdao.edit(dealvo);
 * System.out.println("LIST Size>>>>>>>>>>>>>"+editdeal.size());
 * 
 * session.setAttribute("editdeal", editdeal); return new
 * ModelAndView("owner/dealsJson");
 * 
 * }
 * 
 * @RequestMapping(value="/updateDeal.do",method=RequestMethod.POST) public
 * ModelAndView dealupdate(@ModelAttribute dealVo dealvo,HttpServletRequest req)
 * { String userName = BaseMethod.getCurrentUser().getUsername();
 * 
 * loginVo loginVo = new loginVo(); loginVo.setUserName(userName);
 * 
 * int loginId = this.loginDao.getLoginID(loginVo);
 * 
 * loginVo.setLogid(loginId); dealvo.setLoginVo(loginVo); int dealid =
 * Integer.parseInt(req.getParameter("id")); System.out.println(dealid);
 * dealvo.setDealid(dealid); Date date = new Date(); dealvo.setDealDate(date);
 * dealdao.update_deal(dealvo); System.out.println("manan"); return new
 * ModelAndView("redirect:owner_deals.do");
 * 
 * }
 * 
 * }
 */