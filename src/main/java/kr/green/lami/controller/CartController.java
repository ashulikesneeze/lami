package kr.green.lami.controller;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.green.lami.service.AdminService;
import kr.green.lami.service.CartService;
import kr.green.lami.service.ProductService;
import kr.green.lami.vo.CartVO;
import kr.green.lami.vo.ImageVO;
import kr.green.lami.vo.MemberVO;

@Controller
public class CartController {
	
	@Autowired
	CartService cartService;
	
	@Autowired
	ProductService productService;
	
	@Autowired
	AdminService adminService;

	@RequestMapping(value= "/cart/{me_id}", method=RequestMethod.GET)
	public ModelAndView cart(ModelAndView mv,@PathVariable String me_id, HttpSession session){
		System.out.println("me_id" + me_id);
		MemberVO user = (MemberVO)session.getAttribute("user");
		List<CartVO> carts = cartService.findAll(me_id);
		System.out.println("cartService.findAll(me_id)" + cartService.findAll(me_id));
		mv.addObject("carts", carts);
	    mv.setViewName("/cart/list");
	    return mv;
	}
	
	
	@RequestMapping(value= "/cart", method=RequestMethod.GET)
	@ResponseBody
	public int save(@RequestParam("img_id") Integer img_id, HttpSession session){
		System.out.println("pro_id = " + img_id);
		MemberVO user = (MemberVO) session.getAttribute("user");
		System.out.println("user = " + user.getMe_id());
		
		int count = cartService.save(img_id, user.getMe_id());
		if (count <= 0) {
		throw new IllegalArgumentException("cartVO 정보가잘못되었습니다.");
		}
		return count;
	}

	@RequestMapping(value= "/cartList", method=RequestMethod.GET)
	public ModelAndView cartList(ModelAndView mv, HttpSession session) {
		MemberVO user = (MemberVO) session.getAttribute("user");
		System.out.println("user = " + user.getMe_id());
		//해당 멤버 아이디에 해당하는 상품(앨범) 아이디 리스트를 가져오라고 서비스에 시킴 
		//List : '조회시'쓰임 순서대로 duplicate 허용
		//List<Integer> idList = cartService.getProductIdList(user.getMe_id());
		//Set : duplicate 허용안함 
		//Set<Integer> productIds = new HashSet<Integer>(idList);
		//System.out.println("productIds = " + productIds);
		
		//ArrayList<ImageVO> list = new ArrayList<ImageVO>();
		
		//반복문으로 프로덕트Id와 매칭을 통하여 해당 이미지들을 묶어 리스트로 가져옴 
		//for(int id : productIds) {
		//	list.addAll(productService.getImageList(id));
		//}
		//System.out.println("list = " + list);
		List<ImageVO> list = cartService.selectCartImageList(user.getMe_id());
		mv.addObject("list",list);
		mv.setViewName("/cart/cart");
		return mv;
	}

}
