package kr.co.wesellglobal.sellermatch.service;

import java.util.List;

import kr.co.wesellglobal.sellermatch.model.IndusList;

public interface IndusListService {
	
	public List<IndusList> getIndusList(IndusList input) throws Exception;
	
	public void addIndus(IndusList input) throws Exception;
	
	public IndusList getIndus(IndusList input) throws Exception;
	
	public void editIndus(IndusList input) throws Exception;
	
}
