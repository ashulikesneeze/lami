package kr.green.lami.service;

import java.util.List;

import kr.green.lami.vo.MainCategoryVO;
import kr.green.lami.vo.MemberVO;
import kr.green.lami.vo.MiddleCategoryVO;
import kr.green.lami.vo.Small2CategoryVO;
import kr.green.lami.vo.Small3CategoryVO;
import kr.green.lami.vo.SmallCategoryVO;

public interface MemberService {

	boolean signup(MemberVO user);

	MemberVO login(MemberVO member);

	void insertAutoLogin(MemberVO user);

	String idCheck(String me_id);

	MemberVO updateMember(MemberVO inputUser, MemberVO user);

	String selectMemberByEmail(MemberVO member);

	String sendPassword(MemberVO member);
	
	List<MemberVO> getUserList(MemberVO user);
	
	MemberVO selectMemberBySessionId(String me_session_id);

	List<MainCategoryVO> selectMainCategory();

	List<MiddleCategoryVO> selectMiddleCategory(Integer mi_ma_cat_id);

	List<SmallCategoryVO> selectSmallCategory(Integer sm_mid_cat_id);

	List<Small2CategoryVO> selectSmall2Category(Integer sm2_sm_cat_id);

	List<Small3CategoryVO> selectSmall3Category(Integer sm3_sm2_cat_id);

}
