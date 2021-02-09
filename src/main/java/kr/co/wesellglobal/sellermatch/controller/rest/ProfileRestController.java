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
import kr.co.wesellglobal.sellermatch.model.IndusDto;
import kr.co.wesellglobal.sellermatch.model.MemberDto;
import kr.co.wesellglobal.sellermatch.model.ProfileDto;
import kr.co.wesellglobal.sellermatch.model.ProjectDto;
import kr.co.wesellglobal.sellermatch.service.IndusService;
import kr.co.wesellglobal.sellermatch.service.ProfileService;
import kr.co.wesellglobal.sellermatch.service.ProjectService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
public class ProfileRestController {
	

	@Autowired
	ProfileService profileService;
	@Autowired
	IndusService indusService;
	@Autowired
	RegexHelper regexHelper;
	@Autowired
	WebHelper webHelper;
	@Autowired
	MailHelper mailHelper;
	
	@RequestMapping(value = "/seller/find2", method = RequestMethod.GET)
	public Map<String, Object> findSeller2(
			@RequestParam(value = "profileBizSort[]", required = false) String[] profileBizSort,
			@RequestParam(value = "profileNation[]", required = false) String[] profileNation,
			@RequestParam(value = "profileIndus[]", required = false) String[] profileIndus,
			@RequestParam(value = "profileChannel[]", required = false) int[] profileChannel,
			// 정렬 기준
			@RequestParam(value = "sort", required = false) String sort,
			// 검색어
			@RequestParam(value = "keyword", required = false) String keyword,
			// 페이지 구현에서 사용할 현재 페이지 번호
			@RequestParam(value = "page", defaultValue = "1") int nowPage) {
		// 페이지 구현에 필요한 변수값 생성
		int totalCount = 0; // 전체 게시글 수
		int listCount = 2; // 한 페이지당 표시할 목록 수
		int groupCount = 5; // 한 그룹당 표시할 페이지 번호 수

		// 페이지 번호를 계산한 결과가 저장될 객체
		PageData pageData = null;

		ProfileDto input = new ProfileDto();
		input.setProfileBizSortArr(profileBizSort);
		input.setProfileChannelArr(profileChannel);
		input.setProfileIndusArr(profileIndus);
		input.setProfileNationArr(profileNation);
		input.setProfileSort("2");
		input.setNeedIndus("Y");
		input.setSort(sort);
		
		
		
		IndusDto input2 = new IndusDto();
		if (keyword != null && keyword != "") {
			input.setMemNick(keyword);
			input.setProfileMemId(keyword);
			input.setProfileIntro(keyword);
		}

		// 목록조회
		List<ProfileDto> output = null;
		List<IndusDto> indusList = null;
		try {
			// 전체 게시글 수 조회
			totalCount = profileService.getProfileCount(input);
			// 페이지 번호 계산
			pageData = new PageData(nowPage, totalCount, listCount, groupCount);

			// SQL의 LIMIT절에서 사용될 값을 Beans의 static 변수에 저장
			ProfileDto.setOffset(pageData.getOffset());
			ProfileDto.setListCount(pageData.getListCount());
			output = profileService.getProfileList(input);
			indusList = indusService.getIndusList(input2);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		Map<String, Object> data = new HashMap<String, Object>();

		data.put("output", output);
		data.put("indusList", indusList);
		data.put("totalCount", totalCount);
		data.put("pageData", pageData);
		data.put("keyword", keyword);

		return webHelper.getJsonData(data);
	};
	
	@RequestMapping(value = "/profile", method = RequestMethod.POST)
	public Map<String, Object> addProfile(
			@ModelAttribute("profileDto") ProfileDto profileDto) {
		/** 1) 업로드 처리 */
		// 업로드 결과가 저장된 Beans를 리턴받는다.
		UploadItem item = null;
		
		try {
			if (profileDto.getProfilePhotoFile() != null && profileDto.getProfilePhotoFile().getSize() != 0) {
				item = webHelper.saveMultipartFile(profileDto.getProfilePhotoFile());
			}
		} catch (NullPointerException e) {
			e.printStackTrace();
			return webHelper.getJsonError(e.getLocalizedMessage());
		} catch (Exception e) {
			e.printStackTrace();
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
		
		ProfileDto input = new ProfileDto();
		input.setProfileId(profileDto.getProfileId());
		input.setMemNick(profileDto.getMemNick());
		input.setProfileMemId(profileDto.getProfileMemId());
		input.setProfileSort(profileDto.getProfileSort());
		input.setProfileGrade("1");
		input.setProfileChChk("0");
		input.setProfileSaleChk("0");
		input.setProfileBizCerti("0");
		input.setProfileState("1");
		if (profileDto.getProfilePhotoFile() != null && profileDto.getProfilePhotoFile().getSize() != 0) {
			input.setProfilePhoto(item.getFilePath());
		}
		input.setProfileIntro(profileDto.getProfileIntro());
		input.setProfileVolume(profileDto.getProfileVolume());
		input.setProfileCareer(profileDto.getProfileCareer());
		input.setProfileCh(profileDto.getProfileCh());
		input.setProfileNation(profileDto.getProfileNation());
		input.setProfileIndus(profileDto.getProfileIndus());
		input.setProfileBizNum(profileDto.getProfileBizNum());
		input.setProfileBizSort(profileDto.getProfileBizSort());
		input.setProfileHashtag(profileDto.getProfileHashtag());
		input.setProfileHit(profileDto.getProfileHit());
		
		try {
			profileService.editProfile(input);
		} catch (Exception e) {
			e.printStackTrace();
		}
		Map<String, Object> data = new HashMap<String, Object>();

		data.put("profileIndus", input.getProfileIndus());
		
		// 프로필 등록 후 세션 재설정
		MemberDto member = (MemberDto)webHelper.getSession("member");
		member.setExistProfile(input.getProfileIndus());
		webHelper.setSession("member", member);
		
		return webHelper.getJsonData(data);
	};
}
