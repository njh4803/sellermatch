package kr.co.wesellglobal.sellermatch.service;

import java.util.List;

import kr.co.wesellglobal.sellermatch.model.BoardDto;

public interface BoardService {
	
	public List<BoardDto> getBoardList(BoardDto input) throws Exception;
	
	public void addBoard(BoardDto input) throws Exception;
	
	public BoardDto getBoard(BoardDto input) throws Exception;
	
	public void editBoard(BoardDto input) throws Exception;
	
}
