package kr.co.wesellglobal.sellermatch.service;

import java.util.List;

import kr.co.wesellglobal.sellermatch.model.HashTagDto;

public interface HashTagService {
	
	public List<HashTagDto> getHashTagList(HashTagDto input) throws Exception;
	
	public void addHashTag(HashTagDto input) throws Exception;
	
	public HashTagDto getHashTag(HashTagDto input) throws Exception;
	
	public void editHashTag(HashTagDto input) throws Exception;
	
}
