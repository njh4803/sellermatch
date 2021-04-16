package kr.co.wesellglobal.sellermatch.controller.rest;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import kr.co.wesellglobal.sellermatch.helper.MailHelper;
import kr.co.wesellglobal.sellermatch.helper.RegexHelper;
import kr.co.wesellglobal.sellermatch.helper.UploadItem;
import kr.co.wesellglobal.sellermatch.helper.WebHelper;
import kr.co.wesellglobal.sellermatch.model.BoardDto;
import kr.co.wesellglobal.sellermatch.model.ProjectDto;
import kr.co.wesellglobal.sellermatch.model.SearchCriteria;
import kr.co.wesellglobal.sellermatch.service.impl.BoardServiceImpl;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
public class AdminBoardRestController {
	
	@Autowired
	BoardServiceImpl boardServiceImpl;
	@Autowired
	RegexHelper regexHelper;
	@Autowired
	WebHelper webHelper;
	
	@ResponseBody
	@PostMapping("/admin/board")
	public Map<String, Object> addBoard(
			@ModelAttribute("BoardDto") BoardDto dto) {
		
		BoardDto input = new BoardDto();
		input.setBoardId(webHelper.getUniqueId("B-", Integer.parseInt(dto.getBoardType())));
		input.setBoardTitle(dto.getBoardTitle());
		input.setBoardContents(dto.getBoardContents());
		input.setBoardEmail(dto.getBoardEmail());
		input.setBoardQaType(dto.getBoardQaType());
		input.setBoardType(dto.getBoardType());
		if(dto.getBoardType().equals("1")) {
			input.setBoardNoticeTop(dto.getBoardNoticeTop());
		} else {
			input.setBoardNoticeTop("N"); 	//공지글이 아니면 모두 상단공지 여부 N으로 세팅
		}

		input.setBoardWriter("관리자");
		
		log.debug("dto : "+ dto);
		
		try {
			boardServiceImpl.addBoard(input);
			int count = boardServiceImpl.getBoardAdminCount(input);
		} catch (Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
		Map<String, Object> data = new HashMap<String, Object>();
		/* data.put("totalCount", count); */
		return webHelper.getJsonData();
		
	}
	
	@RequestMapping(value = "/admin/boardEdit", method = RequestMethod.POST)
	public Map<String, Object> editOk(
			@ModelAttribute("BoardDto") BoardDto dto){
		
		log.debug("dto : "+ dto);
		
		BoardDto input = new BoardDto();
		input.setBoardId(dto.getBoardId());
		input.setBoardTitle(dto.getBoardTitle());
		input.setBoardContents(dto.getBoardContents());
		input.setBoardEmail(dto.getBoardEmail());
		input.setBoardEditDate(dto.getBoardEditDate());
		input.setBoardType(dto.getBoardType());
		input.setBoardWriter(dto.getBoardWriter());
		
		try {
			boardServiceImpl.editBoard(input);
		} catch (Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
		return webHelper.getJsonData();
		
	}
	
	@RequestMapping(value = "/admin/boardDelete", method = RequestMethod.POST)
	public Map<String, Object> deleteOk(
			@RequestParam(value = "boardId[]", required = false) String[] boardId){
		
		BoardDto input = new BoardDto();
		input.setIdArr(boardId);
		
		try {
			boardServiceImpl.deleteBoard(input);
		} catch (Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
		return webHelper.getJsonData();
		
	}
}
