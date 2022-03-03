package kr.green.lami.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.lami.dao.AnswerDAO;
import kr.green.lami.pagenation.Criteria;
import kr.green.lami.vo.AnswerVO;
import kr.green.lami.vo.MemberVO;

@Service
public class AnswerServiceImp implements AnswerService {
	
	@Autowired
	AnswerDAO answerDao; 
	
	@Override
	public boolean insertAnswer(AnswerVO answer, MemberVO user) {
		if(answer == null || user == null)
		return false;
		if(!answer.getAn_me_id().equals(user.getMe_id()))
			return false; 
		
		answerDao.insertAnswer(answer);
		
		return true; 
	}

	@Override
	public int selectAnswerCount(Integer qa_id) {
		if(qa_id == null || qa_id <= 0)
		return 0;
		return answerDao.selectAnswerCount(qa_id); 
	}

	@Override
	public List<AnswerVO> selectAnswerList(Integer qa_id, Criteria cri) {
		if(qa_id == null || qa_id <= 0)
		return null;
		return answerDao.selectAnswerList(qa_id,cri);
	}

	@Override
	public boolean deleteAnswer(Integer an_id, MemberVO user) {
		if(an_id == null || an_id <= 0 || user == null)
		return false;
		AnswerVO answer = answerDao.selectAnswer(an_id);
		
		if(answer == null || !answer.getAn_me_id().equals(answer.getAn_me_id()))
			return false; 
		
		answerDao.deleteAnswer(an_id); 
		
		return true; 
	}

	@Override
	public boolean modifyAnswer(AnswerVO answer, MemberVO user) {
		if(answer == null || user == null)
			return false; 
		if(answer.getAn_id() <= 0)
			return false; 
		AnswerVO dbAnswer = answerDao.selectAnswer(answer.getAn_me_id());
		if(dbAnswer == null)
		return false;
		if(!dbAnswer.getAn_me_id().equals(user.getMe_id()))
			return false;
		answerDao.updateAnswer(answer);
		return true; 
	}

}
