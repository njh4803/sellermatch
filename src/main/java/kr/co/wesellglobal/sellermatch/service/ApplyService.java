package kr.co.wesellglobal.sellermatch.service;

import java.util.List;

import kr.co.wesellglobal.sellermatch.model.ApplyDto;
import kr.co.wesellglobal.sellermatch.model.MemberDto;

public interface ApplyService {
	
	public List<ApplyDto> getApplyList(ApplyDto input) throws Exception;
	
	public void addApply(ApplyDto input) throws Exception;
	
	public ApplyDto getApply(ApplyDto input) throws Exception;
	
	public void editApply(ApplyDto input) throws Exception;
	
	public int reduplicationCheck(ApplyDto input) throws Exception;
	
	public void updateApply(ApplyDto input) throws Exception;
	
	public void updateRecommand(ApplyDto input) throws Exception;
	
}
