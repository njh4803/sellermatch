package kr.co.wesellglobal.sellermatch.service.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.wesellglobal.sellermatch.model.MemList;
import kr.co.wesellglobal.sellermatch.service.MemListService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class MemListServiceImpl implements MemListService{
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public MemList getMember(MemList input) throws Exception {
		MemList result = null;
		return result;
	}


}
