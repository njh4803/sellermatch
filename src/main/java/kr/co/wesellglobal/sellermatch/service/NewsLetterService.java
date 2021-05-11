package kr.co.wesellglobal.sellermatch.service;

import java.util.List;

import kr.co.wesellglobal.sellermatch.model.NewsLetterDto;

public interface NewsLetterService {
	
	public void addNewsLetter(NewsLetterDto input) throws Exception;
	
	public List<NewsLetterDto> getNewsLetterList(NewsLetterDto input) throws Exception;

}
