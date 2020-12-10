package kr.co.wesellglobal.sellermatch.service.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.wesellglobal.sellermatch.model.Users;
import kr.co.wesellglobal.sellermatch.service.TestService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class TestServiceImpl implements TestService{
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public Users getUsers(Users input) throws Exception {
		Users result = null;
		
		try {
			result = sqlSession.selectOne("TestMapper.selectItem", input);
			
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
