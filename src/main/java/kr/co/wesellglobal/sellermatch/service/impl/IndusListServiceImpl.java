package kr.co.wesellglobal.sellermatch.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.wesellglobal.sellermatch.model.IndusList;
import kr.co.wesellglobal.sellermatch.service.IndusListService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class IndusListServiceImpl implements IndusListService{
	
	@Autowired
	SqlSession sqlSession;


	@Override
	public List<IndusList> getIndusList(IndusList input) throws Exception {
		List<IndusList> result = null;
		
		try {
			result = sqlSession.selectList("IndusListMapper.selectList", input);
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
	public void addIndus(IndusList input) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public IndusList getIndus(IndusList input) throws Exception {
		IndusList result = null;

		try {
			result = sqlSession.selectOne("IndusListMapper.selectItem", input);
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
	public void editIndus(IndusList input) throws Exception {
		// TODO Auto-generated method stub
		
	}

}
