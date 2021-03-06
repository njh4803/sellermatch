package kr.co.wesellglobal.sellermatch.controller.rest;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;

import clojure.repl__init;
import kr.co.wesellglobal.sellermatch.helper.MailHelper;
import kr.co.wesellglobal.sellermatch.helper.RegexHelper;
import kr.co.wesellglobal.sellermatch.helper.WebHelper;
import kr.co.wesellglobal.sellermatch.model.FileDto;
import kr.co.wesellglobal.sellermatch.model.HashTagDto;
import kr.co.wesellglobal.sellermatch.model.HashTagListDto;
import kr.co.wesellglobal.sellermatch.model.IndusDto;
import kr.co.wesellglobal.sellermatch.model.MemberDto;
import kr.co.wesellglobal.sellermatch.model.ProfileDto;
import kr.co.wesellglobal.sellermatch.model.ProjectDto;
import kr.co.wesellglobal.sellermatch.model.ReplyDto;
import kr.co.wesellglobal.sellermatch.model.myPageDto;
import kr.co.wesellglobal.sellermatch.service.FileService;
import kr.co.wesellglobal.sellermatch.service.HashTagListService;
import kr.co.wesellglobal.sellermatch.service.HashTagService;
import kr.co.wesellglobal.sellermatch.service.IndusService;
import kr.co.wesellglobal.sellermatch.service.ProfileService;
import kr.co.wesellglobal.sellermatch.service.ProjectService;
import kr.co.wesellglobal.sellermatch.service.ReplyService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
public class ProjectRestController {
	

	@Autowired
	ProjectService projectService;
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
	@Autowired
	ReplyService replyService;
	@Autowired
	ProfileService profileService;
	
	
	@Resource(name = "uploadPath")
	private String uploadPath;
	
