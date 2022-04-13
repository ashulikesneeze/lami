package kr.green.lami.service;

import java.util.List;
import kr.green.lami.vo.CartVO;
import kr.green.lami.vo.ProductVO;

public interface CartService {
	List<CartVO> findAll(String me_id);

	int save(Integer pro_id, String me_id);

	List<Integer> getProductIdList(String me_id);

}
