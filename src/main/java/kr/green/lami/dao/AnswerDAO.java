package kr.green.lami.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.green.lami.pagenation.Criteria;
import kr.green.lami.vo.AnswerVO;

public interface AnswerDAO {

	void insertAnswer(@Param("answer")AnswerVO answer);

	int selectAnswerCount(@Param("qa_id")Integer qa_id);

	List<AnswerVO> selectAnswerList(@Param("qa_id")Integer qa_id, @Param("cri") Criteria cri);

	AnswerVO selectAnswer(@Param("an_id")Integer an_id);

	void deleteAnswer(@Param("an_id")Integer an_id);

	void updateAnswer(@Param("answer")AnswerVO answer);

	AnswerVO selectAnswer(@Param("an_id")String an_me_id);

}
