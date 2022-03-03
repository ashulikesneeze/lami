package kr.green.lami.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.green.lami.vo.MainCategoryVO;
import kr.green.lami.vo.MemberVO;
import kr.green.lami.vo.MiddleCategoryVO;
import kr.green.lami.vo.Small2CategoryVO;
import kr.green.lami.vo.Small3CategoryVO;
import kr.green.lami.vo.SmallCategoryVO;

public interface MemberDAO {
	
	void insertMember(@Param("user")MemberVO user);

	MemberVO selectMember(@Param("me_id")String me_id);

	void updateSession(@Param("user")MemberVO user);

	void updateMember(@Param("user")MemberVO inputUser);

	String selelctByEmail(@Param("user")MemberVO member);

	List<MemberVO> selectMemberList();

	MemberVO selectMemberBySessionId(@Param("me_session_id")String me_session_id);

	List<MainCategoryVO> selectMainCategory();

	List<MiddleCategoryVO> selectMiddleCategory(@Param("mid_ma_cat_id")Integer mid_ma_cat_id);

	List<SmallCategoryVO> selectSmallCategory(@Param("sm_mid_cat_id")Integer sm_mid_cat_id);

	List<Small2CategoryVO> selectSmall2Category(@Param("sm2_sm_cat_id")Integer sm2_sm_cat_id);

	List<Small3CategoryVO> selectSmall3Category(@Param("sm3_sm2_cat_id")Integer sm3_sm2_cat_id);

}
