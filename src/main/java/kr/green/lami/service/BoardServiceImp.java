package kr.green.lami.service;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.green.lami.dao.BoardDAO;
import kr.green.lami.pagenation.Criteria;
import kr.green.lami.utils.UploadFileUtils;
import kr.green.lami.vo.BoardVO;
import kr.green.lami.vo.FileVO;
import kr.green.lami.vo.MemberVO;

@Service
public class BoardServiceImp implements BoardService {
	
	@Autowired
	BoardDAO boardDao;
	
	String uploadPath = "D:\\JAVA_ashu\\upload";

	private FileVO tmpFileVo; 

	@Override
	public List<BoardVO> getBoardList(Criteria cri) {
		System.out.println(cri);
		return boardDao.selectBoardList(cri);
	}

	@Override
	public BoardVO getBoard(Integer qa_id) {
		if(qa_id == null || qa_id <= 0)
			return null;
		
		return boardDao.selectBoard(qa_id);
	}

	@Override
	public void registerBoard(BoardVO board, MemberVO user, List<MultipartFile> files) {
 		if(board == null || user == null)
			return;
		if(board.getQa_title() == null
				|| board.getQa_title().trim().length() ==0)
			return;
		if(user.getMe_id() == null || user.getMe_id().trim().length() == 0)
			return; 
		if(!board.isAccessAuthority(user.getMe_authority()))
			return;
		board.setQa_me_id(user.getMe_id());
		boardDao.insertBoard(board);
		
		uploadFile(files, board.getQa_id(), "board"); 
	}

	private void uploadFile(List<MultipartFile> files, int qa_id, String table_name) {
		if(files == null || files.size() == 0)
			return;
		for(MultipartFile tmpFile : files) {
			if(tmpFile != null && tmpFile.getOriginalFilename().length() != 0) {
				try {
					String path = 
						UploadFileUtils.uploadFile(
							uploadPath, 
							tmpFile.getOriginalFilename(), 
							tmpFile.getBytes());
					FileVO file 
						= new FileVO(tmpFile.getOriginalFilename(),path,qa_id, table_name);
					System.out.println(file);
					boardDao.insertFile(file);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
	}


	@Override
	public int getTotalCount(Criteria cri) {
		return boardDao.selectBoardCount(cri);
	}

	@Override
	public List<FileVO> getFileList(Integer qa_id, String fi_table_name) {
		if(qa_id == null || qa_id <= 0)
		return null;
		return boardDao.selectFileList(qa_id, fi_table_name); 
	}


	@Override
	public void modifyBoard(BoardVO board, MemberVO user, List<MultipartFile> files2, Integer[] fileNums) {
		if(board == null || user == null || board.getQa_id() <= 0)
			return;
		
		BoardVO dbBoard = boardDao.selectBoard(board.getQa_id());
		
		if(dbBoard == null)
			return;
		
		if(!dbBoard.getQa_me_id().equals(user.getMe_id()))
			return; 
		
		boardDao.updateBoard(board);
		
		//첨부파일을 삭제(수정화면에서 x버튼 눌러서 취소환 첨부파일들)
		//게시글의 첨부파일들을 가져옴
		List<FileVO> fileList = boardDao.selectFileList(board.getQa_id(), "board");
		List<FileVO> remainFileList = new ArrayList<FileVO>(); 
		//가져온 첨부파일들 중에서 fileNums에 일치하는 번호가 있으면 remailFileList에 추가
		//유지해야할 첨부파일이 있는 경우
		if(fileNums != null && fileNums.length != 0) {
			for(FileVO tmp : fileList) {
				for(Integer tmpNum : fileNums) {
					if(tmp.getFi_id() == tmpNum) {
						remainFileList.add(tmp);
					}
				}
			}
			//게시글의 전체 첨부파일중 유지해야할 첨부파일을 제외한 첨부파일 만듬
			fileList.removeAll(remainFileList);
		}
		//실제 서버에서 삭제 후 DB에서 삭제처리
				if(fileList != null && fileList.size()!= 0) {
					for(FileVO tmp : fileList) {
						String fileName = tmp.getFi_name().replace("/",File.separator);
						File file = new File(uploadPath + fileName);
						boardDao.deleteFile(tmpFileVo.getFi_id());
						if(file.exists()) {
							file.delete();
						}
					}
				}
		//새로 추가한 첨부파일을 업로드
		uploadFile(files2, board.getQa_id(), "board");
	}

	@Override
	public void deleteBoard(Integer qa_id, MemberVO user) {
		if(qa_id == null || qa_id <= 0)
			return;
		BoardVO board = boardDao.selectBoard(qa_id);
		if(board == null)
			return; 
		if(user != null&&board.getQa_me_id().equals(user.getMe_id()))
			boardDao.deleteBoard(qa_id);
	}
	
	private void deleteFile(List<FileVO> fileList) {
		if(fileList != null && fileList.size() != 0) {
			for(FileVO tmpFileVo : fileList) {
				File f = 
					new File(uploadPath+tmpFileVo.getFi_name().replace("/", File.separator));
				if(f.exists()) {
					f.delete();
				}
				boardDao.deleteFile(tmpFileVo.getFi_id());
			}
		}
	}

	@Override
	public List<FileVO> selectFileList(Integer qa_id, String fi_table_name) {
		if(qa_id == null || qa_id <= 0)
			return null;
			return boardDao.selectFileList(qa_id, fi_table_name); 
	}

}
