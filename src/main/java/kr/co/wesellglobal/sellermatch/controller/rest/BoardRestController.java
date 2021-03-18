package kr.co.wesellglobal.sellermatch.controller.rest;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import kr.co.wesellglobal.sellermatch.helper.PageData;
import kr.co.wesellglobal.sellermatch.helper.RegexHelper;
import kr.co.wesellglobal.sellermatch.helper.UploadItem;
import kr.co.wesellglobal.sellermatch.helper.WebHelper;
import kr.co.wesellglobal.sellermatch.model.BoardDto;
import kr.co.wesellglobal.sellermatch.model.FileDto;
import kr.co.wesellglobal.sellermatch.service.BoardService;
import lombok.extern.slf4j.Slf4j;

/**
 * Handles requests for the application home page.
 */
@Slf4j
@RestController
public class BoardRestController {
	
	@Autowired
	BoardService boardService;
	
	@Autowired
	WebHelper webHelper;
	@Autowired
	RegexHelper regexHelper;
	
	@RequestMapping(value = "/usageFee2", method = RequestMethod.GET)
	public Map<String, Object> getBoard(Model model, @RequestParam(value = "tabNum", required = false) String tabNum,
			@RequestParam(value = "boardQaType", required = false) String boardQaType,
			// 검색어
			@RequestParam(value = "keyword", required = false) String keyword,
			// 페이지 구현에서 사용할 현재 페이지 번호
			@RequestParam(value = "page", defaultValue = "1") int nowPage) {
		
		String boardType;
		if (tabNum.equals("1")) { 
			boardType = "1";
		
			// 페이지 구현에 필요한 변수값 생성 
			int totalCount = 0;		// 전체 게시글 수
			int listCount = 2;		// 한 페이지당 표시할 목록 수
			int groupCount = 5;		// 한 그룹당 표시할 페이지 번호 수
			
			// 페이지 번호를 계산한 결과가 저장될 객체
			PageData pageData = null;
					
			BoardDto input = new BoardDto();
			input.setBoardType(boardType);
			
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
				output = boardService.getBoardList(input);
				boardCount = boardService.getBoardCount(input);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			Map<String, Object> data = new HashMap<String, Object>();
			
			
			data.put("output", output);
			data.put("boardCount", boardCount);
			data.put("minusCount", minusCount);
			data.put("pageData", pageData);
			data.put("keyword", keyword);
			return webHelper.getJsonData(data);
		}
		if (tabNum.equals("2")) {
			boardType = "2";
			
			BoardDto input = new BoardDto();
			input.setBoardType(boardType);
			input.setBoardQaType(boardQaType);
			
			if (keyword != null && keyword != "") {
				input.setBoardTitle(keyword);
				input.setBoardContents(keyword);
				input.setBoardWriter(keyword);
			}
			
			//목록조회
			List<BoardDto> output = null;
			
			try {
				output = boardService.getBoardList(input);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			Map<String, Object> data = new HashMap<String, Object>();
			
			
			data.put("output", output);
			data.put("keyword", keyword);
			return webHelper.getJsonData(data);
		}
		return webHelper.getJsonData();
	}
	
	@RequestMapping(value = "/OneToOne", method = RequestMethod.POST)
	public Map<String, Object> getQaBoard(
			@RequestParam(value = "boardFile", required = false) MultipartFile boardFile,
			@RequestParam(value = "boardWriter", defaultValue = "비회원") String boardWriter,
			@RequestParam(value = "boardTitle", required = false) String boardTitle,
			@RequestParam(value = "boardQaType", required = false) String boardQaType,
			@RequestParam(value = "boardEmail1", required = false) String boardEmail1,
			@RequestParam(value = "boardEmail2", required = false) String boardEmail2,
			@RequestParam(value = "boardContents", required = false) String boardContents){
		
		String boardEmail = boardEmail1 + "@" + boardEmail2;
		if (!regexHelper.isEmail(boardEmail)) {
			return webHelper.getJsonWarning("이메일형식이 아닙니다.");
		}
		
		/** 1) 업로드 처리 */
		// 업로드 결과가 저장된 Beans를 리턴받는다.
		FileDto item = null;
		
		BoardDto input = new BoardDto();
		input.setBoardId(webHelper.getUniqueId("B-", 4));
		input.setBoardType("4");
		input.setBoardTitle(boardTitle);
		input.setBoardQaType(boardQaType);
		input.setBoardEmail(boardEmail);
		input.setBoardContents(boardContents);
		input.setBoardWriter(boardWriter);
		try {
			if (boardFile != null && boardFile.getSize() != 0) {
				item = webHelper.saveMultipartFile(boardFile);
				input.setBoardFile(item.getFilePath());
			}
			
			boardService.addBoard(input);
		} catch (Exception e) {
			e.printStackTrace();
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
		
		return webHelper.getJsonData();
	}
	
}
