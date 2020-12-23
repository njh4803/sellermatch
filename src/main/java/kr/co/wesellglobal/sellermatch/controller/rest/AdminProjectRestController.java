package kr.co.wesellglobal.sellermatch.controller.rest;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import kr.co.wesellglobal.sellermatch.helper.MailHelper;
import kr.co.wesellglobal.sellermatch.helper.RegexHelper;
import kr.co.wesellglobal.sellermatch.helper.UploadItem;
import kr.co.wesellglobal.sellermatch.helper.WebHelper;
import kr.co.wesellglobal.sellermatch.model.ProjectDto;
import kr.co.wesellglobal.sellermatch.service.IndusService;
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
			@RequestParam(value = "projProdCerti", required = false) String projProdCerti) {
		/** 1) 업로드 처리 */
		// 업로드 결과가 저장된 Beans를 리턴받는다.
		UploadItem item = null;
		List<UploadItem> imgItem = null;
		
		String str = "";
		log.debug("projDetailImg 사이즈 = " + projDetailImg.length);
		try {
			if (projFile != null) {
				item = webHelper.saveMultipartFile(projFile);
			}
			if (projDetailImg != null || projDetailImg.length != 0) {
				imgItem = webHelper.saveMultipartFile(projDetailImg);
				for (int i = 0; i < projDetailImg.length; i++) {
					str += imgItem.get(i).getFilePath() + ",";
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
			@RequestParam(value = "projDetailImg[]", required = false) MultipartFile[] projDetailImg,
			@RequestParam(value = "projFile", required = false) MultipartFile projFile,
			@RequestParam(value = "projState", required = false) String projState,
			@RequestParam(value = "projProdCerti", required = false) String projProdCerti) {
		/** 1) 업로드 처리 */
		// 업로드 결과가 저장된 Beans를 리턴받는다.
		UploadItem item = null;
		List<UploadItem> imgItem = null;
		
		String str = "";
		log.debug("projDetailImg 사이즈 = " + projDetailImg.length);
		log.debug("projFile = " + projFile);
		
		try {
			if (projFile != null) {
				item = webHelper.saveMultipartFile(projFile);
			}
			if (projDetailImg != null || projDetailImg.length != 0) {
				imgItem = webHelper.saveMultipartFile(projDetailImg);
				for (int i = 0; i < projDetailImg.length; i++) {
					str += imgItem.get(i).getFilePath() + ",";
				}
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
		if (projDetailImg != null || projDetailImg.length != 0) {
			input.setProjDetailImg(str);
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
}
