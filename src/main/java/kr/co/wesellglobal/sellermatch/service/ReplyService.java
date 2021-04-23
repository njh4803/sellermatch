package kr.co.wesellglobal.sellermatch.service;

import java.util.List;

import kr.co.wesellglobal.sellermatch.model.ReplyDto;

public interface ReplyService {
	
	public List<ReplyDto> getReplyList(ReplyDto input) throws Exception;
	
	public void addReply(ReplyDto input) throws Exception;
			
	public int getReplyCount(ReplyDto input) throws Exception;
	
	public int getSeq() throws Exception;

	public void deleteReply(ReplyDto input) throws Exception;
}
