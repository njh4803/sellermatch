package kr.co.wesellglobal.sellermatch.service;

import java.util.List;

import kr.co.wesellglobal.sellermatch.model.ProjectDto;
import kr.co.wesellglobal.sellermatch.model.myPageDto;

public interface ProjectService {
	
	public List<ProjectDto> getProjectList(ProjectDto input) throws Exception;
	
	public void addProject(ProjectDto input) throws Exception;
	
	public ProjectDto getProject(ProjectDto input) throws Exception;
	
	public void editProject(ProjectDto input) throws Exception;
	
	public int getProjectCount(ProjectDto input) throws Exception;

	public void deleteProject(ProjectDto input) throws Exception;
	
	public void peojectEnd(ProjectDto input) throws Exception;
	
	public int peojectEndDupCheck(ProjectDto input) throws Exception;
	
	public String getProjMemId(int projIdx) throws Exception;
	
}
