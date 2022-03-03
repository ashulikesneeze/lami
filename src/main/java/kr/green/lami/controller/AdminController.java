package kr.green.lami.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.green.lami.service.MemberService;
import kr.green.lami.vo.MemberVO;


@Controller
public class AdminController {
	
	@Autowired
	MemberService memberService; 
	
	@RequestMapping(value="/admin/image")
	public ModelAndView memberFind(ModelAndView mv) {
		mv.setViewName("/admin/image");
		return mv;
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
