package kr.green.lami.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.green.lami.service.AdminService;
import kr.green.lami.service.CategoryService;
import kr.green.lami.service.MemberService;
import kr.green.lami.service.ProductService;
import kr.green.lami.vo.CategoryVO;
import kr.green.lami.vo.ImageVO;
import kr.green.lami.vo.MemberVO;
import kr.green.lami.vo.ProductVO;

@Controller
public class HomeController {
	
	@Autowired
	MemberService memberService;
	@Autowired
	CategoryService categoryService;
	@Autowired
	ProductService productService;
	@Autowired
	AdminService adminService;
	
	@RequestMapping(value= "/")
	public ModelAndView openTilesView(ModelAndView mv) throws Exception{
	    mv.setViewName("/main/home");
	    ArrayList<ProductVO> list = productService.getProductList();
	    mv.addObject("list",list);
	    //MemberVO user = memberService.test("ashu");
	    //System.out.println(user);
	    return mv;
	}
	
	@RequestMapping(value= "/signup", method=RequestMethod.GET)
	public ModelAndView signupGet(ModelAndView mv) {
		mv.setViewName("/member/signup");
		return mv; 
	}
	
	@RequestMapping(value= "/signup", method=RequestMethod.POST)
	public ModelAndView signupPost(ModelAndView mv, MemberVO user) {
		boolean isSignup = memberService.signup(user);
		if(isSignup) {
			mv.setViewName("redirect:/");
		}else {
			mv.setViewName("redirect:/signup");
		}
		return mv; 
	}
	
	@RequestMapping(value= "/login", method=RequestMethod.GET)
	public ModelAndView loginGet(ModelAndView mv){
	    mv.setViewName("/member/login");
	    return mv;
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView loginPost(ModelAndView mv, MemberVO user) {
		//System.out.println("로그인 : " + member);
		MemberVO loginUser = memberService.login(user);
		//System.out.println("로그인 : " + user);
		if(loginUser == null) {
			mv.setViewName("redirect:/login");
		}else {
			loginUser.setMe_auto_login(user.getMe_auto_login());
			mv.addObject("user",loginUser);
			mv.setViewName("redirect:/");
		}	
		return mv;
	}
	
	@RequestMapping(value= "/logout")
	public ModelAndView logout(ModelAndView mv, HttpSession session){
	    MemberVO user = (MemberVO)session.getAttribute("user");
	    session.removeAttribute("user");
	    user.setMe_session_limit(new Date());
	    user.setMe_session_id("none");
	    memberService.insertAutoLogin(user);
	    mv.setViewName("redirect:/"); 
	    return mv;
	}
	
	@ResponseBody
	@RequestMapping(value="/idcheck")
	public String idCheck(String me_id) {
		return memberService.idCheck(me_id); 
	}

	@RequestMapping(value= "/mypage")
	public ModelAndView mypage(ModelAndView mv, MemberVO inputUser,
			HttpServletRequest request) {
		MemberVO user = (MemberVO)request.getSession().getAttribute("user");
		user = memberService.updateMember(inputUser, user);
		if(user != null)
			request.getSession().setAttribute("user", user);
		mv.setViewName("/member/mypage");
		return mv; 
	}
	
	@RequestMapping(value="/member/find")
	public ModelAndView memberFind(ModelAndView mv) {
		mv.setViewName("/member/find");
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value="/member/find/id")
	public String memberFindId(@RequestBody MemberVO member) {
		return memberService.selectMemberByEmail(member);
	}
	
	@ResponseBody
	@RequestMapping(value="/member/find/pw")
	public String memberFindPw(@RequestBody MemberVO member) {
		return memberService.sendPassword(member);
	}
	
	@ResponseBody
	@RequestMapping(value = "/category")
	public Map<String,Object> maincategory(@RequestBody CategoryVO ca) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		System.out.println(ca);
		List<CategoryVO> list = categoryService.selectCategory(ca);
		map.put("list", list);
		return map; 
	}
	@RequestMapping(value= "/init")
	public ModelAndView init(ModelAndView mv){
	    
		mv.setViewName("redirect:/"); 
		String DATA_DIRECTORY = "D:/pic/Send Anywhere (2022-02-07 14-30-36)";
		traceFile(DATA_DIRECTORY, "/");
	  return mv;
	}
	
	public void traceFile(String root, String dic) {
		File dir = new File(root+dic);
		
		String []filenames = dir.list();
		for(String filename : filenames) {
			File file = new File(root+dic+filename);
			if(file.isDirectory()) {
				traceFile(root, dic+filename+"/");
			}else {
				productService.initImage(dic, filename);
				System.out.println(dic+filename);
			}
		}
	}
	
	@RequestMapping(value= "/product", method=RequestMethod.GET)
	public ModelAndView productGet(ModelAndView mv, Integer pro_cat_id){
		ProductVO product = productService.getProductByCategory(pro_cat_id);
	    ArrayList<ImageVO> list = productService.getImageList(product.getPro_id());
	    //ProductVO product = productService.getProduct(pro_id);
	    CategoryVO category = adminService.getCategory(pro_cat_id);

	    mv.addObject("list",list);
	    mv.addObject("product",product);
	    mv.addObject("category",category);
	    //System.out.println(img);
	    mv.setViewName("/product/product");
	    return mv;
	}
	
	@ResponseBody
	@RequestMapping(value= "/album", method=RequestMethod.GET)
	public ArrayList<ImageVO> albumGet(ModelAndView mv,@RequestParam Integer pro_id){
	    ArrayList<ImageVO> list = productService.getImageList(pro_id);
	    
	    System.out.println(pro_id);
	    return list;
	}
}

