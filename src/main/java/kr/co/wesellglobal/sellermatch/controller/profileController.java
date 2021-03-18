package kr.co.wesellglobal.sellermatch.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.wesellglobal.sellermatch.helper.PageData;
import kr.co.wesellglobal.sellermatch.helper.RegexHelper;
import kr.co.wesellglobal.sellermatch.helper.WebHelper;
import kr.co.wesellglobal.sellermatch.model.IndusDto;
import kr.co.wesellglobal.sellermatch.model.ProfileDto;
import kr.co.wesellglobal.sellermatch.model.ProjectDto;
import kr.co.wesellglobal.sellermatch.service.IndusService;
import kr.co.wesellglobal.sellermatch.service.ProfileService;
import kr.co.wesellglobal.sellermatch.service.ProjectService;
import lombok.extern.slf4j.Slf4j;

/**
 * Handles requests for the application home page.
 */
@Slf4j
@Controller
public class profileController {
	
	@Autowired
	ProfileService profileService;
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
	@RequestMapping(value = "/seller/find", method = RequestMethod.GET)
	public ModelAndView findSeller(Model model, 
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
		input.setProfileSort("2");
		input.setNeedIndus("Y");
		input.setSort(sort);
		
		
		
		IndusDto input2 = new IndusDto();
		if (keyword != null && keyword != "") {
			input.setMemNick(keyword);
			input.setProfileMemId(keyword);
			input.setProfileIntro(keyword);
		}
		
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

		model.addAttribute("output", output);
		model.addAttribute("indusList", indusList);
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("pageData", pageData);
		model.addAttribute("keyword", keyword);
		model.addAttribute("sort", sort);
		
		return new ModelAndView("findSeller");
	}
	
	@RequestMapping(value = "/seller/detail", method = RequestMethod.GET)
	public ModelAndView DetailSeller(Model model, 
			@RequestParam(value = "profileMemId", required = false)String profileMemId) {
		
		ProfileDto input = new ProfileDto();
		input.setProfileMemId(profileMemId);
		input.setProfileSort("2");
		input.setNeedIndus("Y");
		
		ProjectDto input2 = new ProjectDto();
		input2.setProjMemId(profileMemId);
		
		ProfileDto output = null;
		List<ProjectDto> project = null;
		
		
		try {
			output = profileService.getProfile(input);
			project = projectService.getProjectList(input2);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		model.addAttribute("output", output);
		model.addAttribute("project", project);
		return new ModelAndView("detailSeller");
	}
	
	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public ModelAndView addProfile(Model model, 
			@RequestParam(value = "profileMemId", required = false)String profileMemId,
			@RequestParam(value = "profileSort", required = false)String profileSort) {
		ProfileDto input = new ProfileDto();
		input.setProfileMemId(profileMemId);
		input.setProfileSort(profileSort);
		
		IndusDto input2 = new IndusDto();
		
		ProfileDto output = null;
		List<IndusDto> indusList = null;
		
		try {
			output = profileService.getProfile(input);
			indusList = indusService.getIndusList(input2);
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("output", output);
		model.addAttribute("indusList", indusList);
		return new ModelAndView("addProfile");
	}
}
