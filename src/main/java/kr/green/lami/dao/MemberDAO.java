package kr.green.lami.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.green.lami.vo.MemberVO;

public interface MemberDAO {
	
	void insertMember(@Param("user")MemberVO user);

	MemberVO selectMember(@Param("me_id")String me_id);

	void updateSession(@Param("user")MemberVO user);

	void updateMember(@Param("user")MemberVO inputUser);

	String selelctByEmail(@Param("user")MemberVO member);

	List<MemberVO> selectMemberList();

	MemberVO selectMemberBySessionId(@Param("me_session_id")String me_session_id);

}
