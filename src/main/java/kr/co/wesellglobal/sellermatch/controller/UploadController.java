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
import kr.co.wesellglobal.sellermatch.model.IndusList;
import kr.co.wesellglobal.sellermatch.model.MemList;
import kr.co.wesellglobal.sellermatch.model.ProdList;
import kr.co.wesellglobal.sellermatch.model.Users;
import kr.co.wesellglobal.sellermatch.service.IndusListService;
import kr.co.wesellglobal.sellermatch.service.ProdListService;
import kr.co.wesellglobal.sellermatch.service.TestService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class UploadController {
	
	@Autowired
	TestService testService;
	@Autowired
	ProdListService prodListService;
	@Autowired
	IndusListService indusListService;
	@Autowired
	RegexHelper regexHelper;
	@Autowired
	WebHelper webHelper;
	
	@ResponseBody
	@RequestMapping(value = "/admin/product/prodPhotoChange", method = RequestMethod.POST)
	public Map<String, Object> prodPhotoChange(@RequestParam(value = "prodPhoto") MultipartFile prodPhoto,
			@RequestParam(value = "prodNum") String prodNum){
		
		/** 1) 업로드 처리 */
		// 업로드 결과가 저장된 Beans를 리턴받는다.
		UploadItem item = null;
		ProdList input = new ProdList();
		
		try {
				item = webHelper.saveMultipartFile(prodPhoto);
				
		} catch (NullPointerException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		input.setProdNum(prodNum);
		input.setProdPhoto(item.getFilePath());
		
		try {
			prodListService.editProductPhoto(input);
		} catch (Exception e) {
			e.printStackTrace();
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
		return webHelper.getJsonData();
	}
	
	@ResponseBody
	@RequestMapping(value = "/admin/product/ImgChange", method = RequestMethod.POST)
	public void ImgChange(@RequestParam(value = "files") MultipartFile[] prodDetailImg,
			@RequestParam(value = "prodNum") String prodNum){
		/** 1) 업로드 처리 */
		// 업로드 결과가 저장된 Beans를 리턴받는다.
		List<UploadItem> imgItem = null;
		ProdList input = new ProdList();
		String str = "";
		
		try {
			imgItem = webHelper.saveMultipartFile(prodDetailImg);
			for (int i = 0; i < prodDetailImg.length; i++) {
				str += imgItem.get(i).getFilePath() + ",";
			}
		} catch (NullPointerException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		input.setProdNum(prodNum);
		input.setProdDetailImg(str);

		try {
			prodListService.editProductImg(input);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
