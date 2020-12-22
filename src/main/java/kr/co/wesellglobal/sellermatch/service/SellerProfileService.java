package kr.co.wesellglobal.sellermatch.service;

import java.util.List;

import kr.co.wesellglobal.sellermatch.model.SellerProfileDto;

public interface SellerProfileService {
	
	public List<SellerProfileDto> getSellerProfileList(SellerProfileDto input) throws Exception;
	
	public void addSellerProfile(SellerProfileDto input) throws Exception;
	
	public SellerProfileDto getSellerProfile(SellerProfileDto input) throws Exception;
	
	public void editSellerProfile(SellerProfileDto input) throws Exception;
	
}
