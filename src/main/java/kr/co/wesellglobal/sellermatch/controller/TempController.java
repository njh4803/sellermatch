package kr.co.wesellglobal.sellermatch.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import kr.co.wesellglobal.sellermatch.helper.PageData;
import kr.co.wesellglobal.sellermatch.helper.WebHelper;
import kr.co.wesellglobal.sellermatch.model.BoardDto;
import kr.co.wesellglobal.sellermatch.model.MemberDto;
import kr.co.wesellglobal.sellermatch.service.BoardService;
import lombok.extern.slf4j.Slf4j;

/**
 * Handles requests for the application home page.
 */
@Slf4j
@Controller
public class TempController {
	
	@Autowired
	BoardService boardService;
	
	@Autowired
	WebHelper webHelper;
	
	@RequestMapping(value = "/board", method = RequestMethod.GET)
	public ModelAndView board(Model model,
			@RequestParam(value = "boardType", required = false) String boardType,
			@RequestParam(value = "tabNum", required = false) String tabNum,
			@RequestParam(value = "boardQaType", required = false) String boardQaType,
			// 검색어
			@RequestParam(value = "keyword", required = false) String keyword,
			// 페이지 구현에서 사용할 현재 페이지 번호
			@RequestParam(value = "page", defaultValue = "1") int nowPage) {
		
		if (boardType.equals("4")) {
			return new ModelAndView("/boardOneToOne");
		}
		
		// 페이지 구현에 필요한 변수값 생성 
		int totalCount = 0;		// 전체 게시글 수
		int listCount = 8;		// 한 페이지당 표시할 목록 수
		int groupCount = 5;		// 한 그룹당 표시할 페이지 번호 수
		
		// 페이지 번호를 계산한 결과가 저장될 객체
		PageData pageData = null;
				
		BoardDto input = new BoardDto();
		input.setBoardType(boardType);
		if (boardType.equals("2") && boardQaType != null) {
			input.setBoardQaType(boardQaType);
		}
		
		
		//목록조회
		List<BoardDto> output = null;
		List<BoardDto> outputTopNotice = null;
		int boardCount = 0;
		int minusCount = ((nowPage-1)*listCount);
		
		try {
			// 전체 게시글 수 조회
			totalCount = boardService.getBoardCount(input);
			// 페이지 번호 계산
			pageData = new PageData(nowPage, totalCount, listCount, groupCount);
			
			// SQL의 LIMIT절에서 사용될 값을 Beans의 static 변수에 저장
			BoardDto.setOffset(pageData.getOffset());
			BoardDto.setListCount(pageData.getListCount());
			output = boardService.getBoardList(input);
			if (boardType.equals("1")) {
				outputTopNotice = boardService.getBoardListNoticeTop(input);
			}
			boardCount = boardService.getBoardCount(input);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		model.addAttribute("output", output);
		model.addAttribute("boardCount", boardCount);
		model.addAttribute("minusCount", minusCount);
		model.addAttribute("pageData", pageData);
		model.addAttribute("boardQaType", boardQaType);
		model.addAttribute("outputTopNotice", outputTopNotice);
		
		if (boardType.equals("1")) {
			return new ModelAndView("/boardNotice");
		}
		
		if (boardType.equals("3")) {
			return new ModelAndView("/boardFree");
		}
		
		return new ModelAndView("/usageFee");
	}
	
	@RequestMapping(value = "/usageFee", method = RequestMethod.GET)
	public ModelAndView usageFee(Model model) {
		
		return new ModelAndView("/usageFee");
	}
	
	@RequestMapping(value = "/notice", method = RequestMethod.GET)
	public ModelAndView notice(Model model,
			@RequestParam(value = "boardId", required = false) String boardId) {
		BoardDto input = new BoardDto();
		input.setBoardId(boardId);
		input.setBoardType("1");
		
		BoardDto output = null;
		
		try {
			output = boardService.getBoard(input);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		model.addAttribute("output", output);
		
		return new ModelAndView("boardNoticeDetail");
	}
	
	@RequestMapping(value = "/board/write", method = RequestMethod.GET)
	public ModelAndView boardWrite(Model model) {
		
		return new ModelAndView("boardWrite");
	}
}
