package kr.co.wesellglobal.sellermatch.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.co.wesellglobal.sellermatch.helper.MailHelper;
import kr.co.wesellglobal.sellermatch.helper.PageData;
import kr.co.wesellglobal.sellermatch.helper.RegexHelper;
import kr.co.wesellglobal.sellermatch.helper.UploadItem;
import kr.co.wesellglobal.sellermatch.helper.WebHelper;
import kr.co.wesellglobal.sellermatch.model.BoardDto;
import kr.co.wesellglobal.sellermatch.model.IndusDto;
import kr.co.wesellglobal.sellermatch.model.MemberDto;
import kr.co.wesellglobal.sellermatch.model.ProjectDto;
import kr.co.wesellglobal.sellermatch.service.BoardService;
import kr.co.wesellglobal.sellermatch.service.IndusService;
import kr.co.wesellglobal.sellermatch.service.ProjectService;
import kr.co.wesellglobal.sellermatch.service.impl.ReplyServiceImpl;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class AdminBoardController {
	
	@Autowired
	BoardService boardService;
	@Autowired
	ReplyServiceImpl replyServiceImpl;
	@Autowired
	RegexHelper regexHelper;
	@Autowired
	WebHelper webHelper;
	@Autowired
	MailHelper mailHelper;
	
	@RequestMapping(value = "/admin/boardList", method = RequestMethod.GET)
	public ModelAndView adminboardList(Model model,  @SessionAttribute(value = "member", required = false) MemberDto member, 
			// 검색어
			@RequestParam(value = "keyword", required = false) String keyword,
			// 페이지 구현에서 사용할 현재 페이지 번호
			@RequestParam(value = "page", defaultValue = "1") int nowPage) {
		if (member == null) {
			return new ModelAndView("admin/admin_login");
		}
		
		if (!member.getMemSort().equals("3")) {
			return webHelper.redirect("temp", "관리자만 접근 가능합니다.");
		}
		
		// 페이지 구현에 필요한 변수값 생성 
		int totalCount = 0;		// 전체 게시글 수
		int listCount = 20;		// 한 페이지당 표시할 목록 수
		int groupCount = 5;		// 한 그룹당 표시할 페이지 번호 수
		
		// 페이지 번호를 계산한 결과가 저장될 객체
		PageData pageData = null;
				
		BoardDto input = new BoardDto();
		if (keyword != null && keyword != "") {
			input.setBoardTitle(keyword);
			input.setBoardContents(keyword);
			input.setBoardWriter(keyword);
		}
		
		//목록조회
		
		List<BoardDto> output = null;
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
			output = boardService.getBoardAdminList(input);
			boardCount = boardService.getBoardAdminCount(input);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		model.addAttribute("output", output);
		model.addAttribute("boardCount", boardCount);
		model.addAttribute("minusCount", minusCount);
		model.addAttribute("pageData", pageData);
		model.addAttribute("keyword", keyword);
		
		return new ModelAndView("admin/board_list");
	}
}
