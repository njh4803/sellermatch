package kr.co.wesellglobal.sellermatch.controller.rest;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import kr.co.wesellglobal.sellermatch.helper.RegexHelper;
import kr.co.wesellglobal.sellermatch.helper.WebHelper;
import kr.co.wesellglobal.sellermatch.model.AdminStatsDto;
import kr.co.wesellglobal.sellermatch.service.AdminStatsService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
public class AdminStatsRestController {

	@Autowired
	AdminStatsService adminStatsService;
	@Autowired
	RegexHelper regexHelper;
	@Autowired
	WebHelper webHelper;
	
	
	@RequestMapping(value = "/admin/totalStats", method = RequestMethod.POST)
	public Map<String, Object> getMemberStats() {
		List<AdminStatsDto> result = null;
		
		try {
			result = adminStatsService.getAdminStatsList();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("data", result);
		
		return webHelper.getJsonData(data);
	}
}
