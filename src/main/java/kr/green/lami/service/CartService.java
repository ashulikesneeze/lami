package kr.green.lami.service;

import java.util.List;

import kr.green.lami.vo.CartDTO;
import kr.green.lami.vo.CartVO;

public interface CartService {
	int save(CartDTO cartDTO);

	List<CartVO> findAll(int me_id);
}
