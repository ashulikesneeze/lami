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
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.green.lami.service.AdminService;
import kr.green.lami.service.CartService;
import kr.green.lami.service.ProductService;
import kr.green.lami.vo.CartVO;
import kr.green.lami.vo.CategoryVO;
import kr.green.lami.vo.ImageVO;
import kr.green.lami.vo.MemberVO;
import kr.green.lami.vo.ProductVO;

@Controller
public class CartController {
	
	@Autowired
	CartService cartService;
	
	@Autowired
	ProductService productService;
	
	@Autowired
	AdminService adminService;

	@GetMapping("/cart/{me_id}")
	public ModelAndView cart(ModelAndView mv, @PathVariable String me_id,  HttpSession session) {
		System.out.println("# me_id " + me_id);
		MemberVO user = (MemberVO)session.getAttribute("user");
		System.out.println("# cartService.findAll(me_id) " + cartService.findAll(me_id));
		List<CartVO> carts = cartService.findAll(me_id);
		mv.addObject("carts", carts);
		mv.setViewName("/cart/list");
		return mv;
	}

	@GetMapping("/cart")
	@ResponseBody
	public int save(@RequestParam("pro_id") Integer pro_id, HttpSession session) {
		System.out.println("# pro_id = " + pro_id);
		MemberVO user = (MemberVO) session.getAttribute("user");
		System.out.println("# user = " + user.getMe_id());
	
		int count = cartService.save(pro_id, user.getMe_id());
		if (count <= 0) {
		throw new IllegalArgumentException("cartDTO 정보가잘못되었습니다.");
		}

		return count;
	}
	
	@GetMapping("/cartList")
	public ModelAndView cartList(ModelAndView mv, HttpSession session) {
		MemberVO user = (MemberVO) session.getAttribute("user");
		System.out.println("# user = " + user.getMe_id());
		List<Integer> idList = cartService.getProductIdList(user.getMe_id());
		Set<Integer> productIds = new HashSet<Integer>(idList);
		System.out.println("# productIds = " + productIds);
		
		ArrayList<ImageVO> list = new ArrayList<ImageVO>();
		
		for (int id : productIds) {
			list.addAll(productService.getImageList(id));
		}
		
	
		System.out.println("# list = " + list);
		
		mv.addObject("list",list);
		mv.setViewName("/cart/cart");
		return mv;
	}

}
