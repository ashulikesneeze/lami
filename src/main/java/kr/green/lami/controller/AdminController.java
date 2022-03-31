package kr.green.lami.controller;

import java.io.FileInputStream;
import java.io.InputStream;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.green.lami.service.AdminService;
import kr.green.lami.service.MemberService;
import kr.green.lami.vo.CategoryVO;
import kr.green.lami.vo.MemberVO;
import kr.green.lami.vo.ProductVO;


@Controller
public class AdminController {
	
	@Autowired
	MemberService memberService; 
	
	@Autowired
	AdminService adminService; 
	
	String uploadPath = "D:/pic/Send Anywhere (2022-02-07 14-30-36)"; 
	
	@RequestMapping(value="/admin/image", method=RequestMethod.GET)
	public ModelAndView productRegisterGet(ModelAndView mv) {	
		List<CategoryVO> categories = adminService.getCategories();
		for (CategoryVO category : categories) {
			System.out.println(category);
		}
		mv.addObject("categories", categories);

		mv.setViewName("/admin/image");
		return mv;
	}
	
	@RequestMapping(value="/admin/image", method=RequestMethod.POST)
	public ModelAndView productRegisterPost(ModelAndView mv, ProductVO product,
			HttpServletRequest request, List<MultipartFile> files2) {
		MemberVO user = (MemberVO)request.getSession().getAttribute("user");

		System.out.println(product);
		//adminService.productRegister(product, user,  files2);
		//mv.setViewName("/admin/image");
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("/admin/image/download")
	public ResponseEntity<byte[]> downloadFile(String fileName)throws Exception{
	    InputStream in = null;
	    ResponseEntity<byte[]> entity = null;
	    try{
	        String FormatName = fileName.substring(fileName.lastIndexOf(".")+1);
	        HttpHeaders headers = new HttpHeaders();
	        in = new FileInputStream(uploadPath+fileName);

	        fileName = fileName.substring(fileName.indexOf("_")+1);
	        headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
	        headers.add("Content-Disposition",  "attachment; filename=\"" 
				+ new String(fileName.getBytes("UTF-8"), "ISO-8859-1")+"\"");
	        entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in),headers,HttpStatus.CREATED);
	    }catch(Exception e) {
	        e.printStackTrace();
	        entity = new ResponseEntity<byte[]>(HttpStatus.BAD_REQUEST);
	    }finally {
	        in.close();
	    }
	    return entity;
	}
	
	@RequestMapping(value= "/admin/member/modify")
	public ModelAndView adminMemberModify(ModelAndView mv, HttpServletRequest request) {
	  MemberVO user = (MemberVO)request.getSession().getAttribute("user");
		List<MemberVO> userList = memberService.getUserList(user); 
		if(userList == null)
			mv.setViewName("redirect:/");
		else {
		mv.addObject("list",userList);
		mv.setViewName("/admin/member/modify");
		}
	    return mv;
	}
	@ResponseBody
	@RequestMapping(value= "/admin/change/authority")
	public boolean adminChangeAuthority(@RequestBody MemberVO member,
			HttpServletRequest request) {
		 //System.out.println(member);
		MemberVO user = (MemberVO)request.getSession().getAttribute("user");
		return memberService.changeAuthority(member,user);  
	}

}
