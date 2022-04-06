package kr.green.lami.dao;

import java.util.List;

import kr.green.lami.vo.CartDTO;
import kr.green.lami.vo.CartVO;

public interface CartDAO {

	int save(CartVO cart);

	List<CartVO> findAll(int me_id);
}
