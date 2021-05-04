package kr.co.wesellglobal.sellermatch.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.wesellglobal.sellermatch.model.ApplyDto;
import kr.co.wesellglobal.sellermatch.model.IndusDto;
import kr.co.wesellglobal.sellermatch.service.ApplyService;
import kr.co.wesellglobal.sellermatch.service.IndusService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class ApplyServiceImpl implements ApplyService{
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<ApplyDto> getApplyList(ApplyDto input) throws Exception {
		List<ApplyDto> result = null;
		
		try {
			result = sqlSession.selectList("ApplyMapper.selectList", input);
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
	public void addApply(ApplyDto input) throws Exception {
		int result = 0;

		try {
			result = sqlSession.insert("ApplyMapper.insertItem", input);
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
	public ApplyDto getApply(ApplyDto input) throws Exception {
		ApplyDto result = null;

		try {
			result = sqlSession.selectOne("ApplyMapper.selectItem", input);
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
	public void editApply(ApplyDto input) throws Exception {
		int result = 0;
		
		try {
			result = sqlSession.update("ApplyMapper.updateItem", input);
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
	public int reduplicationCheck(ApplyDto input) throws Exception {
		int result = 0;

		try {
			result = sqlSession.selectOne("ApplyMapper.reduplicationCheck", input);
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("중복검사에 실패했습니다.");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("중복검사에 실패했습니다.");
		}
		return result;
	}

	@Override
	public void updateApply(ApplyDto input) throws Exception {
		int result = 0;
		
		try {
			result = sqlSession.update("ApplyMapper.updateApply", input);
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
	public void updateRecommand(ApplyDto input) throws Exception {
		int result = 0;
		
		try {
			result = sqlSession.update("ApplyMapper.updateRecommand", input);
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
	public ApplyDto getAcceptedProjectOwner(ApplyDto input) throws Exception {
		ApplyDto result = null;

		try {
			result = sqlSession.selectOne("ApplyMapper.selectAcceptedProjectOwner", input);
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
	public ApplyDto getAcceptedRecommandOwner(ApplyDto input) throws Exception {
		ApplyDto result = null;

		try {
			result = sqlSession.selectOne("ApplyMapper.getAcceptedRecommandOwner", input);
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
	
}
