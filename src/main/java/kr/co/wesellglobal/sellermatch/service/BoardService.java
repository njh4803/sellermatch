package kr.co.wesellglobal.sellermatch.service;

import java.util.List;

import kr.co.wesellglobal.sellermatch.model.BoardDto;
import kr.co.wesellglobal.sellermatch.model.ProjectDto;

public interface BoardService {
	
	public List<BoardDto> getBoardList(BoardDto input) throws Exception;
	
	public List<BoardDto> getBoardListNoticeTop(BoardDto input) throws Exception;
	
	public void addBoard(BoardDto input) throws Exception;
	
	public BoardDto getBoard(BoardDto input) throws Exception;
	
	public void editBoard(BoardDto input) throws Exception;
	
	public void deleteBoard(BoardDto input) throws Exception;
	
	public int getBoardCount(BoardDto input) throws Exception;
	
}
