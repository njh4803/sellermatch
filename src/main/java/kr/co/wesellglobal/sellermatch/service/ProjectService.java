package kr.co.wesellglobal.sellermatch.service;

import java.util.List;

import kr.co.wesellglobal.sellermatch.model.ProjectDto;

public interface ProjectService {
	
	public List<ProjectDto> getProjectList(ProjectDto input) throws Exception;
	
	public void addProject(ProjectDto input) throws Exception;
	
	public ProjectDto getProject(ProjectDto input) throws Exception;
	
	public void editProject(ProjectDto input) throws Exception;
	
}
