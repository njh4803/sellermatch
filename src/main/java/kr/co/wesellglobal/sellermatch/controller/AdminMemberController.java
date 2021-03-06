package kr.co.wesellglobal.sellermatch.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import kr.co.wesellglobal.sellermatch.helper.MailHelper;
import kr.co.wesellglobal.sellermatch.helper.PageData;
import kr.co.wesellglobal.sellermatch.helper.RegexHelper;
import kr.co.wesellglobal.sellermatch.helper.WebHelper;
import kr.co.wesellglobal.sellermatch.model.MemberDto;
import kr.co.wesellglobal.sellermatch.service.MemberService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class AdminMemberController {
	
	@Autowired
	MemberService memberService;
	@Autowired
	RegexHelper regexHelper;
	@Autowired
	WebHelper webHelper;
	@Autowired
	MailHelper mailHelper;

	
	@RequestMapping(value = "/admin/memberList", method = RequestMethod.GET)
	public ModelAndView adminMemberList(Model model,  @SessionAttribute(value = "member", required = false) MemberDto member, 
			// 검색어
			@RequestParam(value = "keyword", required = false) String keyword,
			// 페이지 구현에서 사용할 현재 페이지 번호
			@RequestParam(value = "page", defaultValue = "1") int nowPage,
			//0: 전체, 1:공급자, 2:판매자
			@RequestParam(value = "memSortFilter", defaultValue = "0") String memSortFilter,
			@RequestParam(value = "joinDate", required = false) String joinDate) {
		
		if (member == null) {
			return new ModelAndView("admin/admin_login");
		}
		
		if (!member.getMemSort().equals("3")) {
			return webHelper.redirect("temp", "관리자만 접근 가능합니다.");
		}
		// 페이지 구현에 필요한 변수값 생성 
		int totalCount = 0;		// 전체 게시글 수
		int listCount = 20;		// 한 페이지당 표시할 목록 수
		int groupCount = 5;		// 한 그룹당 표시할 페이지 번호 수
		
		// 페이지 번호를 계산한 결과가 저장될 객체
		PageData pageData = null;
		
		
		MemberDto input = new MemberDto();
		if (keyword != null && keyword != "") {
			input.setMemId(keyword);
			input.setMemAddr(keyword);
			input.setMemAddr2(keyword);
			input.setMemTel(keyword);
			input.setMemName(keyword);
			input.setMemNick(keyword);
		}
		if (!memSortFilter.equals("0")) {
			input.setMemSort(memSortFilter);
		}
		if (joinDate != null && joinDate != "") {
			input.setMemDate(joinDate);
		}
		
		//목록조회
		
		List<MemberDto> output = null;
		try {
			
			// 전체 게시글 수 조회
			totalCount = memberService.getMemberCount(input);
			// 페이지 번호 계산
			pageData = new PageData(nowPage, totalCount, listCount, groupCount);
			
			// SQL의 LIMIT절에서 사용될 값을 Beans의 static 변수에 저장
			MemberDto.setOffset(pageData.getOffset());
			MemberDto.setListCount(pageData.getListCount());
			output = memberService.getMemberList(input);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		model.addAttribute("output", output);
		model.addAttribute("pageData", pageData);
		model.addAttribute("keyword", keyword);
		model.addAttribute("memSortFilter",memSortFilter);
		model.addAttribute("joinDate",joinDate);
		
		
		return new ModelAndView("admin/member_list");
	}
	
	
	@RequestMapping(value = "/admin/memberAdd", method = RequestMethod.GET)
	public ModelAndView adminMemberAdd(Model model,  @SessionAttribute(value = "member", required = false) MemberDto member) {
		if (member == null) {
			return new ModelAndView("admin/admin_login");
		}
		
		if (!member.getMemSort().equals("3")) {
			return webHelper.redirect("temp", "관리자만 접근 가능합니다.");
		}
		return new ModelAndView("admin/member_add");
	}
	
	@RequestMapping(value = "/admin/memberStats", method = RequestMethod.GET)
	public ModelAndView adminMemberStats(Model model,  @SessionAttribute(value = "member", required = false) MemberDto member) {
		if (member == null) {
			return new ModelAndView("admin/admin_login");
		}
		
		if (!member.getMemSort().equals("3")) {
			return webHelper.redirect("temp", "관리자만 접근 가능합니다.");
		}
		return new ModelAndView("admin/member_stats");
	}
}
