package kr.green.lami.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.green.lami.pagenation.Criteria;
import kr.green.lami.pagenation.PageMaker;
import kr.green.lami.service.AnswerService;
import kr.green.lami.vo.AnswerVO;
import kr.green.lami.vo.MemberVO;

@RestController
public class AnswerController {
	
	@Autowired 
	AnswerService answerService; 
	
	@RequestMapping("/answer/insert")
	public boolean answerInsert(
			@RequestBody AnswerVO answer,
			HttpServletRequest request) {
		MemberVO user = (MemberVO)request.getSession().getAttribute("user");
		return answerService.insertAnswer(answer, user);
	}
	@RequestMapping("/answer/list")
	public Map<String, Object> answerList(Integer page, Integer qa_id) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		
		//페이지메이커 : 총 컨텐츠 갯수(DB)
		//            한 페이지네이션에서 보여지는 페이지 숫자 최대 갯수(개발자가 설정)
		//            현재 페이지정보(현재 페이지, 한페이지에서 보여지는 컨텐츠의 최대 갯수)
		int totalCount = answerService.selectAnswerCount(qa_id); //DB에서 가져올 예정
		int displayPageNum = 5;
		Criteria cri = new Criteria(page, 5);
		
		List<AnswerVO> list = answerService.selectAnswerList(qa_id, cri);
		PageMaker pm = new PageMaker(totalCount, displayPageNum, cri);
		
		map.put("pm", pm);
		map.put("list", list);
		return map;
	}
	
	@RequestMapping("/answer/delete")
	public boolean answerDelete(Integer qa_id, HttpServletRequest request) {
		MemberVO user = (MemberVO)request.getSession().getAttribute("user");
		return answerService.deleteAnswer(qa_id, user);
	}
	
	
	@RequestMapping("/answer/modify")
	public boolean answerModify(@RequestBody AnswerVO answer, HttpServletRequest request) {
		MemberVO user = (MemberVO)request.getSession().getAttribute("user");
		return answerService.modifyAnswer(answer,user);
	}

}
