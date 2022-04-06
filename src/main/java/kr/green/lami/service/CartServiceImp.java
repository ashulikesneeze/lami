package kr.green.lami.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.lami.dao.CartDAO;
import kr.green.lami.vo.CartDTO;
import kr.green.lami.vo.CartVO;

@Service
public class CartServiceImp implements CartService {
	
	@Autowired
	CartDAO cartDao;
	
	@Override
	public int save(CartDTO cartDTO) {
		// TODO Auto-generated method stub
		 // Data Transfer Object
		return cartDao.save(cartDTO);
	}

	@Override
	public List<CartVO> findAll(int me_id) {
		// TODO Auto-generated method stub
		return cartDao.findAll(me_id);
	}

}
