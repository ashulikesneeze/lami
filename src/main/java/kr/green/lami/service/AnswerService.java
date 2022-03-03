package kr.green.lami.service;

import java.util.List;

import kr.green.lami.pagenation.Criteria;
import kr.green.lami.vo.AnswerVO;
import kr.green.lami.vo.MemberVO;

public interface AnswerService {

	boolean insertAnswer(AnswerVO answer, MemberVO user);

	int selectAnswerCount(Integer qa_id);

	List<AnswerVO> selectAnswerList(Integer qa_id, Criteria cri);

	boolean deleteAnswer(Integer an_id, MemberVO user);

	boolean modifyAnswer(AnswerVO answer, MemberVO user);

}
