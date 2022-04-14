package kr.green.lami.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.green.lami.vo.CartVO;
import kr.green.lami.vo.ImageVO;

public interface CartDAO {
	
	List<CartVO> findAll(@Param("me_id")String me_id);
	
	int save(CartVO cart);
	
	List<Integer> getProductIdList(@Param("me_id")String me_id);

	List<ImageVO> selectCartImageList(@Param("me_id")String me_id);

}
