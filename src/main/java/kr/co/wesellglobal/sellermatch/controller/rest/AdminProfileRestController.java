package kr.co.wesellglobal.sellermatch.controller.rest;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
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
import kr.co.wesellglobal.sellermatch.model.SearchCriteria;
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
			data.put("memSort", memSort);
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
		data.put("memSort", memSort);
		return webHelper.getJsonData(data);
	}
	
	@RequestMapping(value = "/admin/profile", method = RequestMethod.PUT)
	public Map<String, Object> editOk(
			@ModelAttribute("cri") SearchCriteria cri){
		
		if(cri.getPpId() != null) {
			PpProfileDto input = new PpProfileDto();
			input.setPpId(cri.getPpId());
			input.setPpProjId(cri.getPpProjId());
			input.setPpMemId(cri.getPpMemId());
			input.setPpGrade(cri.getPpGrade());
			input.setPpIntro(cri.getPpIntro());
			input.setPpNation(cri.getPpNation());
			input.setPpBizNum(cri.getPpBizNum());
			input.setPpBizSort(cri.getPpBizSort());
			input.setPpBizCerti(cri.getPpBizCerti());
			input.setPpProfit(cri.getPpProfit());
			input.setPpProfitChkDate(cri.getPpProfitChkDate());
			input.setPpIndus(cri.getPpIndus());
			input.setPpCh(cri.getPpCh());
			//input.setPpPhoto(cri.getPpPhoto());
			input.setPpState(cri.getPpState());
			input.setPpRegDate(cri.getPpRegDate());
			try {
				ppProfileService.editPpProfile(input);
			} catch (Exception e) {
				return webHelper.getJsonError(e.getLocalizedMessage());
			}
		}
		
		if(cri.getSellerId() != null) {
			SellerProfileDto input = new SellerProfileDto();
			input.setSellerId(cri.getSellerId());
			input.setSellerMemId(cri.getSellerMemId());
			input.setSellerIntro(cri.getSellerIntro());
			input.setSellerChChk(cri.getSellerChChk());
			input.setSellerChChkDate(cri.getSellerChChkDate());
			input.setSellerCareer(cri.getSellerCareer());
			input.setSellerSaleChk(cri.getSellerSaleChk());
			input.setSellerNation(cri.getSellerNation());
			input.setSellerBizNum(cri.getSellerBizNum());
			input.setSellerBizSort(cri.getSellerBizSort());
			input.setSellerBizCerti(cri.getSellerBizCerti());
			input.setSellerGrade(cri.getSellerGrade());
			input.setSellerCh(cri.getSellerCh());
			input.setSellerIndus(cri.getSellerIndus());
			//input.setSellerPhoto(cri.getSellerPhoto());
			input.setSellerState(cri.getSellerState());
			input.setSellerRegDate(cri.getSellerRegDate());
			try {
				sellerProfileService.editSellerProfile(input);
			} catch (Exception e) {
				return webHelper.getJsonError(e.getLocalizedMessage());
			}
		}
		return webHelper.getJsonData();
		
	}
	
	/*
	 * @RequestMapping(value = "/admin/profile", method = RequestMethod.PUT) public
	 * Map<String, Object> updateMntPOST(@ModelAttribute("cri") SearchCriteria cri,
	 * 
	 * @RequestParam(value = "memId", required = false) String ppId) throws
	 * SQLException {
	 * 
	 * log.debug("test 입니다."); log.debug("aaaa : "+ ppId); log.debug("cri :" + cri);
	 * 
	 * Map<String, Object> data = new HashMap<String, Object>(); data.put("success",
	 * "success"); return webHelper.getJsonData(data); }
	 */
}
