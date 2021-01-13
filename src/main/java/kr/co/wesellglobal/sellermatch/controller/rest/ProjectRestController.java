package kr.co.wesellglobal.sellermatch.controller.rest;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.mysql.cj.x.protobuf.MysqlxDatatypes.Array;

import kr.co.wesellglobal.sellermatch.helper.MailHelper;
import kr.co.wesellglobal.sellermatch.helper.PageData;
import kr.co.wesellglobal.sellermatch.helper.RegexHelper;
import kr.co.wesellglobal.sellermatch.helper.UploadFileUtils;
import kr.co.wesellglobal.sellermatch.helper.UploadItem;
import kr.co.wesellglobal.sellermatch.helper.WebHelper;
import kr.co.wesellglobal.sellermatch.model.IndusDto;
import kr.co.wesellglobal.sellermatch.model.ProjectDto;
import kr.co.wesellglobal.sellermatch.model.SearchFind;
import kr.co.wesellglobal.sellermatch.service.IndusService;
import kr.co.wesellglobal.sellermatch.service.ProjectService;
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
	
	@Resource(name = "uploadPath")
	private String uploadPath;
	
	@RequestMapping(value = "/project/add", method = RequestMethod.POST)
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
			@RequestParam(value = "detailImgList", required = false) String projDetailImg,
			@RequestParam(value = "projFile", required = false) MultipartFile projFile,
			@RequestParam(value = "projState", required = false) String projState,
			@RequestParam(value = "projChannel", required = false) String projChannel,
			@RequestParam(value = "projProdCerti", required = false) String projProdCerti) throws Exception {
		/** 1) 업로드 처리 */
		// 업로드 결과가 저장된 Beans를 리턴받는다.
		UploadItem item = null;
		
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
		if (projDetailImg != "" && projDetailImg != null) {
			input.setProjDetailImg(projDetailImg);
		}
		if (projFile != null) {
			input.setProjFile(item.getFilePath());
		}
		input.setProjState(projState);
		input.setProjChannel(projChannel);
		
		try {
			projectService.addProject(input);
		} catch (Exception e) {
			e.printStackTrace();
			return webHelper.getJsonError(e.getLocalizedMessage());
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
			@RequestParam(value = "projProdCerti", required = false) String projProdCerti) {
		/** 1) 업로드 처리 */
		// 업로드 결과가 저장된 Beans를 리턴받는다.
		UploadItem item = null;
		
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
}
