package kr.co.wesellglobal.sellermatch.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.wesellglobal.sellermatch.model.MemberDto;
import kr.co.wesellglobal.sellermatch.model.myPageDto;
import kr.co.wesellglobal.sellermatch.service.MemberService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<MemberDto> getMemberList(MemberDto input) throws Exception {
		List<MemberDto> result = null;
		
		try {
			result = sqlSession.selectList("MemberMapper.selectList", input);
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
	public void idCheck(MemberDto input) throws Exception {
		int result = 0;

		try {
			result = sqlSession.selectOne("MemberMapper.idCheck", input);
			if (result > 0) {
				throw new NullPointerException("result=" + result);
			}
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("이미 사용중인 아이디 입니다.");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("아이디 중복검사에 실패했습니다.");
		}
	}

	@Override
	public void addMember(MemberDto input) throws Exception {
		int result = 0;

		try {
			result = sqlSession.insert("MemberMapper.insertItem", input);
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
	public MemberDto getMember(MemberDto input) throws Exception {
		MemberDto result = null;

		try {
			result = sqlSession.selectOne("MemberMapper.selectItem", input);
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
	public void editMember(MemberDto input) throws Exception {
		int result = 0;
		
		try {
			result = sqlSession.update("MemberMapper.updateItem", input);
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
	public MemberDto login(MemberDto input) throws Exception {
		MemberDto result = null;

		try {
			result = sqlSession.selectOne("MemberMapper.login", input);

			if (result == null) {
				throw new NullPointerException("result=null");
			}

			// 로그인 시간을 갱신
			sqlSession.update("MemberMapper.updateLoginDate", result);
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("아이디나 비밀번호가 잘못되었습니다.");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}

		return result;
		
	}

	@Override
	public int getMemberCount(MemberDto input) throws Exception {
		int result = 0;
		
		try {
			result = sqlSession.selectOne("MemberMapper.selectCountAll", input);
		}catch(Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		return result;
	}

	@Override
	public String idFindService(MemberDto input) throws Exception {
		String result = null;
		
		try {
			result = sqlSession.selectOne("MemberMapper.findId", input);
			if (result == null) {
				throw new NullPointerException("result=null");
			}
		}catch(Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("입력하신 연락처로 등록된 아이디가 없습니다.");
		}
		return result;
	}

	@Override
	public void pwChangeService(MemberDto input) throws Exception {
		int result = 0;
		
		try {
			// 존재하는 아이디(이메일)인지 체크
			result = sqlSession.selectOne("MemberMapper.idCheck", input);
			if (result == 0) {
				throw new NullPointerException("result=0");
			}
			sqlSession.update("MemberMapper.changePw", input);
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("등록된 이메일이 아닙니다.");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 수정에 실패했습니다.");
		}
	}

	@Override
	public void keepLogin(MemberDto input) throws Exception {
		int result = 0;
		
		try {
			result = sqlSession.update("MemberMapper.keepLogin", input);
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
	public MemberDto checkUserWithSessionKey(MemberDto input) throws Exception {
		MemberDto result = null;

		try {
			result = sqlSession.selectOne("MemberMapper.checkUserWithSessionKey", input);
			
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		return result;
	}

	@Override
	public MemberDto loginSNS(MemberDto input) throws Exception {
		MemberDto result = null;
		
		result = sqlSession.selectOne("MemberMapper.loginSNS", input);

		if (result != null) {
			// 로그인 시간을 갱신
			sqlSession.update("MemberMapper.updateLoginDate", result);
		}
		return result;
	}

	@Override
	public void nickCheck(MemberDto input) throws Exception {
		int result = 0;

		try {
			result = sqlSession.selectOne("MemberMapper.nickCheck", input);
			if (result > 0) {
				throw new NullPointerException("result=" + result);
			}
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("이미 사용중인 닉네임 입니다.");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("닉네임 중복검사에 실패했습니다.");
		}
	}
	
	@Override
	public void withDrawAuthCodeUpdate(MemberDto input) throws Exception {
		int result = 0;
		
		try {
			// 존재하는 아이디(이메일)인지 체크
			result = sqlSession.selectOne("MemberMapper.idCheck", input);
			if (result == 0) {
				throw new NullPointerException("result=0");
			}
			sqlSession.update("myPageMapper.withDrawAuthCodeUpdate", input);
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("등록된 이메일이 아닙니다.");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 수정에 실패했습니다.");
		}
	}

}
