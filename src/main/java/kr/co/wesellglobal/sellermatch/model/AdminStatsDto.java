package kr.co.wesellglobal.sellermatch.model;

import lombok.Data;

//관리자 통계데이터 관련
@Data
public class AdminStatsDto {
	
	private String statsDate;
	private String statsRegDate;
	private String statsEditDate;
	
	private int statsMemRegCnt;			//회원가입자수(일)
	private int statsMemAccumCnt;		//누적회원가입자수
	private int statsMemSelCnt;			//회원가입자수-판매자(일)
	private int statsMemSelAccumCnt;	//누적회원가입자수-판매자
	private int statsMemProCnt;			//회원가입자수-공급자(일)
	private int statsMemProAccumCnt;	//누적회원가입자수-공급자
	
	private int statsApplyAplyCnt;				//지원수(일)
	private int statsApplyAplyAccumCnt;			//누적지원수
	private int statsApplyAplyAcceptCnt;		//지원승인수(일)
	private int statsApplyAplyAcceptAccumCnt;	//누적지원승인수
	private int statsApplyAplyRejectCnt;		//지원거절수(일)
	private int statsApplyAplyRejectAccumCnt;	//누적지원거절수
	
	private int statsApplyRecomCnt;				//제안수(일)
	private int statsApplyRecomAccumCnt;		//누적제안수
	private int statsApplyRecomAcceptCnt;		//제안승인수(일)
	private int statsApplyRecomAcceptAccumCnt;	//누적제안승인수
	private int statsApplyRecomRejectCnt;		//제안거절수(일)
	private int statsApplyRecomRejectAccumCnt;	//누적제안거절수
	
	private int statsProjRegCnt;				//매칭수(일)
	private int statsProjRegAccumCnt;			//누적매칭수
	private int statsProjRegSelCnt;				//매칭수-판매자(일)
	private int statsProjRegSelAccumCnt;		//누적매칭수-판매자
	private int statsProjRegProCnt;				//매칭수-공급자(일)
	private int statsProjRegProAccumCnt;		//누적매칭수-공급자
	
}
