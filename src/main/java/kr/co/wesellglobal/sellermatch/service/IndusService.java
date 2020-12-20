package kr.co.wesellglobal.sellermatch.service;

import java.util.List;

import kr.co.wesellglobal.sellermatch.model.IndusDto;

public interface IndusService {
	
	public List<IndusDto> getIndusList(IndusDto input) throws Exception;
	
	public void addIndus(IndusDto input) throws Exception;
	
	public IndusDto getIndus(IndusDto input) throws Exception;
	
	public void editIndus(IndusDto input) throws Exception;
	
}
