package kr.co.wesellglobal.sellermatch.controller.rest;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import kr.co.wesellglobal.sellermatch.helper.MailHelper;
import kr.co.wesellglobal.sellermatch.helper.RegexHelper;
import kr.co.wesellglobal.sellermatch.helper.WebHelper;
import kr.co.wesellglobal.sellermatch.model.ProfileDto;
import kr.co.wesellglobal.sellermatch.service.ProfileService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
public class AdminProfileRestController {
	
	@Autowired
	ProfileService profileService;
	@Autowired
	RegexHelper regexHelper;
	@Autowired
	WebHelper webHelper;
	@Autowired
	MailHelper mailHelper;
	
	@RequestMapping(value = "/admin/profile", method = RequestMethod.GET)
	public Map<String, Object> getProfile(
			@RequestParam(value = "memSort", required = false) String memSort, 
			@RequestParam(value = "memId", required = false) String memId) {
		
		Map<String, Object> data = new HashMap<String, Object>();
		ProfileDto input = new ProfileDto();
		input.setProfileMemId(memId);
		
		ProfileDto output = null;
		
		try {
			output = profileService.getProfile(input);
		} catch (Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
		
		
		data.put("output", output);
		data.put("memSort", memSort);
		return webHelper.getJsonData(data);
	}
	
	@RequestMapping(value = "/admin/profile", method = RequestMethod.PUT)
	public Map<String, Object> editOk(
			@ModelAttribute("profileDto") ProfileDto profileDto){
		
		if(profileDto.getProfileId() != null) {
			ProfileDto input = new ProfileDto();
			input.setProfileId(profileDto.getProfileId());
			input.setProfileMemId(profileDto.getProfileMemId());
			input.setProfileGrade(profileDto.getProfileGrade());
			input.setProfileIntro(profileDto.getProfileIntro());
			input.setProfileNation(profileDto.getProfileNation());
			input.setProfileBizNum(profileDto.getProfileBizNum());
			input.setProfileBizSort(profileDto.getProfileBizSort());
			input.setProfileBizCerti(profileDto.getProfileBizCerti());
			input.setProfileChChk(profileDto.getProfileChChk());
			input.setProfileChChkDate(profileDto.getProfileChChkDate());
			input.setProfileCareer(profileDto.getProfileCareer());
			input.setProfileSaleChk(profileDto.getProfileSaleChk());
			input.setProfileCh(profileDto.getProfileCh());
			input.setProfileIndus(profileDto.getProfileIndus());
			//input.setProfilePhoto(profileDto.getProfilePhoto);
			input.setProfileState(profileDto.getProfileState());
			input.setProfileRegDate(profileDto.getProfileRegDate());
			input.setProfileSort(profileDto.getProfileSort());
			input.setProfileHashtag(profileDto.getProfileHashtag());
			input.setProfileHit(profileDto.getProfileHit());
			input.setProfileRname(profileDto.getProfileRname());
			input.setProfileVolume(profileDto.getProfileVolume());
			try {
				profileService.editProfile(input);
			} catch (Exception e) {
				return webHelper.getJsonError(e.getLocalizedMessage());
			}
		}
		return webHelper.getJsonData();
		
	}
	
	/*
	 * @RequestMapping(value = "/admin/profile", method = RequestMethod.PUT) public
	 * Map<String, Object> updateMntPOST(@ModelAttribute("cri") SearchCriteria cri,
	 * 
	 * @RequestParam(value = "memId", required = false) String ppId) throws
	 * SQLException {
	 * 
	 * log.debug("test 입니다."); log.debug("aaaa : "+ ppId); log.debug("cri :" + cri);
	 * 
	 * Map<String, Object> data = new HashMap<String, Object>(); data.put("success",
	 * "success"); return webHelper.getJsonData(data); }
	 */
}
