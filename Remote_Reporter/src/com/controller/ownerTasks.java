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

import com.dao.ownerCompanyDao;
import com.dao.ownerContactDao;
import com.dao.taskDao;

import com.vo.documentVo;
import com.vo.loginVo;
import com.vo.ownerCompanyVo;
import com.vo.ownerContactVo;
import com.vo.taskVo;
import com.amazonaws.auth.profile.ProfileCredentialsProvider;
import com.amazonaws.services.s3.AmazonS3Client;
import com.amazonaws.regions.Region;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.dao.documentDao;
import com.dao.loginDao;

@Controller
public class ownerTasks {

	private static Regions region = Regions.AP_SOUTHEAST_1;
	@Autowired
	taskDao taskdao;

	@Autowired
	ownerCompanyDao companyDao;

	@Autowired
	documentDao documentDao;

	@Autowired
	ownerContactDao contactDao;

	@Autowired
	loginDao loginDao;

	@RequestMapping(value = "/owner_tasks.do", method = RequestMethod.GET)
	public ModelAndView getreq(@ModelAttribute taskVo taskvo, HttpServletRequest req, ownerCompanyVo companyVo,
			ownerContactVo contactVo) {
		String userName = BaseMethod.getCurrentUser().getUsername();

		loginVo loginVo = new loginVo();
		loginVo.setUserName(userName);

		int loginId = this.loginDao.getLoginID(loginVo);

		loginVo.setLogid(loginId);
		taskvo.setLoginVo(loginVo);
		companyVo.setLoginVo(loginVo);
		contactVo.setLoginVo(loginVo);

		HttpSession session = req.getSession();
		List ls = taskdao.viewTask(taskvo);
		session.setAttribute("tlist", ls);

		List ls1 = companyDao.viewCompany(companyVo);
		session.setAttribute("olist", ls1);

		List ls2 = contactDao.viewContact(contactVo);
		session.setAttribute("clist", ls2);

		return new ModelAndView("owner/owner_tasks", "addTask", new taskVo());
	}

	@RequestMapping(value = "/addTask.do", method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute taskVo taskvo, HttpServletRequest req, ownerContactVo ownerContactVo,
			@RequestParam CommonsMultipartFile file, HttpSession session, documentVo vo) throws Exception {
		String userName = BaseMethod.getCurrentUser().getUsername();
		loginVo loginVo = new loginVo();
		loginVo.setUserName(userName);

		int loginId = this.loginDao.getLoginID(loginVo);
		Date date = new Date();
		taskvo.setTaskDate(date);
		loginVo.setLogid(loginId);
		taskvo.setLoginVo(loginVo);
		ownerContactVo.setLoginVo(loginVo);
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
		vo.setLoginVo(loginVo);
		System.out.println("log in id>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>" + loginId);
		vo.setFolderName("task");
		vo.setTaskVo(taskvo);
		this.taskdao.insert(taskvo);
		this.documentDao.insert_taskdoc(vo);

		/*
		 * int contactid =
		 * Integer.parseInt(req.getParameter("ownerContactVo.contactid"));
		 * ownerContactVo ownerContactVo = new ownerContactVo();
		 * ownerContactVo.setContactid(contactid); ownerContactVo.setLoginVo(loginVo);
		 * taskvo.setOwnerContactVo(ownerContactVo); Date date = new Date();
		 * taskvo.setTaskDate(date);
		 */

		String bucketName = "s3.demo.ema";

		/*
		 * AWSCredentials credentials = null; try { credentials = new
		 * BasicAWSCredentials("AKIAJHII3MOGLLFOJM6Q",
		 * "iaEKsMi4ovs2g/dUJcNYk7Pp/X0nrPUn2naHnBDa"); } catch (AmazonClientException
		 * e) { throw e; }
		 */

		@SuppressWarnings("deprecation")
		ProfileCredentialsProvider credentialsProvider = new ProfileCredentialsProvider("default");
		AmazonS3Client amazonS3 = new AmazonS3Client(credentialsProvider);
		amazonS3.setRegion(Region.getRegion(region));
		/* AmazonS3 s3 = new AmazonS3Client(credentials); */
		/*
		 * String endpoint = "s3-us-west-2.amazonaws.com";
		 * amazonS3.setEndpoint(endpoint);
		 */ PutObjectRequest objectRequest = new PutObjectRequest(bucketName,
				userName + "/Tasks/" + file.getOriginalFilename(), file.getInputStream(), null);
		objectRequest.setCannedAcl(CannedAccessControlList.PublicRead);
		ObjectMetadata objectMetadata = new ObjectMetadata();
		objectMetadata.setSSEAlgorithm(ObjectMetadata.AES_256_SERVER_SIDE_ENCRYPTION);
		objectRequest.setMetadata(objectMetadata);
		amazonS3.putObject(objectRequest);

		System.out.println("manan");
		return new ModelAndView("redirect:owner_tasks.do");

		/*
		 * String userName = BaseMethod.getCurrentUser().getUsername();
		 * 
		 * loginVo loginVo = new loginVo(); loginVo.setUserName(userName);
		 * 
		 * int loginId = this.loginDao.getLoginID(loginVo);
		 * 
		 * loginVo.setLogid(loginId); taskvo.setLoginVo(loginVo);
		 * 
		 * int contactid =
		 * Integer.parseInt(req.getParameter("ownerContactVo.contactid"));
		 * ownerContactVo ownerContactVo = new ownerContactVo();
		 * ownerContactVo.setContactid(contactid);
		 * taskvo.setOwnerContactVo(ownerContactVo); Date date = new Date();
		 * taskvo.setTaskDate(date);
		 * 
		 * this.taskdao.insert(taskvo);
		 * 
		 * if(file.equals(true)){
		 * 
		 * String path=session.getServletContext().getRealPath("/"); String
		 * filename=file.getOriginalFilename();
		 * 
		 * System.out.println(path+" "+filename); byte barr[]=file.getBytes();
		 * 
		 * BufferedOutputStream bout=new BufferedOutputStream( new
		 * FileOutputStream(path+"/doc/"+filename)); bout.write(barr); bout.flush();
		 * bout.close();
		 * 
		 * vo.setFileName(filename); vo.setFilePath(path); vo.setFolderName("task");
		 * vo.setTaskVo(taskvo); this.documentDao.insert_taskdoc(vo); }
		 * 
		 * return new ModelAndView("redirect:owner_tasks.do");
		 */
	}