	@RequestMapping(value = "/project/add", method = RequestMethod.POST)
	public Map<String, Object> projectAdd(HttpSession session,
			@SessionAttribute(value = "member", required = false) MemberDto member,
			@SessionAttribute(value = "profile", required = false) ProfileDto profile,
			@RequestParam(value = "projId", required = false) String projId,
			@RequestParam(value = "projMemId", required = false) String projMemId,
			@RequestParam(value = "projTitle", required = false) String projTitle,
			@RequestParam(value = "projSort", required = false) String projSort,
			@RequestParam(value = "projIndus", required = false) String projIndus,
			@RequestParam(value = "projPrice", required = false) Integer projPrice,
			@RequestParam(value = "projMargin", required = false) Integer projMargin,
			@RequestParam(value = "projNation", required = false) String projNation,
			@RequestParam(value = "projSupplyType", required = false) String projSupplyType,
			@RequestParam(value = "projEndDate", required = false) String projEndDate,
			@RequestParam(value = "projRecruitNum", required = false) Integer projRecruitNum,
			@RequestParam(value = "projDetail", required = false) String projDetail,
			@RequestParam(value = "projRequire", required = false) String projRequire,
			@RequestParam(value = "projKeyword", required = false) String projKeyword,
			@RequestParam(value = "projTag", required = false) String projTag,
			@RequestParam(value = "detailImgList", required = false) String projDetailImg,
			@RequestParam(value = "projFile", required = false) MultipartFile projFile,
			@RequestParam(value = "projThumbnailImg", required = false) MultipartFile projThumbnailImg,
			@RequestParam(value = "projState", required = false) String projState,
			@RequestParam(value = "projChannel", required = false) String projChannel,
			@RequestParam(value = "projProdCerti", required = false) String projProdCerti, 
			@RequestParam(value="profilePhotoFile", required = false) MultipartFile photo,
			@ModelAttribute("profileDto") ProfileDto profileDto,
			@RequestParam(value = "tag", required = false) String tag) throws Exception {
		
		
		/** 1) 업로드 처리 */
		// 업로드 결과가 저장된 Beans를 리턴받는다.
		FileDto item = null;
		FileDto item2 = null;
		String projhashtag = null;
		
		// tag 합치기
		if (projKeyword != null && regexHelper.isValue(projTag)) {
			projhashtag = projTag + "," + projKeyword;
		} else if (projKeyword == null) {
			projhashtag = projTag;
		} else if (!regexHelper.isValue(projTag)){ 
			projhashtag = projKeyword;
		}
			
		
		
		
		ProjectDto input = new ProjectDto();
		input.setProjId(webHelper.getUniqueId("P-", Integer.parseInt(projSort)));
		input.setProjMemId(member.getMemId());
		input.setProjTitle(projTitle);
		input.setProjSort(projSort);
		input.setProjIndus(projIndus);
		input.setProjMargin(projMargin);
		input.setProjNation(projNation);
		input.setProjSupplyType(projSupplyType);
		input.setProjEndDate(projEndDate);
		input.setProjRecruitNum(projRecruitNum);
		input.setProjDetail(projDetail);
		input.setProjRequire(projRequire);
		input.setProjProdCerti("0");
		input.setProjProfit("0");
		input.setProjState(projState);
		input.setProjChannel(projChannel);
		if (projPrice == null) {
			input.setProjPrice(0);
		} else {
			input.setProjPrice(projPrice);
		}
		
		// 해시태그리스트
		HashTagListDto hashTagList = new HashTagListDto();
		hashTagList.setFrstRegistMngr(member.getMemId());
		// 프로젝트 해시태그
		HashTagDto hashTag = new HashTagDto();
		hashTag.setId(input.getProjId());
		hashTag.setHashType('1');
		hashTag.setFrstRegistMngr(member.getMemId());
		
		
		if (projhashtag != null) {
			String projhashtagList[] = projhashtag.split(",");
			
			for (int i = 0; i < projhashtagList.length; i++) {
				
				hashTagList.setHashNm(projhashtagList[i]);
				
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
			hashTagService.addHashTag(hashTag);			
		}


		
		try {
			if (projFile != null) {
				item = webHelper.saveMultipartFile(projFile);
				
				item.setThumbnailPath("none");
				item.setProjId(input.getProjId());
				item.setProjThumbnail("0");
				
				// 파일 정보를 DB에 저장
				fileService.addFile(item);
			}
			
			if (projThumbnailImg != null) {
				item2 = webHelper.saveMultipartFile(projThumbnailImg);
				// 썸네일 이미지 생성하기
				if (item2 != null && item2.getContentType().indexOf("image") > -1) {
					//필요한 이미지 사이즈로 썸네일 생성
					String thumbnailPath = null;
					
					try {
						thumbnailPath = webHelper.createThumbnail(item2.getFilePath(), 240, 240, true);
					} catch (Exception e) {
						e.printStackTrace();
						return webHelper.getJsonError("썸네일 이미지 생성에 실패했습니다");
					}
					// 썸네일 경로를 URL로 변환
					//String thumbnailUrl = webHelper.getUploadUrl(thumbnailPath);
					// 리턴할 객체에 썸네일 정보 추가
					item2.setThumbnailPath(thumbnailPath);
					item2.setProjId(input.getProjId());
					item2.setProjThumbnail("1");
					
					
				}
				// 파일 정보를 DB에 저장
				fileService.addFile(item2);
			}
			
		if (projDetailImg != null && projDetailImg.length() != 0) {
			input.setProjDetailImg(projDetailImg);
		}
		if (projFile != null && projFile.getSize() != 0) {
			input.setProjFile(item.getFilePath());
		}
		if (projThumbnailImg != null && projThumbnailImg.getSize() != 0) {
			input.setProjThumbnailImg(item2.getFilePath());
		}
			
		} catch (NullPointerException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		try {
			projectService.addProject(input);
			if (projDetailImg != null && projDetailImg.length() != 0) {
				
				FileDto fileDto = new FileDto();
				fileDto.setProjId(input.getProjId());
				
				String projDetailImgList[] = projDetailImg.split("\\|");
				for (int i = 0; i < projDetailImgList.length; i++) {
					fileDto.setFilePath(projDetailImgList[i]);
					fileService.editFile(fileDto);
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
		
		
		// 프로필
		item = null;
		String profilehashtag = tag;
		if (profile.getProfileIndus() == null) {
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
			
			ProfileDto input2 = new ProfileDto();
			
			input2.setProfileId(profile.getProfileId());
			input2.setMemNick(profileDto.getMemNick());
			input2.setProfileMemId(profile.getProfileMemId());
			input2.setProfileSort(profile.getProfileSort());
			input2.setProfileGrade("1");
			input2.setProfileChChk("0");
			input2.setProfileSaleChk("0");
			input2.setProfileBizCerti("0");
			input2.setProfileState("1");
			if (photo != null && photo.getSize() != 0) {
				input2.setProfilePhoto(item.getFilePath());
			}
			input2.setProfileVolume(profileDto.getProfileVolume());
			input2.setProfileCareer(profileDto.getProfileCareer());
			input2.setProfileCh(profileDto.getProfileCh());
			input2.setProfileHashtag(profileDto.getProfileHashtag());
			input2.setProfileIntro(profileDto.getProfileIntro());
			input2.setProfileNation(profileDto.getProfileNation());
			input2.setProfileIndus(profileDto.getProfileIndus());
			input2.setProfileBizNum(profileDto.getProfileBizNum());
			input2.setProfileBizSort(profileDto.getProfileBizSort());
			input2.setProfileHit(profileDto.getProfileHit());
	
			// 해시태그리스트
			hashTagList.setFrstRegistMngr(input2.getProfileMemId());
			// 프로필 해시태그
			hashTag.setId(input2.getProfileId());
			hashTag.setHashType('2');
			hashTag.setFrstRegistMngr(input2.getProfileMemId());
			hashTag.setLastRegistMngr(input2.getProfileMemId());
			
			
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
				profileService.editProfile(input2);
				profile = profileService.getProfile(input2);
			} catch (Exception e) {
				e.printStackTrace();
			}
			// 세션값 제거 후 
			session.removeAttribute("profile");
			// 재생성
			session.setAttribute("profile", profile);
		}
		return webHelper.getJsonData();
	}
	
	@RequestMapping(value = "/project/edit", method = RequestMethod.POST)
	public Map<String, Object> editOk(
			@RequestParam(value = "projId", required = false) String projId,
			@RequestParam(value = "projMemId", required = false) String projMemId,
			@RequestParam(value = "projTitle", required = false) String projTitle,
			@RequestParam(value = "projSort", required = false) String projSort,
			@RequestParam(value = "projIndus", required = false) String projIndus,
			@RequestParam(value = "projPrice", required = false) Integer projPrice,
			@RequestParam(value = "projMargin", required = false) Integer projMargin,
			@RequestParam(value = "projNation", required = false) String projNation,
			@RequestParam(value = "projSupplyType", required = false) String projSupplyType,
			@RequestParam(value = "projEndDate", required = false) String projEndDate,
			@RequestParam(value = "projRecruitNum", required = false) Integer projRecruitNum,
			@RequestParam(value = "projDetail", required = false) String projDetail,
			@RequestParam(value = "projRequire", required = false) String projRequire,
			@RequestParam(value = "tag", required = false) String tag,
			@RequestParam(value = "detailImgList", required = false) String projDetailImg,
			@RequestParam(value = "projFile", required = false) MultipartFile projFile,
			@RequestParam(value = "projFileIdx", required = false) MultipartFile projFileIdx,
			@RequestParam(value = "projThumbnailImg", required = false) MultipartFile projThumbnailImg,
			@RequestParam(value = "projState", required = false) String projState,
			@RequestParam(value = "projChannel", required = false) String projChannel,
			@RequestParam(value = "projProdCerti", required = false) String projProdCerti) throws Exception {
		/** 1) 업로드 처리 */
		// 업로드 결과가 저장된 Beans를 리턴받는다.
		FileDto item = null;
		FileDto item2 = null;
		String projhashtag = tag;
			
		
		ProjectDto input = new ProjectDto();
		input.setProjId(projId);
		input.setProjMemId(projMemId);
		input.setProjTitle(projTitle);
		input.setProjSort(projSort);
		input.setProjIndus(projIndus);
		input.setProjMargin(projMargin);
		input.setProjNation(projNation);
		input.setProjSupplyType(projSupplyType);
		input.setProjEndDate(projEndDate);
		input.setProjRecruitNum(projRecruitNum);
		input.setProjDetail(projDetail);
		input.setProjRequire(projRequire);
		input.setProjProdCerti("0");
		input.setProjProfit("0");
		input.setProjState(projState);
		input.setProjChannel(projChannel);
		if (projPrice == null) {
			input.setProjPrice(0);
		} else {
			input.setProjPrice(projPrice);
		}
		
		// 해시태그리스트
		HashTagListDto hashTagList = new HashTagListDto();
		hashTagList.setFrstRegistMngr(projMemId);
		// 프로젝트 해시태그
		HashTagDto hashTag = new HashTagDto();
		hashTag.setId(input.getProjId());
		hashTag.setHashType('1');
		hashTag.setFrstRegistMngr(projMemId);
		
		
		if (projhashtag != null) {
			String projhashtagList[] = projhashtag.split(",");
			
			for (int i = 0; i < projhashtagList.length; i++) {
				
				hashTagList.setHashNm(projhashtagList[i]);
				
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
			if (projFile != null) {
				item = webHelper.saveMultipartFile(projFile);
				
				item.setThumbnailPath("none");
				item.setProjId(input.getProjId());
				item.setProjThumbnail("0");
				
				// 기존에 존재하는지 확인
				if (fileService.getExist(item) != null) {
					// 파일 정보를 수정
					fileService.editFile(item);					
				} else {
					// 파일 정보를 저장
					fileService.addFile(item);
				}

			}
			
			if (projThumbnailImg != null) {
				item2 = webHelper.saveMultipartFile(projThumbnailImg);
				// 썸네일 이미지 생성하기
				if (item2 != null && item2.getContentType().indexOf("image") > -1) {
					//필요한 이미지 사이즈로 썸네일 생성
					String thumbnailPath = null;
					
					try {
						thumbnailPath = webHelper.createThumbnail(item2.getFilePath(), 240, 240, true);
					} catch (Exception e) {
						e.printStackTrace();
						return webHelper.getJsonError("썸네일 이미지 생성에 실패했습니다");
					}
					// 썸네일 경로를 URL로 변환
					//String thumbnailUrl = webHelper.getUploadUrl(thumbnailPath);
					// 리턴할 객체에 썸네일 정보 추가
					item2.setThumbnailPath(thumbnailPath);
					item2.setProjId(input.getProjId());
					item2.setProjThumbnail("1");
					
					
				}
				// 파일 정보를 수정
				fileService.editFile(item2);
			}
			
		if (projDetailImg != null && projDetailImg.length() != 0) {
			input.setProjDetailImg(projDetailImg);
		}
		if (projFile != null && projFile.getSize() != 0) {
			input.setProjFile(item.getFilePath());
		}
		if (projThumbnailImg != null && projThumbnailImg.getSize() != 0) {
			input.setProjThumbnailImg(item2.getFilePath());
		}
			
		} catch (NullPointerException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		try {
			projectService.editProject(input);
			if (projDetailImg != null && projDetailImg.length() != 0) {
				
				FileDto fileDto = new FileDto();
				fileDto.setProjId(input.getProjId());
				
				String projDetailImgList[] = projDetailImg.split("\\|");
				for (int i = 0; i < projDetailImgList.length; i++) {
					fileDto.setFilePath(projDetailImgList[i]);
					fileService.editFile(fileDto);
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
		return webHelper.getJsonData();
	}
	
	@RequestMapping(value = "/project/indus", method = RequestMethod.GET)
	public Map<String, Object> getIndusList(){
		
		IndusDto input = new IndusDto();
		List<IndusDto> indusList = null;
		
		try {
			indusList = indusService.getIndusList(input);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("indusList", indusList);
		
		return webHelper.getJsonData(data);
	}
	
	@RequestMapping(value = "/project", method = RequestMethod.GET)
	public Map<String, Object> getProjectList(
			@SessionAttribute(value = "member", required = false) MemberDto member){
		
		//프로젝트 제안하기 마감거래는 조회되지 않도록 하기위한 플래그 "Y"면 마감거래 조회 안하기
		String recommandProjectFlag = "Y";
		
		ProjectDto input = new ProjectDto();
		input.setProjMemId(member.getMemId());
		input.setRecommandProjectFlag(recommandProjectFlag);
		List<ProjectDto> projectList = null;
		
		try {
			ProjectDto.setListCount(0);
			projectList = projectService.getProjectList(input);
		} catch (Exception e) {
			e.printStackTrace();
		}
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("projectList", projectList);
		
		return webHelper.getJsonData(data);
	}
	
	
	@RequestMapping(value = "/project/reply", method = RequestMethod.POST)
	public Map<String, Object> addReply(
			@SessionAttribute(value = "member", required = false) MemberDto member,
			@ModelAttribute("replyDto") ReplyDto replyDto){
		ReplyDto input = new ReplyDto();
		
		input.setReplyWriter(member.getMemId());
		input.setReplyContents(replyDto.getReplyContents());
		input.setReplyProjId(replyDto.getReplyProjId());
		input.setReplySecret(replyDto.getReplySecret());
		input.setReplyPw(replyDto.getReplyPw());
		input.setReplyBoardId(replyDto.getReplyBoardId());
		if (replyDto.getReplyParentMemId() != null && replyDto.getReplyParentMemId() != "") {
			input.setReplyParentMemId(replyDto.getReplyParentMemId());
		} else {
			input.setReplyParentMemId(member.getMemId());
		}
		
		
		
		try {
			if (replyDto.getReplyParent() != 0) {
				input.setReplyParent(replyDto.getReplyParent());
				input.setReplyDepth("1");
			} else {
				input.setReplyParent(replyService.getSeq()+1);
				input.setReplyDepth("0");
			}
			replyService.addReply(input);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return webHelper.getJsonData();
	}
	
	
	@RequestMapping(value = "/project/peojectEnd", method = RequestMethod.POST)
	public Map<String, Object> scrap(@RequestParam(value = "projId", required = false) String projId,
			@SessionAttribute(value = "member", required = false) MemberDto member) {

		ProjectDto input = new ProjectDto();
		input.setProjId(projId);
		input.setProjMemId(member.getMemId());
		input.setProjState("2");

		try {
			projectService.peojectEnd(input);
		} catch (Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}

		return webHelper.getJsonData();
	}

	@RequestMapping(value = "/project/peojectEndDupCheck", method = RequestMethod.GET)
	public Map<String, Object> scrapDupCheck(@RequestParam(value = "projId", required = false) String projId,
			@SessionAttribute(value = "member", required = false) MemberDto member) {

		ProjectDto input = new ProjectDto();
		input.setProjId(projId);
		input.setProjMemId(member.getMemId());

		int result;
		try {
			result = projectService.peojectEndDupCheck(input);
		} catch (Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}

		Map<String, Object> data = new HashMap<String, Object>();
		data.put("result", result);

		return webHelper.getJsonData(data);
	}
}
