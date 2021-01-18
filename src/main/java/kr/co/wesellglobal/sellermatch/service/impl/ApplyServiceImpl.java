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
		// TODO Auto-generated method stub
		
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
		// TODO Auto-generated method stub
		
	}

}
