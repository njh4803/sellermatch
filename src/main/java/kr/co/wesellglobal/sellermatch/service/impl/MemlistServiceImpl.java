package kr.co.wesellglobal.sellermatch.service.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.wesellglobal.sellermatch.model.Memlist;
import kr.co.wesellglobal.sellermatch.service.MemlistService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class MemlistServiceImpl implements MemlistService{
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public Memlist getMember(Memlist input) throws Exception {
		Memlist result = null;
		return result;
	}


}
