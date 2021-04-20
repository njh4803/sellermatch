package kr.co.wesellglobal.sellermatch.controller.rest;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import kr.co.wesellglobal.sellermatch.helper.MailHelper;
import kr.co.wesellglobal.sellermatch.helper.RegexHelper;
import kr.co.wesellglobal.sellermatch.helper.UploadFileUtils;
import kr.co.wesellglobal.sellermatch.helper.WebHelper;
import kr.co.wesellglobal.sellermatch.model.FileDto;
import kr.co.wesellglobal.sellermatch.model.ProfileDto;
import kr.co.wesellglobal.sellermatch.model.ProjectDto;
import kr.co.wesellglobal.sellermatch.service.IndusService;
import kr.co.wesellglobal.sellermatch.service.ProfileService;
import kr.co.wesellglobal.sellermatch.service.ProjectService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
public class AdminProjectRestController {
	

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
	ProfileService profileService;
	
	@Resource(name = "uploadPath")
	private String uploadPath;
	
	@RequestMapping(value = "/admin/project/add", method = RequestMethod.POST)
	public Map<String, Object> projectAdd(
			@RequestParam(value = "projId", required = false) String projId,
			@RequestParam(value = "projMemId", required = false) String projMemId,
			@RequestParam(value = "projTitle", required = false) String projTitle,
			@RequestParam(value = "projSort", required = false) String projSort,
			@RequestParam(value = "projIndus", required = false) String projIndus,
			@RequestParam(value = "projPrice", required = false) int projPrice,
			@RequestParam(value = "projMargin", required = false) int projMargin,
			@RequestParam(value = "projNation", required = false) String projNation,
			@RequestParam(value = "projSupplyType", required = false) String projSupplyType,
			@RequestParam(value = "projEndDate", required = false) String projEndDate,
			@RequestParam(value = "projRecruitNum", required = false) int projRecruitNum,
			@RequestParam(value = "projDetail", required = false) String projDetail,
			@RequestParam(value = "projRequire", required = false) String projRequire,
			@RequestParam(value = "projKeyword", required = false) String projKeyword,
			@RequestParam(value = "projDetailImg[]", required = false) MultipartFile[] projDetailImg,
			@RequestParam(value = "projFile", required = false) MultipartFile projFile,
			@RequestParam(value = "projState", required = false) String projState,
			@RequestParam(value = "projProdCerti", required = false) String projProdCerti,
			@RequestParam(value = "projHit", required = false) int projHit,
			@RequestParam(value = "projProfit", required = false) String projProfit,
			@RequestParam(value = "ProjProfitChkDate", required = false) String projProfitChkDate) throws Exception {
		/** 1) 업로드 처리 */
		// 업로드 결과가 저장된 Beans를 리턴받는다.
		
		FileDto item = null;
		
		String str = "";
		for (int i = 0; i < projDetailImg.length; i++) {
			log.debug("projDetailImg = " + projDetailImg[i]);
		}
		
		log.debug("projDetailImg 사이즈 = " + projDetailImg.length);
		
		ResponseEntity<String> insertFileName;
		try {
			if (projFile != null) {
				
				item = webHelper.saveMultipartFile(projFile);
			}
			if (projDetailImg.length != 0) {
				for (int i = 0; i < projDetailImg.length; i++) {
					insertFileName = new ResponseEntity<String>(
							UploadFileUtils.uploadFile(uploadPath, projDetailImg[i].getOriginalFilename(), projDetailImg[i].getBytes()),
							HttpStatus.CREATED);
					str += insertFileName.getBody() + "|";
				}
			}
		} catch (NullPointerException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		ProjectDto input = new ProjectDto();
		input.setProjId(webHelper.getUniqueId("P-", Integer.parseInt(projSort)));
		input.setProjMemId(projMemId);
		input.setProjTitle(projTitle);
		input.setProjSort(projSort);
		input.setProjIndus(projIndus);
		input.setProjPrice(projPrice);
		input.setProjMargin(projMargin);
		input.setProjNation(projNation);
		input.setProjSupplyType(projSupplyType);
		input.setProjEndDate(projEndDate);
		input.setProjRecruitNum(projRecruitNum);
		input.setProjDetail(projDetail);
		input.setProjRequire(projRequire);
		input.setProjKeyword(projKeyword);
		input.setProjProdCerti(projProdCerti);
		input.setProjHit(projHit);
		input.setProjProfit(projProfit);
		input.setProjProfitChkDate(projProfitChkDate);
		if (projDetailImg.length != 0) {
			input.setProjDetailImg(str);
		}
		if (projFile != null) {
			
			input.setProjFile(item.getFilePath());
		}
		input.setProjState(projState);
		
		try {
			projectService.addProject(input);
		} catch (Exception e) {
			e.printStackTrace();
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
		return webHelper.getJsonData();
	}
	
	@RequestMapping(value = "/admin/project/edit", method = RequestMethod.POST)
	public Map<String, Object> editOk(
			@RequestParam(value = "projId", required = false) String projId,
			@RequestParam(value = "projMemId", required = false) String projMemId,
			@RequestParam(value = "projTitle", required = false) String projTitle,
			@RequestParam(value = "projSort", required = false) String projSort,
			@RequestParam(value = "projIndus", required = false) String projIndus,
			@RequestParam(value = "projPrice", required = false) int projPrice,
			@RequestParam(value = "projMargin", required = false) int projMargin,
			@RequestParam(value = "projNation", required = false) String projNation,
			@RequestParam(value = "projSupplyType", required = false) String projSupplyType,
			@RequestParam(value = "projEndDate", required = false) String projEndDate,
			@RequestParam(value = "projRecruitNum", required = false) int projRecruitNum,
			@RequestParam(value = "projDetail", required = false) String projDetail,
			@RequestParam(value = "projRequire", required = false) String projRequire,
			@RequestParam(value = "projKeyword", required = false) String projKeyword,
			@RequestParam(value = "detailImgList", required = false) String projDetailImg,
			@RequestParam(value = "projFile", required = false) MultipartFile projFile,
			@RequestParam(value = "projState", required = false) String projState,
			@RequestParam(value = "projProdCerti", required = false) String projProdCerti,
			@RequestParam(value = "projHit", required = false) int projHit,
			@RequestParam(value = "projProfit", required = false) String projProfit,
			@RequestParam(value = "ProjProfitChkDate", required = false) String projProfitChkDate) {
		/** 1) 업로드 처리 */
		// 업로드 결과가 저장된 Beans를 리턴받는다.
		FileDto item = null;
		
		try {
			if (projFile != null) {
				item = webHelper.saveMultipartFile(projFile);
			}
		} catch (NullPointerException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		ProjectDto input = new ProjectDto();
		input.setProjId(projId);
		input.setProjMemId(projMemId);
		input.setProjTitle(projTitle);
		input.setProjSort(projSort);
		input.setProjIndus(projIndus);
		input.setProjPrice(projPrice);
		input.setProjMargin(projMargin);
		input.setProjNation(projNation);
		input.setProjSupplyType(projSupplyType);
		input.setProjEndDate(projEndDate);
		input.setProjRecruitNum(projRecruitNum);
		input.setProjDetail(projDetail);
		input.setProjRequire(projRequire);
		input.setProjKeyword(projKeyword);
		input.setProjProdCerti(projProdCerti);
		input.setProjHit(projHit);
		input.setProjProfit(projProfit);
		input.setProjProfitChkDate(projProfitChkDate);
		if (projDetailImg != "" && projDetailImg != null) {
			input.setProjDetailImg(projDetailImg);
		}
		if (projFile != null) {
			input.setProjFile(item.getFilePath());
		}
		input.setProjState(projState);
		
		try {
			projectService.editProject(input);
		} catch (Exception e) {
			e.printStackTrace();
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
		return webHelper.getJsonData();
	}
	
	// 삭제 - 프로젝트 상태값을 정상에서 중지로 변경
	@RequestMapping(value = "/admin/projDelete", method = RequestMethod.POST)
	public Map<String, Object> deleteOk(
			@RequestParam(value = "projId[]", required = false) String[] projId){
		
		ProjectDto input = new ProjectDto();
		input.setIdArr(projId);
		input.setProjState("0");
		
		try {
			projectService.deleteProject(input);
		} catch (Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
		return webHelper.getJsonData();
		
	}
	
	// 삭제 - 프로젝트 상태값을 정상에서 중지로 변경
	@RequestMapping(value = "/admin/registrant", method = RequestMethod.GET)
	public Map<String, Object> registrantDetail(
			@RequestParam(value = "projMemId", required = false) String projMemId){
		
		ProfileDto input = new ProfileDto();
		input.setProfileMemId(projMemId);
		
		ProfileDto ProfileDto = null;
		
		try {
			ProfileDto = profileService.getProfile(input);
		} catch (Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
		
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("ProfileDto", ProfileDto);
		
		return webHelper.getJsonData(data);
	}	
}
