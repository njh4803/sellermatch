package kr.co.wesellglobal.sellermatch.service;

import java.util.List;

import kr.co.wesellglobal.sellermatch.model.ApplyDto;
import kr.co.wesellglobal.sellermatch.model.HashTagListDto;

public interface HashTagListService {
	
	public List<HashTagListDto> getHashTagList(HashTagListDto input) throws Exception;
	
	public int addHashTagList(HashTagListDto input) throws Exception;
	
	public HashTagListDto getHashTag(HashTagListDto input) throws Exception;
	
	public void editHashTagList(HashTagListDto input) throws Exception;
	
	public int reduplicationCheck(HashTagListDto input) throws Exception;

	public int getSeq() throws Exception;;
	
}
