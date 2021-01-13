package kr.co.wesellglobal.sellermatch.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.wesellglobal.sellermatch.model.ProfileDto;
import kr.co.wesellglobal.sellermatch.service.ProfileService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class ProfileServiceImpl implements ProfileService{
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<ProfileDto> getProfileList(ProfileDto input) throws Exception {
		List<ProfileDto> result = null;
		
		try {
			result = sqlSession.selectList("ProfileMapper.selectList", input);
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
	public void addProfile(ProfileDto input) throws Exception {
		int result = 0;

		try {
			result = sqlSession.insert("ProfileMapper.insertItem", input);
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
	public ProfileDto getProfile(ProfileDto input) throws Exception {
		ProfileDto result = null;

		try {
			result = sqlSession.selectOne("ProfileMapper.selectItem", input);
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
	public void editProfile(ProfileDto input) throws Exception {
		int result = 0;
		
		try {
			result = sqlSession.update("ProfileMapper.updateItem", input);
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
