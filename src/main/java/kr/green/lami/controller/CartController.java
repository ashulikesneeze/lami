package kr.green.lami.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.green.lami.service.CartService;
import kr.green.lami.vo.CartDTO;
import kr.green.lami.vo.CartVO;

@Controller
public class CartController {
	
	private final CartService cartService;
	
	public CartController(CartService cartService) {
		this.cartService = cartService;
	}
	
	@PostMapping("/cart")
	@ResponseBody
	public int save(@RequestBody CartDTO cartDTO) {
		
		int count = cartService.save(cartDTO);
		if (count <= 0) {
			throw new IllegalArgumentException("cartDTO 정보가 잘못되었습니다.");
		}
		
		return count;
	}
	
	@GetMapping("/cart/{me_id}")
	public ModelAndView cart(ModelAndView mv, @PathVariable String me_id) {
		System.out.println("# me_id " + me_id);
		System.out.println("# cartService.findAll(me_id) " + cartService.findAll(me_id));
		List<CartVO> carts = cartService.findAll(me_id);
		mv.addObject("carts", carts);
		mv.setViewName("/cart/list");
		return mv;
	}

}
