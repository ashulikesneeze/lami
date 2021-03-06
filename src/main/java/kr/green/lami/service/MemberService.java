package kr.green.lami.service;

import java.util.List;

import kr.green.lami.vo.MemberVO;

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

	boolean changeAuthority(MemberVO member, MemberVO user);

}
