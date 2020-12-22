package kr.co.wesellglobal.sellermatch.service;

import java.util.List;

import kr.co.wesellglobal.sellermatch.model.PpProfileDto;

public interface PpProfileService {
	
	public List<PpProfileDto> getPpProfileList(PpProfileDto input) throws Exception;
	
	public void addPpProfile(PpProfileDto input) throws Exception;
	
	public PpProfileDto getPpProfile(PpProfileDto input) throws Exception;
	
	public void editPpProfile(PpProfileDto input) throws Exception;
	
}
