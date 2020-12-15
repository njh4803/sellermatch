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
import kr.co.wesellglobal.sellermatch.model.ProdList;
import kr.co.wesellglobal.sellermatch.model.Users;
import kr.co.wesellglobal.sellermatch.service.ProdListService;
import kr.co.wesellglobal.sellermatch.service.TestService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class AdminProductController {
	
	@Autowired
	TestService testService;
	@Autowired
	ProdListService prodListService;
	@Autowired
	RegexHelper regexHelper;
	@Autowired
	WebHelper webHelper;
	@Autowired
	MailHelper mailHelper;
	
	@RequestMapping(value = "/admin/product", method = RequestMethod.GET)
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
		
		return new ModelAndView("admin/product_add");
	}
	
	@RequestMapping(value = "/admin/productList", method = RequestMethod.GET)
	public ModelAndView adminProductList(Model model) {

		
		return new ModelAndView("admin/member_list");
	}
	
	@ResponseBody
	@RequestMapping(value = "/admin/product/add", method = RequestMethod.POST)
	public Map<String, Object> adminProductAdd(@RequestParam(value = "prodPhoto") MultipartFile prodPhoto,
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
		
		ProdList input = new ProdList();

		input.setProdNum("123213");
		input.setProdName(prodName);
		input.setProdPrice(prodPrice);
		input.setProdQty(prodQty);
		input.setProdDetail(prodDetail);
		input.setProdKeyword(prodKeyword);
		input.setProdEndDate(prodEndDate);
		input.setProdIndusA(prodIndusA);
		input.setProdIndusB(prodIndusB);
		input.setProdIndusC(prodIndusC);
		input.setProdPhoto(item.getFilePath());
		input.setProdDetailImg(str);
		input.setProdState("1");
		input.setProdMemId("njh4803@gmail.com");
		input.setProdXxx("");
		
		try {
			prodListService.addProduct(input);
		} catch (Exception e) {
			e.printStackTrace();
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
		return webHelper.getJsonData();
	}
}
