package kr.green.lami.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.lami.dao.CartDAO;
import kr.green.lami.vo.CartDTO;
import kr.green.lami.vo.CartVO;
import kr.green.lami.vo.ProductVO;

@Service
public class CartServiceImp implements CartService {
	
	@Autowired
	CartDAO cartDao;
	

	@Override
	public List<CartVO> findAll(int me_id) {
		// TODO Auto-generated method stub
		return cartDao.findAll(me_id);
	}

	@Override
	public int save(ProductVO productVO) {
		// TODO Auto-generated method stub
		CartVO cart = new CartVO();
		cart.setCa_me_id(null); // memberid
		cart.setCa_pro_id(cart.getCa_pro_id());
		
		return cartDao.save(cart);
	}

}
