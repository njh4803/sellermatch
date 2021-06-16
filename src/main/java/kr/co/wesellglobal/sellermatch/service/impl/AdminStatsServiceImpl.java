package kr.co.wesellglobal.sellermatch.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.wesellglobal.sellermatch.model.AdminStatsDto;
import kr.co.wesellglobal.sellermatch.service.AdminStatsService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class AdminStatsServiceImpl implements AdminStatsService{
	
	@Autowired
	SqlSession sqlSession;


	@Override
	public List<AdminStatsDto> getAdminStatsList() throws Exception {
		List<AdminStatsDto> result = null;
		
		try {
			result = sqlSession.selectList("AdminStatsMapper.selectList");
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
