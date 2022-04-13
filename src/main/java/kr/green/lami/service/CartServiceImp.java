package kr.green.lami.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.lami.dao.CartDAO;
import kr.green.lami.vo.CartVO;
import kr.green.lami.vo.ProductVO;

@Service
public class CartServiceImp implements CartService {
	
	@Autowired
	CartDAO cartDao;
	

	@Override
	public List<CartVO> findAll(String me_id) {
		// TODO Auto-generated method stub
		return cartDao.findAll(me_id);
	}


	@Override
	public int save(Integer pro_id, String me_id) {
		CartVO cart = new CartVO();
		cart.setCa_me_id(me_id); // memberid
		cart.setCa_pro_id(pro_id);
		return cartDao.save(cart);
	}


	@Override
	public List<Integer> getProductIdList(String me_id) {
		// TODO Auto-generated method stub
		return cartDao.getProductIdList(me_id);
	}
	
}
