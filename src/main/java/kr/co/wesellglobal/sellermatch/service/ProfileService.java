package kr.co.wesellglobal.sellermatch.service;

import java.util.List;

import kr.co.wesellglobal.sellermatch.model.ProfileDto;

public interface ProfileService {
	
	public List<ProfileDto> getProfileList(ProfileDto input) throws Exception;
	
	public void addProfile(ProfileDto input) throws Exception;
	
	public ProfileDto getProfile(ProfileDto input) throws Exception;
	
	public int getProfileCount(ProfileDto input) throws Exception;
	
	public void editProfile(ProfileDto input) throws Exception;
	
}
