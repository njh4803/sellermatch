package kr.co.wesellglobal.sellermatch.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.wesellglobal.sellermatch.model.ApplyDto;
import kr.co.wesellglobal.sellermatch.model.HashTagListDto;
import kr.co.wesellglobal.sellermatch.service.HashTagListService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class HashTagListServiceImpl implements HashTagListService{
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<HashTagListDto> getHashTagList(HashTagListDto input) throws Exception {
		List<HashTagListDto> result = null;
		
		try {
			result = sqlSession.selectList("HashTagListMapper.selectList", input);
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
	public int addHashTagList(HashTagListDto input) throws Exception {
		int result = 0;

		try {
			result = sqlSession.insert("HashTagListMapper.insertItem", input);
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
		return result;
	}

	@Override
	public HashTagListDto getHashTag(HashTagListDto input) throws Exception {
		HashTagListDto result = null;

		try {
			result = sqlSession.selectOne("HashTagListMapper.selectItem", input);
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
	public void editHashTagList(HashTagListDto input) throws Exception {
		int result = 0;
		
		try {
			result = sqlSession.update("HashTagListMapper.updateItem", input);
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
	public int reduplicationCheck(HashTagListDto input) throws Exception {
		int result = 0;

		try {
			result = sqlSession.selectOne("HashTagListMapper.reduplicationCheck", input);
		} catch (NullPointerException e) {
			return result;
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("중복검사에 실패했습니다.");
		}
		return result;
	}

	@Override
	public int getSeq() throws Exception {
		int result = 0;
		
		try {
			result = sqlSession.selectOne("HashTagListMapper.selectSeq");
			if (result == 0) {
				throw new NullPointerException("result=0");
			}
		} catch (NullPointerException e) {
			return result;
		} catch(Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		return result;
	}

}