	@RequestMapping(value = "/deletetask.do", method = RequestMethod.GET)
	public ModelAndView deltask(@ModelAttribute taskVo taskvo, HttpServletRequest req) {

		String userName = BaseMethod.getCurrentUser().getUsername();

		loginVo loginVo = new loginVo();
		loginVo.setUserName(userName);

		int loginId = this.loginDao.getLoginID(loginVo);

		loginVo.setLogid(loginId);
		taskvo.setLoginVo(loginVo);
		HttpSession session = req.getSession();
		int taskid = Integer.parseInt(req.getParameter("id"));
		taskvo.setTaskid(taskid);

		taskvo.setTaskid(taskid);
		taskdao.delete_taskattachment(taskvo);
		taskdao.delete_task(taskvo);
		System.out.println("manan");
		return new ModelAndView("redirect:owner_tasks.do");

	}

	@RequestMapping(value = "/editTask.do", method = RequestMethod.GET)
	public ModelAndView edittask(@ModelAttribute taskVo taskvo, HttpServletRequest req) {
		String userName = BaseMethod.getCurrentUser().getUsername();

		loginVo loginVo = new loginVo();
		loginVo.setUserName(userName);

		int loginId = this.loginDao.getLoginID(loginVo);

		loginVo.setLogid(loginId);
		taskvo.setLoginVo(loginVo);
		HttpSession session = req.getSession();
		int taskid = Integer.parseInt(req.getParameter("id"));
		taskvo.setTaskid(taskid);

		List<?> edittask = taskdao.edit(taskvo);
		System.out.println("LIST Size>>>>>>>>>>>>>" + edittask.size());

		session.setAttribute("edittask", edittask);
		return new ModelAndView("owner/taskJson");

	}

	@RequestMapping(value = "/updateTask.do", method = RequestMethod.POST)
	public ModelAndView dealupdate(@ModelAttribute taskVo taskvo, HttpServletRequest req) {
		String userName = BaseMethod.getCurrentUser().getUsername();

		loginVo loginVo = new loginVo();
		loginVo.setUserName(userName);

		int loginId = this.loginDao.getLoginID(loginVo);

		loginVo.setLogid(loginId);
		taskvo.setLoginVo(loginVo);

		int taskid = Integer.parseInt(req.getParameter("id"));
		System.out.println(taskid);
		taskvo.setTaskid(taskid);

		taskdao.update_task(taskvo);
		System.out.println("manan");
		return new ModelAndView("redirect:owner_tasks.do");

	}
}
