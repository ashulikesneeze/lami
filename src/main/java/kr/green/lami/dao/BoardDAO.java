package kr.green.lami.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.green.lami.pagenation.Criteria;
import kr.green.lami.vo.BoardVO;
import kr.green.lami.vo.FileVO;

public interface BoardDAO {
	
	List<BoardVO> selectBoardList(@Param("qa_type")String qa_type);

	BoardVO selectBoard(@Param("qa_id")Integer qa_id);

	void insertBoard(@Param("board")BoardVO board);
	
	void updateBoard(@Param("board")BoardVO board);
	
	void deleteBoard(@Param("qa_id")Integer qa_id);
	
	void insertFile(@Param("file")FileVO file);
	
	void deleteFile(@Param("fi_id")int fi_id);

	List<BoardVO> selectBoardList(@Param("cri")Criteria cri);

	int selectBoardCount(@Param("cri")Criteria cri);

	List<FileVO> selectFileList(@Param("qa_id")Integer qa_id,@Param("fi_table_name")String fi_table_name);


}
