package kr.co.wesellglobal.sellermatch.service;


import kr.co.wesellglobal.sellermatch.model.FileDto;

public interface FileService {

	public void addFile(FileDto input) throws Exception;
	
	public void editFile(FileDto input) throws Exception;

	public FileDto getExist(FileDto input) throws Exception;;
}
