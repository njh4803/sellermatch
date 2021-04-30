package kr.co.wesellglobal.sellermatch.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.wesellglobal.sellermatch.model.ProjectDto;
import kr.co.wesellglobal.sellermatch.service.ProjectService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class projectServiceImpl implements ProjectService{
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<ProjectDto> getProjectList(ProjectDto input) throws Exception {
		List<ProjectDto> result = null;
		
		try {
			result = sqlSession.selectList("ProjectMapper.selectList", input);
			if(result == null) {
				throw new NullPointerException("result=0");
			}
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("조회된 데이터가 없습니다.");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		
		return result;
	}

	@Override
	public void addProject(ProjectDto input) throws Exception {
		int result = 0;

		try {
			result = sqlSession.insert("ProjectMapper.insertItem", input);
			if (result == 0) {
				throw new NullPointerException("result=0");
			}
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("저장된 데이터가 없습니다.");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 저장에 실패했습니다.");
		}
		
	}

	@Override
	public ProjectDto getProject(ProjectDto input) throws Exception {
		ProjectDto result = null;

		try {
			result = sqlSession.selectOne("ProjectMapper.selectItem", input);
			if (result == null) {
				throw new NullPointerException("result=null");
			}
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("조회된 데이터가 없습니다.");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		return result;
	}

	@Override
	public void editProject(ProjectDto input) throws Exception {
		int result = 0;
		
		try {
			result = sqlSession.update("ProjectMapper.updateItem", input);
			if (result == 0) {
				throw new NullPointerException("result=0");
			}
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("수정된 데이터가 없습니다.");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 수정에 실패했습니다.");
		}
		
	}

	@Override
	public int getProjectCount(ProjectDto input) throws Exception {
		int result = 0;
		
		try {
			result = sqlSession.selectOne("ProjectMapper.selectCountAll", input);
		}catch(Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		return result;
	}

	@Override
	public void deleteProject(ProjectDto input) throws Exception {
		int result = 0;

		try {
			result = sqlSession.delete("AdminProjectMapper.updateItem", input);
			if (result == 0) {
				throw new NullPointerException("result=0");
			}
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("수정된 데이터가 없습니다.");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 수정에 실패했습니다.");
		}
	}
	
	@Override
	public void peojectEnd(ProjectDto input) throws Exception {
		int result= 0;
		try {
			result = sqlSession.insert("ProjectMapper.peojectEnd", input);
			if (result == 0) {
				throw new NullPointerException("result=0");
			}
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("저장된 데이터가 없습니다.");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 저장에 실패했습니다.");
		}
	}
	
	@Override
	public int peojectEndDupCheck(ProjectDto input) throws Exception {
		int result= 0;
		
		try {
			result = sqlSession.selectOne("ProjectMapper.peojectEndDupCheck", input);
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("중복검사에 실패했습니다.");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("중복검사에 실패했습니다.");
		}
		
		return result;
	}

}
