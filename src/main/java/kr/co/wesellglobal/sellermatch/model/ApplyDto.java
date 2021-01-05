package kr.co.wesellglobal.sellermatch.model;

import lombok.Data;

//산업리스트 
@Data
public class ApplyDto {

    // 자동번호 
    private int applyIdx;

    // 지원고유번호 
    private String applyId;

    // 프로젝트고유번호 
    private String applyProjId;

    // 회원고유번호 
    private String applyMemId;

    // 등록일시 
    private String applyRegDate;

    // 프로필고유번호 공급자냐 셀러냐 로그인에 따라 변동: Seller_id or Pp_id
    private String applyProfile;
	
}
