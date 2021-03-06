package kr.co.wesellglobal.sellermatch.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.wesellglobal.sellermatch.model.ApplyDto;
import kr.co.wesellglobal.sellermatch.model.NewsLetterDto;
import kr.co.wesellglobal.sellermatch.model.ProfileDto;
import kr.co.wesellglobal.sellermatch.service.NewsLetterService;
import lombok.extern.slf4j.Slf4j;


@Slf4j
@Service
public class NewsLetterServiceImpl implements NewsLetterService{
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public void addNewsLetter(NewsLetterDto input) throws Exception {
		int result = 0;

		try {
			result = sqlSession.insert("newsLetterMapper.insertItem", input);
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
	public List<NewsLetterDto> getNewsLetterList(NewsLetterDto input) throws Exception {
		List<NewsLetterDto> result = null;
		
		try {
			result = sqlSession.selectList("newsLetterMapper.selectList", input);
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
