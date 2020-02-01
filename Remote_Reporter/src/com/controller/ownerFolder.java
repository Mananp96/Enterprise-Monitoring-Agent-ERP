package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dao.ownerFolderDao;
import com.vo.FolderVo;
import com.vo.loginVo;

public class ownerFolder {

	@RequestMapping(value = "/openFolder.html", method = RequestMethod.GET)
	public String openFolder(/* @RequestParam("values") List folderId, */ HttpSession session, HttpServletRequest req,
			Model model) {
		/*
		 * System.out.println(folderId.get(0));
		 * 
		 * int p = Integer.valueOf((String) (folderId.get(0)));
		 * System.out.println("***************++++++++++++++++++++++" + p);
		 * 
		 * System.out.println("************ open file controller************");
		 */
		String s1 = req.getParameter("id");
		/*
		 * model.addAttribute("currentFolder",s1);
		 * System.out.println("Hello From USerFileCOntroller"); FileVO fileVO=new
		 * FileVO(); FolderVO folderVO=new FolderVO();
		 * folderVO.setFolderId(Integer.parseInt(s1));
		 * 
		 * fileVO.setFolderVO(folderVO);
		 * 
		 * List ls=userFileDAO.fileSearch(fileVO); session.setAttribute("List11",ls);
		 */
		/* for folder */

		FolderVo folderVo1 = new FolderVo();
		loginVo loginVo = new loginVo();
		String username = BaseMethod.getCurrentUser().getUsername();
		/* loginVO.setMail(username); */
		System.out.println(username);
		/* int logid=this.ownerFolderDao.Logid(loginVo); */

		/* loginVo.setLogid(logid); */
		folderVo1.setLoginVO(loginVo);
		folderVo1.setParentFolderId(Integer.parseInt(s1));

		List ls1 = ownerFolderDao.folderSearch(folderVo1);
		session.setAttribute("List111", ls1);
		System.out.println("************ open file controller end ************");

		int folderId = Integer.parseInt(s1);

		String folderPath = "";
		FolderVo folderVo2 = new FolderVo();
		int b = folderId;
		while (b != -1) {
			folderVo2.setFolderId(b);
			folderPath = ownerFolderDao.folderNameSearch(folderVo2) + "/" + folderPath;
			b = ownerFolderDao.parentFolderIdSearch(folderVo2);

		}
		folderPath = "https://s3-us-west-2.amazonaws.com/princedppatel1234/" + username + "/" + folderPath;
		model.addAttribute("folderPath", folderPath);

		/* model.addAttribute("folderId",s1); */

		return ("User/openFolder");
	}
}
