package kr.co.wesellglobal.sellermatch.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import kr.co.wesellglobal.sellermatch.helper.PageData;
import kr.co.wesellglobal.sellermatch.helper.RegexHelper;
import kr.co.wesellglobal.sellermatch.helper.WebHelper;
import kr.co.wesellglobal.sellermatch.model.IndusDto;
import kr.co.wesellglobal.sellermatch.model.MemberDto;
import kr.co.wesellglobal.sellermatch.model.ProjectDto;
import kr.co.wesellglobal.sellermatch.model.SearchFind;
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
	public ModelAndView AddProject(Model model,
			@SessionAttribute(value = "member", required = false) MemberDto member,
			HttpServletRequest request) {
		
		if (member == null) {
			return webHelper.redirect(null, "로그인 후 이용가능합니다.");
		}
		
		model.addAttribute("member", member);

		return new ModelAndView("addProject");
	}

	@RequestMapping(value = "/project/find", method = RequestMethod.GET)
	public ModelAndView findProject(Model model,
			@RequestParam(value = "projSort[]", required = false) String projSort,
			@RequestParam(value = "projNation[]", required = false) String[] projNation,
			@RequestParam(value = "projIndus[]", required = false) String[] projIndus,
			@RequestParam(value = "projPrice[]", required = false) String[] projPrice,
			@RequestParam(value = "projMargin[]", required = false) String[] projMargin,
			@RequestParam(value = "projSupplyType[]", required = false) String[] projSupplyType,
			@RequestParam(value = "ppmemRname[]", required = false) String ppMemRname,
			@RequestParam(value = "ppBizCerti[]", required = false) String ppBizCerti,
			@RequestParam(value = "projProdCerti[]", required = false) String projProdCerti,
			@RequestParam(value = "ppProfit[]", required = false) String ppProfit,
			@RequestParam(value = "sellermemRname[]", required = false) String sellerMemRname,
			@RequestParam(value = "sellerBizCerti[]", required = false) String sellerBizCerti,
			@RequestParam(value = "sellerChChk[]", required = false) String sellerChChk,
			@RequestParam(value = "sellerSaleChk[]", required = false) String sellerSaleChk,
			@RequestParam(value = "projChannel[]", required = false) String[] projChannel,
			// 정렬 기준
			@RequestParam(value = "sort", required = false) String sort,
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

		ProjectDto input = new ProjectDto();
		//input.setProjSortArr(projSort);
		input.setProjNationArr(projNation);
		input.setProjIndusArr(projIndus);
		input.setProjPriceArr(projPrice);
		input.setProjMarginArr(projMargin);
		input.setProjSupplyTypeArr(projSupplyType);
		input.setProjProdCerti(projProdCerti);
		input.setProjChannelArr(projChannel);
		input.setPpMemRname(ppMemRname);
		input.setSellerMemRname(sellerMemRname);
		input.setPpBizCerti(ppBizCerti);
		input.setPpProfit(ppProfit);
		input.setSellerBizCerti(sellerBizCerti);
		input.setSellerChChk(sellerChChk);
		input.setSellerSaleChk(sellerSaleChk);
		input.setSort(sort);
		
		
		
		IndusDto input2 = new IndusDto();
		if (keyword != null && keyword != "") {
			input.setProjDetail(keyword);
			input.setProjIndusName(keyword);
			input.setProjKeyword(keyword);
			input.setProjMemId(keyword);
			input.setProjTitle(keyword);
		}

		// 목록조회
		List<ProjectDto> output = null;
		List<IndusDto> indusList = null;
		int minusCount = ((nowPage - 1) * listCount);
		try {
			// 전체 게시글 수 조회
			totalCount = projectService.getProjectCount(input);
			// 페이지 번호 계산
			pageData = new PageData(nowPage, totalCount, listCount, groupCount);

			// SQL의 LIMIT절에서 사용될 값을 Beans의 static 변수에 저장
			ProjectDto.setOffset(pageData.getOffset());
			ProjectDto.setListCount(pageData.getListCount());
			output = projectService.getProjectList(input);
			indusList = indusService.getIndusList(input2);
		} catch (Exception e) {
			e.printStackTrace();
		}

		model.addAttribute("output", output);
		model.addAttribute("indusList", indusList);
		model.addAttribute("projCount", totalCount);
		model.addAttribute("minusCount", minusCount);
		model.addAttribute("pageData", pageData);
		model.addAttribute("keyword", keyword);

		return new ModelAndView("findProject_test");
	}
	
	@ResponseBody
	@RequestMapping(value = "/project/find2", method = RequestMethod.GET)
	public Map<String, Object> findProject2(Model model,
			@RequestParam(value = "projSort[]", required = false) String[] projSort,
			@RequestParam(value = "projNation[]", required = false) String[] projNation,
			@RequestParam(value = "projIndus[]", required = false) String[] projIndus,
			@RequestParam(value = "projPrice[]", required = false) String[] projPrice,
			@RequestParam(value = "projMargin[]", required = false) String[] projMargin,
			@RequestParam(value = "projSupplyType[]", required = false) String[] projSupplyType,
			@RequestParam(value = "ppmemRname[]", required = false) String ppMemRname,
			@RequestParam(value = "ppBizCerti[]", required = false) String ppBizCerti,
			@RequestParam(value = "projProdCerti[]", required = false) String projProdCerti,
			@RequestParam(value = "ppProfit[]", required = false) String ppProfit,
			@RequestParam(value = "sellermemRname[]", required = false) String sellerMemRname,
			@RequestParam(value = "sellerBizCerti[]", required = false) String sellerBizCerti,
			@RequestParam(value = "sellerChChk[]", required = false) String sellerChChk,
			@RequestParam(value = "sellerSaleChk[]", required = false) String sellerSaleChk,
			@RequestParam(value = "projChannel[]", required = false) String[] projChannel,
			// 정렬 기준
			@RequestParam(value = "sort", required = false) String sort,
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

		ProjectDto input = new ProjectDto();
		input.setProjSortArr(projSort);
		input.setProjNationArr(projNation);
		input.setProjIndusArr(projIndus);
		input.setProjPriceArr(projPrice);
		input.setProjMarginArr(projMargin);
		input.setProjSupplyTypeArr(projSupplyType);
		input.setProjProdCerti(projProdCerti);
		input.setProjChannelArr(projChannel);
		input.setPpMemRname(ppMemRname);
		input.setSellerMemRname(sellerMemRname);
		input.setPpBizCerti(ppBizCerti);
		input.setPpProfit(ppProfit);
		input.setSellerBizCerti(sellerBizCerti);
		input.setSellerChChk(sellerChChk);
		input.setSellerSaleChk(sellerSaleChk);
		input.setSort(sort);
		
		
		
		IndusDto input2 = new IndusDto();
		if (keyword != null && keyword != "") {
			input.setProjDetail(keyword);
			input.setProjIndusName(keyword);
			input.setProjKeyword(keyword);
			input.setProjMemId(keyword);
			input.setProjTitle(keyword);
		}

		// 목록조회
		List<ProjectDto> output = null;
		List<IndusDto> indusList = null;
		int projCount = 0;
		int minusCount = ((nowPage - 1) * listCount);
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
		
		Map<String, Object> data = new HashMap<String, Object>();

		data.put("output", output);
		data.put("indusList", indusList);
		data.put("projCount", projCount);
		data.put("minusCount", minusCount);
		data.put("pageData", pageData);
		data.put("keyword", keyword);

		return webHelper.getJsonData(data);
	}
}
