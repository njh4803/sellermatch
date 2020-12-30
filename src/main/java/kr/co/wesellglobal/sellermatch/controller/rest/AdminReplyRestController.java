package kr.co.wesellglobal.sellermatch.controller.rest;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import kr.co.wesellglobal.sellermatch.helper.RegexHelper;
import kr.co.wesellglobal.sellermatch.helper.WebHelper;
import kr.co.wesellglobal.sellermatch.model.ReplyDto;
import kr.co.wesellglobal.sellermatch.service.impl.ReplyServiceImpl;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
public class AdminReplyRestController {
	
	@Autowired
	ReplyServiceImpl replyServiceImpl;
	@Autowired
	RegexHelper regexHelper;
	@Autowired
	WebHelper webHelper;
	
	@RequestMapping(value = "/admin/reply", method = RequestMethod.GET)
	public Map<String, Object> getReply(
			@RequestParam(value = "replyBoardId", required = false) String replyBoardId) {
		
		Map<String, Object> data = new HashMap<String, Object>();
		
		ReplyDto input = new ReplyDto();
		input.setReplyBoardId(replyBoardId);
		
		List<ReplyDto> output = null;
		int replyCount = 0;
		
		try {
			output = replyServiceImpl.getReplyList(input);
			replyCount = replyServiceImpl.getReplyCount(input);
		} catch (Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
		data.put("output", output);
		data.put("count", replyCount);
		return webHelper.getJsonData(data);
	}
	
}
