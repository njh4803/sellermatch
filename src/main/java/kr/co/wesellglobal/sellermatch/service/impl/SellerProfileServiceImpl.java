package kr.co.wesellglobal.sellermatch.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.wesellglobal.sellermatch.model.ProjectDto;
import kr.co.wesellglobal.sellermatch.model.SellerProfileDto;
import kr.co.wesellglobal.sellermatch.service.ProjectService;
import kr.co.wesellglobal.sellermatch.service.SellerProfileService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class SellerProfileServiceImpl implements SellerProfileService{
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<SellerProfileDto> getSellerProfileList(SellerProfileDto input) throws Exception {
		List<SellerProfileDto> result = null;
		
		try {
			result = sqlSession.selectList("SellerProfileMapper.selectList", input);
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
	public void addSellerProfile(SellerProfileDto input) throws Exception {
		int result = 0;

		try {
			result = sqlSession.insert("SellerProfileMapper.insertItem", input);
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
	public SellerProfileDto getSellerProfile(SellerProfileDto input) throws Exception {
		SellerProfileDto result = null;

		try {
			result = sqlSession.selectOne("SellerProfileMapper.selectItem", input);
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
	public void editSellerProfile(SellerProfileDto input) throws Exception {
		int result = 0;
		
		try {
			result = sqlSession.update("SellerProfileMapper.updateItem", input);
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

}
