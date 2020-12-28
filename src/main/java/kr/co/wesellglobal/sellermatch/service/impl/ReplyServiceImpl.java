package kr.co.wesellglobal.sellermatch.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.wesellglobal.sellermatch.model.BoardDto;
import kr.co.wesellglobal.sellermatch.model.ProjectDto;
import kr.co.wesellglobal.sellermatch.model.ReplyDto;
import kr.co.wesellglobal.sellermatch.service.BoardService;
import kr.co.wesellglobal.sellermatch.service.ReplyService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class ReplyServiceImpl implements ReplyService{
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<ReplyDto> getReplyList(ReplyDto input) throws Exception {
		List<ReplyDto> result = null;
		
		try {
			result = sqlSession.selectList("ReplyMapper.selectList", input);
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
	public void addReply(ReplyDto input) throws Exception {
		int result = 0;

		try {
			result = sqlSession.insert("ReplyMapper.insertItem", input);
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
	public int getReplyCount(ReplyDto input) throws Exception {
		int result = 0;
		
		try {
			result = sqlSession.selectOne("ReplyMapper.selectCountAll", input);
		}catch(Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		return result;
	}


}
