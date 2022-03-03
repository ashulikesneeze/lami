package kr.green.lami.controller;

import java.io.FileInputStream;
import java.io.InputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.green.lami.pagenation.Criteria;
import kr.green.lami.pagenation.PageMaker;
import kr.green.lami.service.BoardService;
import kr.green.lami.vo.BoardVO;
import kr.green.lami.vo.FileVO;
import kr.green.lami.vo.MemberVO;


@Controller
public class BoardController {
	
	@Autowired
	 BoardService boardService;
	
	String uploadPath = "D:\\JAVA_ashu\\upload"; 
	
	@RequestMapping(value="/board/list", method=RequestMethod.GET)
	public ModelAndView boardListGet(ModelAndView mv, Criteria cri) {
		cri.setPerPageNum(5);
		List<BoardVO> list = boardService.getBoardList(cri);
		
		int totalCount = boardService.getTotalCount(cri);
		PageMaker pm = new PageMaker(totalCount, 2, cri); 
		
		mv.addObject("pm", pm);
		mv.addObject("list", list);
		mv.setViewName("/board/list");
		return mv;
	}
		
	@RequestMapping(value="/board/detail", method=RequestMethod.GET)
	public ModelAndView boardDetailGet(ModelAndView mv, Integer qa_id) {	
		//최대 1개를 가져와야 되기때문에 BoardVO
		BoardVO board = boardService.getBoard(qa_id); 
		//여러개를 가져 와야하기 때문에 List
		List<FileVO> fileList = boardService.getFileList(qa_id, "board");
		//확인한 값을 화면에 전달 
		mv.addObject("board",board);
		mv.addObject("fileList",fileList); 
		mv.setViewName("/board/detail");
		return mv;
	}
		
	@RequestMapping(value="/board/register", method=RequestMethod.GET)
	public ModelAndView boardRegisterGet(ModelAndView mv, BoardVO board) {	
		mv.addObject("board",board);
		mv.setViewName("/board/register");
		return mv;
	}
	
	@RequestMapping(value="/board/register", method=RequestMethod.POST)
	public ModelAndView boardRegisterPost(ModelAndView mv, BoardVO board, 
			HttpServletRequest request, List<MultipartFile> files2) {
		MemberVO user = (MemberVO)request.getSession().getAttribute("user");
		boardService.registerBoard(board, user, files2);
		mv.addObject("type",board.getQa_type());
		mv.setViewName("redirect:/board/list");
		return mv;
	}

	@ResponseBody
	@RequestMapping("/board/download")
	public ResponseEntity<byte[]> downloadFile(String fileName)throws Exception{
	    InputStream in = null;
	    ResponseEntity<byte[]> entity = null;
	    try{
	        String FormatName = fileName.substring(fileName.lastIndexOf(".")+1);
	        HttpHeaders headers = new HttpHeaders();
	        in = new FileInputStream(uploadPath+fileName);

	        fileName = fileName.substring(fileName.indexOf("_")+1);
	        headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
	        headers.add("Content-Disposition",  "attachment; filename=\"" 
				+ new String(fileName.getBytes("UTF-8"), "ISO-8859-1")+"\"");
	       entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in),headers,HttpStatus.CREATED);
	    }catch(Exception e) {
	        e.printStackTrace();
	        entity = new ResponseEntity<byte[]>(HttpStatus.BAD_REQUEST);
	    }finally {
	        in.close();
	    }
	    return entity;
	}
	
	@RequestMapping(value="/board/modify", method=RequestMethod.GET)
	public ModelAndView boardModifyGet(ModelAndView mv, Integer qa_id
			,HttpServletRequest request) {	
		MemberVO user = (MemberVO) request.getSession().getAttribute("user");
		BoardVO board = boardService.getBoard(qa_id);
		
		if(board == null) {
			mv.setViewName("redirect:/board/list");
		} else {
			List<FileVO> fileList = boardService.getFileList(qa_id, "board");
			mv.addObject("fileList", fileList);
			mv.addObject("board", board);
			mv.setViewName("/board/modify"); 
		}
		return mv;
	}
	
	@RequestMapping(value="/board/modify", method=RequestMethod.POST)
	public ModelAndView boardModifyPost(ModelAndView mv,BoardVO board, 
			HttpServletRequest request,
			List<MultipartFile> files2, Integer [] fileNums) {
		//기존 첨부파일 번호인 fileNums 확인
		//화면에서 수정한 게시글 정보가 넘어오는지 확인
		//System.out.println("게시글 : " + board);
		//서비스에게 게시글 정보를 주면서 업데이트하라고 시킴
		//서비스.게시글업데이트(게시글정보)
		MemberVO user = (MemberVO)request.getSession().getAttribute("user");
		System.out.println(files2);
		boardService.modifyBoard(board, user, files2, fileNums);
		//게시글 번호를 넘겨줌
		mv.addObject("qa_id", board.getQa_id());
		mv.setViewName("redirect:/board/detail");
		return mv;
	}

	@RequestMapping(value="/board/delete", method=RequestMethod.GET)
	public ModelAndView boardDeleteGet(ModelAndView mv,Integer qa_id, 
		HttpServletRequest request) {
		MemberVO user = (MemberVO)request.getSession().getAttribute("user");
		boardService.deleteBoard(qa_id, user);
		mv.setViewName("redirect:/board/list");
		return mv;
	}
}
