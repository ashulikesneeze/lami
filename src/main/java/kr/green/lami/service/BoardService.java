package kr.green.lami.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import kr.green.lami.pagenation.Criteria;
import kr.green.lami.vo.BoardVO;
import kr.green.lami.vo.FileVO;
import kr.green.lami.vo.MemberVO;

public interface BoardService {
	
	BoardVO getBoard(Integer qa_id);
	
	void registerBoard(BoardVO board, MemberVO user, List<MultipartFile> files);
	
	int getTotalCount(Criteria cri);
	
	List<BoardVO> getBoardList(Criteria cri);
	
	List<FileVO> getFileList(Integer qa_id, String fi_table_name);
	
	void modifyBoard(BoardVO board, MemberVO user, List<MultipartFile> files2, Integer[] fileNums);
	
	void deleteBoard(Integer qa_id, MemberVO user);

	List<FileVO> selectFileList(Integer qa_id, String fi_table_name);

}
