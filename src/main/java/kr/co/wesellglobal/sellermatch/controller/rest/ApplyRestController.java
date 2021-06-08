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
import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.Context;

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
	ProjectService projectService;
	@Autowired
	ProfileService profileService;
	@Autowired
	RegexHelper regexHelper;
	@Autowired
	WebHelper webHelper;
	@Autowired
	MailHelper mailHelper;
	@Autowired
	private TemplateEngine emailTemplateEngine;	
	
	@RequestMapping(value = "/apply/project", method = RequestMethod.POST)
	public Map<String, Object> apply(
			@RequestParam(value = "projIdx", required = false)int projIdx,
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
		
		String memEmail = null;
		String content = "<div style='margin:auto;padding:0;width:700px;'>"
				+"<table width='700' border='0' cellspacing='0' cellpadding='0' style='padding:0;margin:0;border:1px solid #bcbcbc;text-align:centen;'>"
				+"<tbody><tr><td style='padding:0;margin:0;'>"
				+"<table width='698' border='0' cellspacing='0' cellpadding='0' style='padding:0;margin:0;'>"
				+"<tbody><tr><td width='37' style='padding:0;margin:0;'></td><td width='624' style='padding:0;margin:0;'>"
				+"<table width='624' border='0' cellspacing='0' cellpadding='0' style='padding:0;margin:0;'>"
				+"<tbody><tr><td style='padding:32px 0;margin:0;text-align:right;'><img style='padding:0;margin:0;vertical-align:top;' src='https://sellermatch.co.kr/assets/img/sellermatch_logo.png' alt='샐러매치' width='250px' 'loading='lazy'></td></tr><tr><td style='padding:35px 0 0;margin:0;border-top:1px solid #999ea3;'>"
				+"<p style='padding:0;margin:0 0 35px;text-align:center;font-size:34px;color:#333e48;line-height:45px;font-family:'Malgun Gothic';letter-spacing:-2px;font-weight: bold'>셀러매치 지원알림</p>"
				+"<table width='624' border='0' cellspacing='0' cellpadding='0' style='margin:0;padding:0;'>"
				+"<tbody><tr><td style='padding: 40px 40px 40px 40px;margin:0;text-align:left;background:#f5f5f6;'>"
				+"<p style='padding:0;margin:0;font-size:15px;color:#323d47;font-family:'Malgun Gothic';letter-spacing:-2px;line-height:22px;'>안녕하세요, 셀러매치입니다.</p><p style='padding:0;margin:0;font-size:15px;color:#323d47;font-family:'Malgun Gothic';letter-spacing:-2px;line-height:22px;'>회원님이 등록하신 거래처매칭 게시물에 "
				+member.getMemNick()
				+"님이 지원하였습니다.<p><p style='padding:0;margin:0;font-size:15px;color:#323d47;font-family:'Malgun Gothic';letter-spacing:-2px;line-height:22px;'><a href='https://sellermatch.co.kr/' style='text-decoration: none; font-weight: bold; color: purple;'>마이페이지 > '등록한 거래'에서 바로 지원관리 해보세요!</a></p>"
				+"</td></tr></tbody></table>"
				+"</td></tr><tr><td style='padding:0 0 35px;margin:0;'>"
				+"<p style='margin:35px 0 0;padding:0;text-align:center;color:#989ea3;font-size:11px;line-height:16px;font-family:'Malgun Gothic';letter-spacing:-1px;'>본 메일은 발신 전용 메일입니다.<br></p>"
				+"</td></tr></tbody></table>"
				+"</td><td width='37' style='padding:0;margin:0;'></td></tr></tbody></table>"
				+"</td></tr><tr><td style='padding: 25px 0 25px;margin:0;background:#f5f5f6;text-align:center;'>"
				+"<p align='left' style='text-align: left; margin: 0px 0px 0px 40px; padding: 0px; color: rgb(51, 62, 72); font-size: 11px; line-height: 16px; font-family: Malgun Gothic; letter-spacing: -1px;'><span style='color: rgb(154, 154, 154);'>위셀글로벌(주)</span></p><p align='left' style='text-align: left; margin: 0px 0px 0px 40px; padding: 0px; color: rgb(51, 62, 72); font-size: 11px; line-height: 16px; font-family: Malgun Gothic; letter-spacing: -1px;'><span style='color: rgb(154, 154, 154);'>서울특별시 강남구 언주로 147길 43 (호성빌딩 1층)</span></p><p align='left' style='text-align: left; margin: 0px 0px 0px 40px; padding: 0px; color: rgb(51, 62, 72); font-size: 11px; line-height: 16px; font-family: Malgun Gothic; letter-spacing: -1px;'><span style='color: rgb(154, 154, 154);'>TEL. 02-515-0923&nbsp; &nbsp;</span></p><p style='margin-left: 40px;'><span style='color: rgb(154, 154, 154);'>"
				+"</span></p><p style='text-align: left; margin-top: 10px; color: rgb(152, 158, 163); font-size: 11px; font-family: Malgun Gothic; letter-spacing: -0.5px; margin-left: 40px;'><span style='color: rgb(154, 154, 154);'>Copyright WeSellGlobal All Rights Reserved.</span></p>"
				+"</td></tr></tbody></table>"
				+"</div>";
		String subject = "셀러매치 지원알림";
		
		try {
			applyService.addApply(input);
			memEmail = projectService.getProjMemId(projIdx);
			
			mailHelper.sendMail(memEmail, subject, content);
		} catch (Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
		
		return webHelper.getJsonData();
	}
	
	@RequestMapping(value = "/recommend/project", method = RequestMethod.POST)
	public Map<String, Object> recommend(
			@RequestParam(value = "profileIdx", required = false)int profileIdx,
			@RequestParam(value = "applyProjId", required = false)String applyProjId,
			@RequestParam(value = "applyMemId", required = false)String applyMemId,
			@RequestParam(value = "applyType", required = false)String applyType,
			@RequestParam(value = "applyProjState", required = false)String applyProjState,
			@SessionAttribute(value = "member", required = false) MemberDto member){
		
		ApplyDto input = new ApplyDto();
		input.setApplyId(webHelper.getUniqueId("A-", member.getMemIdx()));
		input.setApplyProjId(applyProjId);
		input.setApplyMemId(applyMemId);
		input.setApplyProfile("2");
		input.setApplyProjState(applyProjState);
		input.setApplyType(applyType);
		
		ProfileDto input2 = new ProfileDto();
		input2.setProfileIdx(profileIdx);
		
		String memEmail = null;
		
		Context context = new Context();
	    context.setVariable("memNick", member.getMemNick());
		String htmlContent = emailTemplateEngine.process("recommand", context);

		String subject = "셀러매치 제안알림";
		ProfileDto output = null;
		
		try {
			applyService.addApply(input);
			output = profileService.getProfile2(input2);
			memEmail = output.getProfileMemId();
			mailHelper.sendMail(memEmail, subject, htmlContent);
			
		} catch (Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
		
		return webHelper.getJsonData();
	}
	
	@RequestMapping(value = "/apply/project", method = RequestMethod.GET)
	public Map<String, Object> getApply(
			@RequestParam(value = "applyProjId", required = false)String applyProjId,
			@RequestParam(value = "applyMemId", required = false)String applyMemId,
			@RequestParam(value = "applyType", required = false)String applyType,
			@SessionAttribute(value = "member", required = false) MemberDto member){
		
		ApplyDto input = new ApplyDto();
		input.setApplyProjId(applyProjId);
		input.setApplyType(applyType);
		input.setApplyMemId(applyMemId);
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
