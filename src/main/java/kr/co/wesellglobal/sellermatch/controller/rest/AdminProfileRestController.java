package kr.co.wesellglobal.sellermatch.controller.rest;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import kr.co.wesellglobal.sellermatch.helper.MailHelper;
import kr.co.wesellglobal.sellermatch.helper.RegexHelper;
import kr.co.wesellglobal.sellermatch.helper.UploadItem;
import kr.co.wesellglobal.sellermatch.helper.WebHelper;
import kr.co.wesellglobal.sellermatch.model.PpProfileDto;
import kr.co.wesellglobal.sellermatch.model.ProjectDto;
import kr.co.wesellglobal.sellermatch.model.SellerProfileDto;
import kr.co.wesellglobal.sellermatch.service.PpProfileService;
import kr.co.wesellglobal.sellermatch.service.SellerProfileService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
public class AdminProfileRestController {
	
	@Autowired
	SellerProfileService sellerProfileService;
	@Autowired
	PpProfileService ppProfileService;
	@Autowired
	RegexHelper regexHelper;
	@Autowired
	WebHelper webHelper;
	@Autowired
	MailHelper mailHelper;
	
	@RequestMapping(value = "/admin/profile", method = RequestMethod.GET)
	public Map<String, Object> getProfile(
			@RequestParam(value = "memSort", required = false) String memSort, 
			@RequestParam(value = "memId", required = false) String memId) {
		
		Map<String, Object> data = new HashMap<String, Object>();
		if (memSort.equals("1")) {
			PpProfileDto input = new PpProfileDto();
			input.setPpMemId(memId);
			
			PpProfileDto output = null;
			
			try {
				output = ppProfileService.getPpProfile(input);
			} catch (Exception e) {
				return webHelper.getJsonError(e.getLocalizedMessage());
			}
			
			
			data.put("output", output);
			return webHelper.getJsonData(data);
		}
		SellerProfileDto input = new SellerProfileDto();
		input.setSellerMemId(memId);
		
		SellerProfileDto output = null;
		
		try {
			output = sellerProfileService.getSellerProfile(input);
		} catch (Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
		
		data.put("output", output);
		return webHelper.getJsonData(data);
	}
}
