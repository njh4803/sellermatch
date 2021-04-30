package kr.co.wesellglobal.sellermatch.service;

import java.sql.Date;
import java.util.List;

import kr.co.wesellglobal.sellermatch.model.MemberDto;
import kr.co.wesellglobal.sellermatch.model.myPageDto;

public interface MemberService {
	
	public List<MemberDto> getMemberList(MemberDto input) throws Exception;
	
	public void addMember(MemberDto input) throws Exception;
	
	public MemberDto getMember(MemberDto input) throws Exception;
	
	public void editMember(MemberDto input) throws Exception;
	
	public void idCheck(MemberDto input) throws Exception;
	
	public MemberDto loginSNS(MemberDto input) throws Exception;
	
	public MemberDto login(MemberDto input) throws Exception;
	
	public int getMemberCount(MemberDto input) throws Exception;
	
	public List<String> idFindService(MemberDto input) throws Exception;
	
	public void pwChangeService(MemberDto input) throws Exception;
	
    // 자동로그인 체크한 경우에 사용자 테이블에 세션과 유효시간을 저장하기 위한 메서드
    public void keepLogin(MemberDto input) throws Exception;
     
    // 이전에 로그인한 적이 있는지, 즉 유효시간이 넘지 않은 세션을 가지고 있는지 체크한다.
    public MemberDto checkUserWithSessionKey(MemberDto input) throws Exception;
    
    // 닉네임 중복검사
	public void nickCheck(MemberDto input) throws Exception;
	//회원탈퇴 인증코드저장,발송
	public void withDrawAuthCodeUpdate(MemberDto input) throws Exception;
	
	public int authConfirm(MemberDto input) throws Exception;
	
	public int withdraw(MemberDto input) throws Exception;
}
