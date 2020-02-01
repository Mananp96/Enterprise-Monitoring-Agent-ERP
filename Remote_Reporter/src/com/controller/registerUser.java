package com.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/*import com.amazonaws.auth.profile.ProfileCredentialsProvider;
import com.amazonaws.regions.Region;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.s3.AmazonS3Client;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.PutObjectRequest;*/
import com.dao.loginDao;
import com.dao.registerDao;
import com.vo.loginVo;
import com.vo.registerVo;

@Controller
public class registerUser {

	/* private static Regions region = Regions.AP_SOUTHEAST_1; */
	private static final String SUFFIX = "/";

	@Autowired
	registerDao rd;

	@Autowired
	loginDao ld;

	@RequestMapping(value = "/registerUser.do", method = RequestMethod.POST)
	public ModelAndView createUser(HttpServletRequest req, @RequestParam String firstname,
			@RequestParam String lastname, @RequestParam String companyname, @RequestParam("username") String username,
			@RequestParam String password) {
		System.err.println("username------------->" + username);
		System.err.println("password------------->" + password);
		loginVo lvo = new loginVo();
		lvo.setUserName(username);
		lvo.setPassword(password);
		lvo.setEnabled(1);
		lvo.setRole("ROLE_OWNER");

		ld.insert(lvo);

		/* FOR AWS */
		System.out.println("***registration details**");
		/* String folderName=username; */

		/*
		 * try { ProfileCredentialsProvider credentialsProvider = new
		 * ProfileCredentialsProvider("default"); AmazonS3Client amazonS3 = new
		 * AmazonS3Client(credentialsProvider);
		 * amazonS3.setRegion(Region.getRegion(region)); String
		 * bucketName="s3.demo.ema"; AmazonS3Client client = new AmazonS3Client();
		 * ObjectMetadata metadata=new ObjectMetadata(); metadata.setContentLength(0);
		 * 
		 * InputStream emptyContent=new ByteArrayInputStream(new byte[0]);
		 * 
		 * PutObjectRequest putObjectRequest=new
		 * PutObjectRequest(bucketName,folderName,emptyContent, metadata);
		 * 
		 * client.putObject(putObjectRequest);
		 * 
		 * System.out.println("folder Created Succesfully.......");
		 * 
		 * 
		 * }catch (Exception e) { e.printStackTrace(); }
		 */
		/* FOR AWS */

		registerVo rvo = new registerVo();
		rvo.setFirstName(firstname);
		rvo.setLastName(lastname);
		rvo.setCompanyName(companyname);
		rvo.setLvo(lvo);

		rd.insert(rvo);
		System.out.println("manan");
		return new ModelAndView("redirect:owner_index.do");

	}
}
