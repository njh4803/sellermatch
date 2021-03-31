package kr.co.wesellglobal.sellermatch.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.wesellglobal.sellermatch.model.myPageDto;
import kr.co.wesellglobal.sellermatch.service.myPageService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class myPageServiceImpl implements myPageService {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<myPageDto> getMyProjectList(myPageDto input) throws Exception {
		List<myPageDto> result = null;
		
		try {
			result = sqlSession.selectList("myPageMapper.selectList", input);
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
	public List<myPageDto> selectpRegistedProjectList(myPageDto input) throws Exception {
		List<myPageDto> result = null;
		
		try {
			result = sqlSession.selectList("myPageMapper.selectpRegistedProjectList", input);
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
	public myPageDto selectpMyProjectCount(myPageDto input) throws Exception {
		myPageDto result = null;
		
		try {
			result = sqlSession.selectOne("myPageMapper.selectpMyProjectCount", input);
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

}
