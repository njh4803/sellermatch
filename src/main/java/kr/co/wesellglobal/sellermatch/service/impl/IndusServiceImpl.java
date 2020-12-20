package kr.co.wesellglobal.sellermatch.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.wesellglobal.sellermatch.model.IndusDto;
import kr.co.wesellglobal.sellermatch.service.IndusService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class IndusServiceImpl implements IndusService{
	
	@Autowired
	SqlSession sqlSession;


	@Override
	public List<IndusDto> getIndusList(IndusDto input) throws Exception {
		List<IndusDto> result = null;
		
		try {
			result = sqlSession.selectList("IndusMapper.selectList", input);
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
	public void addIndus(IndusDto input) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public IndusDto getIndus(IndusDto input) throws Exception {
		IndusDto result = null;

		try {
			result = sqlSession.selectOne("IndusMapper.selectItem", input);
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
	public void editIndus(IndusDto input) throws Exception {
		// TODO Auto-generated method stub
		
	}

}
