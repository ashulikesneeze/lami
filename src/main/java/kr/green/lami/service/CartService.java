package kr.green.lami.service;

import java.util.List;

import kr.green.lami.vo.CartDTO;
import kr.green.lami.vo.CartVO;
import kr.green.lami.vo.ProductVO;

public interface CartService {
	int save(ProductVO productVO);

	List<CartVO> findAll(int me_id);
}
