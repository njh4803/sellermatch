package kr.co.wesellglobal.sellermatch.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.wesellglobal.sellermatch.helper.PageData;
import kr.co.wesellglobal.sellermatch.helper.RegexHelper;
import kr.co.wesellglobal.sellermatch.helper.WebHelper;
import kr.co.wesellglobal.sellermatch.model.IndusDto;
import kr.co.wesellglobal.sellermatch.model.PpProfileDto;
import kr.co.wesellglobal.sellermatch.model.ProjectDto;
import kr.co.wesellglobal.sellermatch.model.SellerProfileDto;
import kr.co.wesellglobal.sellermatch.service.IndusService;
import kr.co.wesellglobal.sellermatch.service.ProjectService;
import lombok.extern.slf4j.Slf4j;

/**
 * Handles requests for the application home page.
 */
@Slf4j
@Controller
public class projectController {
	
	@Autowired
	ProjectService projectService;
	@Autowired
	IndusService indusService;
	@Autowired
	RegexHelper regexHelper;
	@Autowired
	WebHelper webHelper;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/project/add", method = RequestMethod.GET)
	public ModelAndView AddProject(Model model) {
		
		return new ModelAndView("addProject");
	}
	
	/*
	 * @RequestMapping(value = "/project/find", method = RequestMethod.GET) public
	 * ModelAndView findProject(Model model,
	 * 
	 * @RequestParam(value = "projNation", required = false) String[] projNation,
	 * 
	 * @RequestParam(value = "ppmemRname", required = false) String ppmemRname,
	 * 
	 * @RequestParam(value = "sellermemRname", required = false) String
	 * sellermemRname, // 검색어
	 * 
	 * @RequestParam(value = "keyword", required = false) String keyword, // 페이지
	 * 구현에서 사용할 현재 페이지 번호
	 * 
	 * @RequestParam(value = "page", defaultValue = "1") int nowPage) {
	 * 
	 * log.debug("=========================================="); if (projNation !=
	 * null) { for (int i = 0; i < projNation.length; i++) {
	 * log.debug("getProjNation ====" + projNation[i]); } }
	 * log.debug("==========================================");
	 * log.debug("=========================================="); if (projNation !=
	 * null) { log.debug("getProjNation ====" + projNation[projNation.length-1]); }
	 * log.debug("==========================================");
	 * 
	 * // 페이지 구현에 필요한 변수값 생성 int totalCount = 0; // 전체 게시글 수 int listCount = 10; //
	 * 한 페이지당 표시할 목록 수 int groupCount = 5; // 한 그룹당 표시할 페이지 번호 수
	 * 
	 * // 페이지 번호를 계산한 결과가 저장될 객체 PageData pageData = null;
	 * 
	 * ProjectDto input = new ProjectDto(); IndusDto input2 = new IndusDto(); if
	 * (keyword != null && keyword != "") { input.setProjDetail(keyword);
	 * input.setProjIndusName(keyword); input.setProjKeyword(keyword);
	 * input.setProjMemId(keyword); input.setProjTitle(keyword); }
	 * 
	 * //목록조회 List<ProjectDto> output = null; List<IndusDto> indusList = null; int
	 * projCount = 0; int minusCount = ((nowPage-1)*listCount); try { // 전체 게시글 수 조회
	 * totalCount = projectService.getProjectCount(input); // 페이지 번호 계산 pageData =
	 * new PageData(nowPage, totalCount, listCount, groupCount);
	 * 
	 * // SQL의 LIMIT절에서 사용될 값을 Beans의 static 변수에 저장
	 * ProjectDto.setOffset(pageData.getOffset());
	 * ProjectDto.setListCount(pageData.getListCount()); output =
	 * projectService.getProjectList(input); projCount =
	 * projectService.getProjectCount(input); indusList =
	 * indusService.getIndusList(input2); } catch (Exception e) {
	 * e.printStackTrace(); }
	 * 
	 * model.addAttribute("output", output); model.addAttribute("indusList",
	 * indusList); model.addAttribute("projCount", projCount);
	 * model.addAttribute("minusCount", minusCount); model.addAttribute("pageData",
	 * pageData); model.addAttribute("keyword", keyword);
	 * 
	 * 
	 * return new ModelAndView("findProject_test"); }
	 */
	
	@RequestMapping(value = "/project/find", method = RequestMethod.GET)
	public ModelAndView findProject(Model model,
			@RequestParam(value = "projNation[]", required = false) String[] projNation,
			@RequestParam(value = "projIndus[]", required = false) String[] projIndus,
			// 검색어
			@RequestParam(value = "keyword", required = false) String keyword,
			// 페이지 구현에서 사용할 현재 페이지 번호
			@RequestParam(value = "page", defaultValue = "1") int nowPage) {
		
		log.debug("==========================================");
		if (projNation != null) {
			for (int i = 0; i < projNation.length; i++) {
				log.debug(""+i);
				log.debug(projNation[i]);
			}
		}
		log.debug("==========================================");
		if (projIndus != null) {
			for (int i = 0; i < projIndus.length; i++) {
				log.debug(""+i);
				log.debug(projIndus[i]);
			}
		}
		log.debug("==========================================");
		
		
		
		// 페이지 구현에 필요한 변수값 생성 
		int totalCount = 0;		// 전체 게시글 수
		int listCount = 10;		// 한 페이지당 표시할 목록 수
		int groupCount = 5;		// 한 그룹당 표시할 페이지 번호 수
		
		// 페이지 번호를 계산한 결과가 저장될 객체
		PageData pageData = null;
		
		ProjectDto input = new ProjectDto();
		IndusDto input2 = new IndusDto();
		if (keyword != null && keyword != "") {
			input.setProjDetail(keyword);
			input.setProjIndusName(keyword);
			input.setProjKeyword(keyword);
			input.setProjMemId(keyword);
			input.setProjTitle(keyword);
		}
		
		//목록조회
		List<ProjectDto> output = null;
		List<IndusDto> indusList = null;
		int projCount = 0;
		int minusCount = ((nowPage-1)*listCount);
		try {
			// 전체 게시글 수 조회
			totalCount = projectService.getProjectCount(input);
			// 페이지 번호 계산
			pageData = new PageData(nowPage, totalCount, listCount, groupCount);
			
			// SQL의 LIMIT절에서 사용될 값을 Beans의 static 변수에 저장
			ProjectDto.setOffset(pageData.getOffset());
			ProjectDto.setListCount(pageData.getListCount());
			output = projectService.getProjectList(input);
			projCount = projectService.getProjectCount(input);
			indusList = indusService.getIndusList(input2);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		model.addAttribute("output", output);
		model.addAttribute("indusList", indusList);
		model.addAttribute("projCount", projCount);
		model.addAttribute("minusCount", minusCount);
		model.addAttribute("pageData", pageData);
		model.addAttribute("keyword", keyword);
		
		
		return new ModelAndView("findProject_test");
	}
}
