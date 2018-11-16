package com.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.amazonaws.auth.profile.ProfileCredentialsProvider;
import com.amazonaws.regions.Region;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.s3.AmazonS3Client;
import com.amazonaws.services.s3.model.ObjectListing;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.amazonaws.services.s3.model.S3ObjectSummary;
import com.dao.documentDao;
import com.dao.loginDao;
import com.vo.documentVo;
import com.vo.loginVo;

@Controller
public class ownerDocuments {
	@Autowired
	documentDao documentDao;
	
	@Autowired
	loginDao loginDao;

	private static String profileName = "default";
	Regions region = Regions.AP_SOUTHEAST_1;

	@RequestMapping(value = "/ownerDocuments.do", method = RequestMethod.GET)
		public String gettask(@ModelAttribute documentVo documentVo, HttpServletRequest req) {
		String userName = BaseMethod.getCurrentUser().getUsername();
		
		loginVo loginVo = new loginVo();
		loginVo.setUserName(userName);
		
		int loginId = this.loginDao.getLoginID(loginVo);
		
		loginVo.setLogid(loginId);
		documentVo.setLoginVo(loginVo);
		System.out.println("log in id>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+loginId);
		HttpSession session = req.getSession();

		String bucketName = "s3.demo.ema";

		ProfileCredentialsProvider awsCredentials = new ProfileCredentialsProvider(profileName);
		AmazonS3Client amazonS3Client = new AmazonS3Client(awsCredentials);
		amazonS3Client.setRegion(Region.getRegion(region));

		/* AWS SHOW STATIC */
		final InputStream im = new InputStream() {
			@Override
			public int read() throws IOException {
				return -1;
			}
		};
		final ObjectMetadata om = new ObjectMetadata();
		om.setContentLength(0L);
		
		/* * PutObjectRequest putObjectRequest = new
		 * PutObjectRequest(bucketName,userName + "/", im, om);
		 * amazonS3Client.putObject(putObjectRequest);*/
		 
		PutObjectRequest putObjectRequest1 = new PutObjectRequest(bucketName, userName + "/Deals/", im, om);
		amazonS3Client.putObject(putObjectRequest1);
		PutObjectRequest putObjectRequest2 = new PutObjectRequest(bucketName, userName + "/Tasks/", im, om);
		amazonS3Client.putObject(putObjectRequest2);
		/* AWS SHOW STATIC */

		/*
		 * ObjectListing objectListing1=
		 * amazonS3Client.listObjects("s3.demo.ema",userName+"/Deals/");
		 * List<S3ObjectSummary> ls1 = objectListing1.getObjectSummaries();
		 * 
		 * ListIterator<S3ObjectSummary> list = ls1.listIterator();
		 * 
		 * while(list.hasNext()){ S3ObjectSummary s3ObjectSummary=list.next();
		 * System.out.println(s3ObjectSummary.getKey() + "\n"); }
		 * session.setAttribute("dealfolderlist", ls1);
		 * 
		 * ObjectListing objectListing2=
		 * amazonS3Client.listObjects("s3.demo.ema",userName+"/Tasks/");
		 * List<S3ObjectSummary> ls2 = objectListing1.getObjectSummaries();
		 * 
		 * ListIterator<S3ObjectSummary> list2 = ls2.listIterator();
		 * 
		 * while(list.hasNext()){ S3ObjectSummary s3ObjectSummary=list2.next();
		 * System.out.println(s3ObjectSummary.getKey() + "\n"); }
		 * session.setAttribute("taskfolderlist", ls2);
		 */

		return "owner/ownerDocuments";

		/*
		 * List ls = documentDao.getfolder(documentVo);
		 * System.out.println("manan");
		 * 
		 * session.setAttribute("FolderList", ls); return new
		 * ModelAndView("owner/ownerDocuments");
		 */
	}

	@RequestMapping(value = "/folder.do", method = RequestMethod.GET)
	public String gettask(HttpServletRequest req, HttpSession session,Model model) {
		List<documentVo> DocList = new ArrayList<>();

		String flag = req.getParameter("flag");
		documentVo documentVo = new documentVo();
		documentVo.setFolderName(flag);
		
		DocList = documentDao.getDealDoc(documentVo);
		model.addAttribute("DocList",DocList);
		
		return ("owner/taskFolder");
	}

}


/*package com.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dao.documentDao;
import com.vo.documentVo;

@Controller
public class ownerDocuments {
	@Autowired
	documentDao documentDao;
	
	@RequestMapping(value="/ownerDocuments.do",method=RequestMethod.GET)
	public ModelAndView gettask(@ModelAttribute documentVo documentVo,HttpServletRequest req)
	{
	List ls =	documentDao.getfolder(documentVo);
	System.out.println("manan");
	HttpSession session = req.getSession();
	session.setAttribute("FolderList", ls);
		return new ModelAndView("owner/ownerDocuments");		
	}
}
*/