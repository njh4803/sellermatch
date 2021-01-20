package kr.co.wesellglobal.sellermatch.controller.rest;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;

import kr.co.wesellglobal.sellermatch.helper.MailHelper;
import kr.co.wesellglobal.sellermatch.helper.PageData;
import kr.co.wesellglobal.sellermatch.helper.RegexHelper;
import kr.co.wesellglobal.sellermatch.helper.UploadItem;
import kr.co.wesellglobal.sellermatch.helper.WebHelper;
import kr.co.wesellglobal.sellermatch.model.ApplyDto;
import kr.co.wesellglobal.sellermatch.model.IndusDto;
import kr.co.wesellglobal.sellermatch.model.MemberDto;
import kr.co.wesellglobal.sellermatch.model.ProfileDto;
import kr.co.wesellglobal.sellermatch.model.ProjectDto;
import kr.co.wesellglobal.sellermatch.service.ApplyService;
import kr.co.wesellglobal.sellermatch.service.IndusService;
import kr.co.wesellglobal.sellermatch.service.ProfileService;
import kr.co.wesellglobal.sellermatch.service.ProjectService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
public class ApplyRestController {
	
	@Autowired
	ApplyService applyService;
	@Autowired
	RegexHelper regexHelper;
	@Autowired
	WebHelper webHelper;
	@Autowired
	MailHelper mailHelper;
	
	@RequestMapping(value = "/apply/project", method = RequestMethod.POST)
	public Map<String, Object> apply(
			@RequestParam(value = "applyProjId", required = false)String applyProjId,
			@RequestParam(value = "applyType", required = false)String applyType,
			@RequestParam(value = "applyProjState", required = false)String applyProjState,
			@SessionAttribute(value = "member", required = false) MemberDto member){
		
		ApplyDto input = new ApplyDto();
		input.setApplyId(webHelper.getUniqueId("A-", member.getMemIdx()));
		input.setApplyProjId(applyProjId);
		input.setApplyMemId(member.getMemId());
		input.setApplyProfile(member.getMemSort());
		input.setApplyProjState(applyProjState);
		input.setApplyType(applyType);
		
		
		try {
			applyService.addApply(input);
		} catch (Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
		
		return webHelper.getJsonData();
	}
	
	@RequestMapping(value = "/apply/project", method = RequestMethod.GET)
	public Map<String, Object> getApply(
			@RequestParam(value = "applyProjId", required = false)String applyProjId,
			@SessionAttribute(value = "member", required = false) MemberDto member){
		
		ApplyDto input = new ApplyDto();
		input.setApplyProjId(applyProjId);
		input.setApplyMemId(member.getMemId());
		int result;
		try {
			result = applyService.reduplicationCheck(input);
		} catch (Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
		
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("result", result);
		
		return webHelper.getJsonData(data);
	}
	
	@RequestMapping(value = "/recommend/project", method = RequestMethod.GET)
	public Map<String, Object> getRecommend(
			@RequestParam(value = "applyProjId", required = false)String applyProjId,
			@SessionAttribute(value = "member", required = false) MemberDto member){
		
		ApplyDto input = new ApplyDto();
		input.setApplyProjId(applyProjId);
		input.setApplyMemId(member.getMemId());
		int result;
		try {
			result = applyService.reduplicationCheck(input);
		} catch (Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
		
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("result", result);
		
		return webHelper.getJsonData(data);
	}
}
