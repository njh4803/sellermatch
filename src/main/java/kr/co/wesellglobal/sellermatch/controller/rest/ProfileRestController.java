package kr.co.wesellglobal.sellermatch.controller.rest;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;

import kr.co.wesellglobal.sellermatch.helper.MailHelper;
import kr.co.wesellglobal.sellermatch.helper.PageData;
import kr.co.wesellglobal.sellermatch.helper.RegexHelper;
import kr.co.wesellglobal.sellermatch.helper.WebHelper;
import kr.co.wesellglobal.sellermatch.model.FileDto;
import kr.co.wesellglobal.sellermatch.model.HashTagDto;
import kr.co.wesellglobal.sellermatch.model.HashTagListDto;
import kr.co.wesellglobal.sellermatch.model.IndusDto;
import kr.co.wesellglobal.sellermatch.model.MemberDto;
import kr.co.wesellglobal.sellermatch.model.ProfileDto;
import kr.co.wesellglobal.sellermatch.model.ProjectDto;
import kr.co.wesellglobal.sellermatch.service.FileService;
import kr.co.wesellglobal.sellermatch.service.HashTagListService;
import kr.co.wesellglobal.sellermatch.service.HashTagService;
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
	@Autowired
	FileService fileService;
	@Autowired
	HashTagListService hashTagListService;
	@Autowired
	HashTagService hashTagService;
	
	
	@RequestMapping(value = "/seller/find2", method = RequestMethod.GET)
	public Map<String, Object> findSeller2(
			@RequestParam(value = "profileBizSort[]", required = false) String[] profileBizSort,
			@RequestParam(value = "profileNation[]", required = false) String[] profileNation,
			@RequestParam(value = "profileIndus[]", required = false) String[] profileIndus,
			@RequestParam(value = "profileChannel[]", required = false) String[] profileChannel,
			@RequestParam(value = "profileCareer[]", required = false) String[] profileCareer,
			@RequestParam(value = "profileVolume[]", required = false) String[] profileVolume,
			@RequestParam(value = "profileChChk[]", required = false) String profileChChk,
			@RequestParam(value = "profileSaleChk[]", required = false) String profileSaleChk,
			@RequestParam(value = "profileBizCerti[]", required = false) String profileBizCerti,
			// 정렬 기준
			@RequestParam(value = "sort", defaultValue = "regSort") String sort,
			// 검색어
			@RequestParam(value = "keyword", required = false) String keyword,
			// 페이지 구현에서 사용할 현재 페이지 번호
			@RequestParam(value = "page", defaultValue = "1") int nowPage) {
		// 페이지 구현에 필요한 변수값 생성
		int totalCount = 0; // 전체 게시글 수
		int listCount = 10; // 한 페이지당 표시할 목록 수
		int groupCount = 5; // 한 그룹당 표시할 페이지 번호 수

		// 페이지 번호를 계산한 결과가 저장될 객체
		PageData pageData = null;

		ProfileDto input = new ProfileDto();
		input.setProfileBizSortArr(profileBizSort);
		input.setProfileBizCerti(profileBizCerti);
		input.setProfileSaleChk(profileSaleChk);
		input.setProfileChChk(profileChChk);
		log.debug("profileChChkprofileChChkprofileChChkprofileChChkprofileChChkprofileChChk"+profileChChk);
		input.setProfileChannelArr(profileChannel);
		input.setProfileIndusArr(profileIndus);
		input.setProfileNationArr(profileNation);
		input.setProfileCareerArr(profileCareer);
		input.setProfileVolumeArr(profileVolume);
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
		data.put("sort", sort);

		return webHelper.getJsonData(data);
	};
	
	@RequestMapping(value = "/profile", method = RequestMethod.POST)
	public Map<String, Object> addProfile(
			HttpSession session, 
			@RequestParam(value="profilePhotoFile", required = false) MultipartFile photo,
			@ModelAttribute("profileDto") ProfileDto profileDto,
			@RequestParam(value = "tag", required = false) String tag) throws Exception {
		/** 1) 업로드 처리 */
		// 업로드 결과가 저장된 Beans를 리턴받는다.
		FileDto item = null;
		String profilehashtag = tag;
		
		// tag 합치기
		/*
		 * if (profileDto.getProfileHashtag() != null && tag != null) { profilehashtag =
		 * tag + "," + profileDto.getProfileHashtag(); } else if
		 * (profileDto.getProfileHashtag() == null) { profilehashtag = tag; } else if
		 * (tag == null){ profilehashtag = profileDto.getProfileHashtag(); }
		 */
		try {
			if (photo != null && photo.getSize() != 0) {
				item = webHelper.saveMultipartFile(photo);
				
				// 썸네일 이미지 생성하기
				if (item != null && item.getContentType().indexOf("image") > -1) {
					//필요한 이미지 사이즈로 썸네일 생성
					String thumbnailPath = null;
					
					try {
						thumbnailPath = webHelper.createThumbnail(item.getFilePath(), 240, 240, true);
					} catch (Exception e) {
						e.printStackTrace();
						return webHelper.getJsonError("썸네일 이미지 생성에 실패했습니다");
					}
					// 썸네일 경로를 URL로 변환
					//String thumbnailUrl = webHelper.getUploadUrl(thumbnailPath);
					// 리턴할 객체에 썸네일 정보 추가
					item.setThumbnailPath(thumbnailPath);
					item.setProfileId(profileDto.getProfileMemId());
					item.setProjThumbnail("0");
				}
				// 파일 정보를 DB에 저장
				fileService.addFile(item);
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
		if (photo != null && photo.getSize() != 0) {
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

		// 해시태그리스트
		HashTagListDto hashTagList = new HashTagListDto();
		hashTagList.setFrstRegistMngr(input.getProfileMemId());
		// 프로필 해시태그
		HashTagDto hashTag = new HashTagDto();
		hashTag.setId(input.getProfileId());
		hashTag.setHashType('2');
		hashTag.setFrstRegistMngr(input.getProfileMemId());
		hashTag.setLastRegistMngr(input.getProfileMemId());
		
		
		if (profilehashtag != null) {
			String profilehashtagList[] = profilehashtag.split(",");
			
			for (int i = 0; i < profilehashtagList.length; i++) {
				
				hashTagList.setHashNm(profilehashtagList[i]);
				
				// 기존에 존재하는지 검사
				int result = hashTagListService.reduplicationCheck(hashTagList);
				// 기존에 똑같은 해시태그가 존재한다면
				if (result != 0) {
					
					switch (i+1) {
					case 1:
						hashTag.setHashTag1(result);
						break;
					case 2:
						hashTag.setHashTag2(result);
						break;
					case 3:
						hashTag.setHashTag3(result);
						break;
					case 4:
						hashTag.setHashTag4(result);
						break;
					case 5:
						hashTag.setHashTag5(result);
						break;
					}
				} else {
					hashTagListService.addHashTagList(hashTagList);
					int hashId = hashTagListService.getSeq();
					switch (i+1) {
					case 1:
						hashTag.setHashTag1(hashId);
						break;
					case 2:
						hashTag.setHashTag2(hashId);
						break;
					case 3:
						hashTag.setHashTag3(hashId);
						break;
					case 4:
						hashTag.setHashTag4(hashId);
						break;
					case 5:
						hashTag.setHashTag5(hashId);
						break;
					}
				}
			}
			int isExist = hashTagService.isHashTag(hashTag);
			if (isExist == 0) {
				// 새로 생성
				hashTagService.addHashTag(hashTag);	
			} else {
				// 업데이트
				hashTagService.editHashTag(hashTag);
			}
		}		
		
		try {
			profileService.editProfile(input);
		} catch (Exception e) {
			e.printStackTrace();
		}
		Map<String, Object> data = new HashMap<String, Object>();

		data.put("profileIndus", input.getProfileIndus());
		
		/*
		 * // 프로필 등록 후 세션 재설정 if ( session.getAttribute("profile") !=null ){ // 기존에
		 * profile 세션 값이 존재한다면 session.removeAttribute("profile");// 기존값을 제거해 준다. }
		 * session.setAttribute("profile", input);
		 */
		
		return webHelper.getJsonData(data);
	};
}
