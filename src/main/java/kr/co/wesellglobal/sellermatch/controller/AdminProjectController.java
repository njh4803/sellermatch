package kr.co.wesellglobal.sellermatch.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.co.wesellglobal.sellermatch.helper.MailHelper;
import kr.co.wesellglobal.sellermatch.helper.RegexHelper;
import kr.co.wesellglobal.sellermatch.helper.UploadItem;
import kr.co.wesellglobal.sellermatch.helper.WebHelper;
import kr.co.wesellglobal.sellermatch.model.IndusDto;
import kr.co.wesellglobal.sellermatch.model.ProjectDto;
import kr.co.wesellglobal.sellermatch.model.Users;
import kr.co.wesellglobal.sellermatch.service.IndusService;
import kr.co.wesellglobal.sellermatch.service.ProjectService;
import kr.co.wesellglobal.sellermatch.service.TestService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class AdminProjectController {
	
	@Autowired
	TestService testService;
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
	
	@RequestMapping(value = "/admin/project", method = RequestMethod.GET)
	public ModelAndView adminProduct(Model model) {
		Users input = new Users();
		input.setId(1);
		Users output = null;
		
		try {
			output = testService.getUsers(input);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		model.addAttribute("output", output);
		
		return new ModelAndView("admin/project_add");
	}
	
	@RequestMapping(value = "/admin/projectList", method = RequestMethod.GET)
	public ModelAndView adminProductList(Model model) {
		ProjectDto input = new ProjectDto();
		
		//목록조회
		
		List<ProjectDto> output = null;
		try {
			output = projectService.getProjectList(input);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		model.addAttribute("output", output);
		
		return new ModelAndView("admin/project_list");
	}
	
	@ResponseBody
	@RequestMapping(value = "/admin/project/add", method = RequestMethod.POST)
	public Map<String, Object> adminProductAdd(
			@RequestParam(value = "prodPhoto") MultipartFile prodPhoto,
			@RequestParam(value = "files[]") MultipartFile[] prodDetailImg,
			@RequestParam(value = "prodName", required = false) String prodName,
			@RequestParam(value = "prodPrice", required = false) int prodPrice,
			@RequestParam(value = "prodQty", required = false) int prodQty,
			@RequestParam(value = "prodDetail", required = false) String prodDetail,
			@RequestParam(value = "prodKeyword", required = false) String prodKeyword,
			@RequestParam(value = "prodEndDate") String prodEndDate,
			@RequestParam(value = "prodIndusA") String prodIndusA,
			@RequestParam(value = "prodIndusB") String prodIndusB,
			@RequestParam(value = "prodIndusC", required = false) String prodIndusC) {
		/** 1) 업로드 처리 */
		// 업로드 결과가 저장된 Beans를 리턴받는다.
		UploadItem item = null;
		List<UploadItem> imgItem = null;
		String str = "";
		
		// 상품번호 생성
		String prodNum = String.format("%d%d%s", System.currentTimeMillis());
		log.debug("prodNum = " + prodNum);
		
		try {
			imgItem = webHelper.saveMultipartFile(prodDetailImg);
			for (int i = 0; i < prodDetailImg.length; i++) {
				str += imgItem.get(i).getFilePath() + ",";
			}
			item = webHelper.saveMultipartFile(prodPhoto);
		} catch (NullPointerException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		ProjectDto input = new ProjectDto();

		input.setProjPrice(prodPrice);
		input.setProjDetail(prodDetail);
		input.setProjKeyword(prodKeyword);
		input.setProjEndDate(prodEndDate);
		input.setProjDetailImg(str);
		input.setProjState("1");
		input.setProjMemId("njh4803@gmail.com");
		input.setProjXxx("");
		
		try {
			projectService.addProject(input);
		} catch (Exception e) {
			e.printStackTrace();
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
		return webHelper.getJsonData();
	}
	
	/*
	 * @RequestMapping(value = "/admin/project/edit", method = RequestMethod.GET)
	 * public ModelAndView adminProductEdit(Model model, @RequestParam(value =
	 * "prodNum") String prodNum) { ProjectDto input = new ProjectDto(); IndusDto
	 * input2 = new IndusDto(); input.setProjId(prodNum);
	 * 
	 * ProjectDto output = null; List<IndusDto> output2 = null; try { output =
	 * projectService.getProject(input); output2 =
	 * indusService.getIndusList(input2); } catch (Exception e) {
	 * e.printStackTrace(); }
	 * 
	 * model.addAttribute("output", output); model.addAttribute("output2", output2);
	 * 
	 * return new ModelAndView("admin/product_edit"); }
	 */
}
