package kr.green.lami.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.lami.dao.CartDAO;
import kr.green.lami.vo.CartVO;
import kr.green.lami.vo.ImageVO;
import kr.green.lami.vo.ProductVO;

@Service
public class CartServiceImp implements CartService {
	
	@Autowired
	CartDAO cartDao;
	

	@Override
	public List<CartVO> findAll(String me_id) {
		return cartDao.findAll(me_id);
	}


	@Override
	public int save(Integer img_id, String me_id) {
		//CartVO 생성하여 Dao로 넘김 
		//ca_me_id와 ca_pro_id DB에 넘기면 ca_id를 자동생성하여 DB에 저장 
		CartVO cart = new CartVO();
		cart.setCa_me_id(me_id); 
		cart.setCa_img_id(img_id);
		return cartDao.save(cart);
	}


	@Override
	public List<Integer> getProductIdList(String me_id) {
		return cartDao.getProductIdList(me_id);
	}


	@Override
	public List<ImageVO> selectCartImageList(String me_id) {
		return cartDao.selectCartImageList(me_id);
	}
	
}
