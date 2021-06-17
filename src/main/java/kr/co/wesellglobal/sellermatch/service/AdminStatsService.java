package kr.co.wesellglobal.sellermatch.service;

import java.util.List;

import kr.co.wesellglobal.sellermatch.model.AdminStatsDto;

public interface AdminStatsService {
	
	public List<AdminStatsDto> getAdminStatsList() throws Exception;

}
