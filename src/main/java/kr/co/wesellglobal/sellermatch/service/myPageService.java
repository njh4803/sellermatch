package kr.co.wesellglobal.sellermatch.service;

import java.util.List;

import kr.co.wesellglobal.sellermatch.model.myPageDto;

public interface myPageService {

	public List<myPageDto> getMyProjectList(myPageDto input) throws Exception;
	
	public List<myPageDto> selectpRegistedProjectList(myPageDto input) throws Exception;
	
	public myPageDto selectpMyProjectCount(myPageDto input) throws Exception;

}
