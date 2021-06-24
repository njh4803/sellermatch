<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ include file="inc/header.jsp"%>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/join.css">

<div class="partner_bnr">
	<div class="partner_wrap">
		<div class="partner_wrap2">
			<h2>공급자 또는 판매자 중 하나를 선택하세요</h2>
			<h3>아래 간단한 내용만 입력하면, 회원가입이 완료됩니다!</h3>
		</div>
		<div id="findCheckBox">
			<div class="partner_wrap addbox2"></div>
			<div class="joinForm">
				<div class="resultBox">
					<div class="resultText" id="resultText1">판매자가입을 선택하셨습니다. 다양한
						고마진 공급자를 찾아 수익을 향상시키세요!<br> 회원유형은 마이페이지에서 추후에 전환 가능합니다.</div>
					<div class="resultText" id="resultText2" style="display: none;">공급자가입을
						선택하셨습니다. 검증된 고매출 판매자를 찾아 거래해보세요!<br>  회원유형은 마이페이지에서 추후에 전환 가능합니다.</div>
				</div>
				<form action="${pageContext.request.contextPath}/member/join" id="join_form" name="join_form" method="post" enctype="multipart/form-data">
					<!-- <input type="hidden" id="memSort" name="memSort" value="{{memSort}}"> <input type="hidden" name="memRname" id="memRname" value="0" readonly="readonly"> -->
<c:if test="${result.googleId != null}">
					<input type="hidden" name="googleId" value="${result.googleId}">
</c:if>					
<c:if test="${result.naverId != null}">
					<input type="hidden" name="naverId" value="${result.naverId}">
</c:if>
<c:if test="${result.kakaoId != null}">					
					<input type="hidden" name="kakkaoId" value="${result.kakaoId}">
</c:if>
					<div class="form-group row userrow">
						<label class="col-sm-2 colForm-label">회원유형 <span class="identify">*</span></label>
						<div class="col-sm-9">
							<input type="checkbox" class= "memSortCheckBox" id="memSort1" value="2" name="memSort" onclick='checkOnlyOne(this)'/><span class="radio-sort"> 판매자로 가입</span>
							<input type="checkbox" class= "memSortCheckBox" id="memSort2" value="1" name="memSort" onclick='checkOnlyOne(this)' style="margin-left:30px;"/><span class="radio-sort"> 공급자로 가입</span>
						</div>
					</div>
					<div class="form-group row">
						<label for="memberId" class="col-sm-2 colForm-label">아이디 <span class="identify">*</span></label>
						<div class="col-sm-9">
							<div class="form-group">
								<c:if test="${result.memId == null}">
									<input id="memberId" type="text" name="memberId" class="form-control" placeholder="이메일 입력">
									<input id="Mem_sns_ch" type="hidden" name="memSnsCh" class="form-control" placeholder="SNS채널" value="01">
								</c:if>
								<c:if test="${result.memId != null}">
									<input id="memberId" type="text" name="memberId" class="form-control" placeholder="이메일 입력" value="${result.memId}" readonly>
									<input id="Mem_sns_ch" type="hidden" name="memSnsCh" class="form-control" placeholder="SNS채널" value="${result.memSnsCh}">
								</c:if>
							</div>
						</div>
					</div>
					<c:if test="${result.memId == null}">
					<div class="form-group row">
						<label class="col-sm-2 colForm-label">비밀번호 <span class="identify">*</span></label>
						<div class="col-sm-9">
							<input type="password" id="memPw2" name="memPw2" class="form-control" placeholder="비밀번호를 입력해주세요. (6자 이상)">
						</div>
					</div>
					<div class="form-group row">
						<label for="memPw_confirm" class="col-sm-2 colForm-label">비밀번호 확인 <span class="identify">*</span>	</label>
						<div class="col-sm-9">
							<input type="password" name="memPw_confirm" class="form-control" id="memPw_confirm" placeholder="비밀번호를 한번 더 입력해주세요." />
						</div>
					</div>
					</c:if>
					<div class="form-group row">
						<label class="col-sm-2 colForm-label">닉네임 <span class="identify">*</span></label>
						<div class="col-sm-9">
							<input type="text" class="form-control" name="memNick" id="memNick" placeholder="별명을 입력하세요. (회사명 등 정보성 닉네임은 사용 불가)">
						</div>
					</div>
					<div class="form-group row">
						<label for="memTel" class="col-sm-2 colForm-label">연락처 <span class="identify">*</span>
						</label>
						<div class="col-sm-9">
							<input type="text" name="memTel" class="form-control" id="memTel" placeholder="`-` 없이 숫자만 입력(연락처는 아이디를 찾을 때 이용됩니다.)" />
						</div>
					</div>
					<div class="Agreement-container">
						<div class="Agreement">
							<input type="checkbox" class="agree-all" id="checkAll"><label for="checkAll"><span class="r-span">전체 약관동의</span></label>
						</div>
						<div class="Agreement-box clearfix">
							<div class="Agreement" style="float: left;">
								<input type="checkbox" id="chk1" class="agree-chk chk" name="tosConsent" value="Y">
								<label for="chk1"><span class="r-span">(필수) 이용약관동의</span></label>
							</div>
							<!-- 						<div id="termsOfService" href="javascipt:void(0);" style="float: right;">
							내용보기 V
						</div> -->
							<textarea
								style="width: 100%; height: 100px; padding: 15px; resize: none;">
제1조 (목적)&nbsp;
본 약관은 위셀글로벌 주식회사(이하 &quot;회사&quot;라 합니다)가 이용자에게 제공하는 &lsquo;셀러매치&rsquo; 서비스의 이용과 관련하여 회사와 이용자 간의 권리, 의무, 책임사항 및 기타 필요한 사항을 규정함을 목적으로 합니다.&nbsp;

제2조 (정의)&nbsp;
본 약관에서 사용하는 용어의 정의는 다음과 같습니다.
1. &ldquo;셀러매치 서비스&rdquo; 또는 &quot;서비스&quot;는 함은 회사가 셀러매치 웹사이트(sellermatch.co.kr) 기타 플랫폼(이하 &ldquo;플랫폼&rdquo;이라 합니다)을 통하여 회원에게 제공하는 일체의 서비스를 의미합니다.
2. &ldquo;이용자&rdquo;는 플랫폼에 접속하여 회사가 제공하는 서비스를 이용하는 회원 및 비회원을 의미합니다.
3. &quot;회원&quot;은 본 약관에 동의하고 플랫폼 상의 회원가입 절차를 완료한 자를 의미합니다.
4. &ldquo;비회원&rdquo;은 회원으로 가입하지 않고 서비스를 이용하는 이용자를 의미합니다.
5. &ldquo;계정(ID)&quot;이라 함은 회원의 식별과 서비스 이용을 위하여 회원이 선정하고 회사가 부여하는 문자, 숫자 또는 특수 문자의 조합을 의미합니다.
6. &quot;비밀번호&quot;라 함은 회원이 부여 받은 계정(ID)과 일치되는 회원임을 확인하고 회원의 정보 및 권익보호를 위해 회원 자신이 선정하여 비밀로 관리하는 문자, 숫자 또는 특수 문자의 조합을 의미합니다.
7. &quot;계정정보&quot;라 함은 회원의 계정(ID), 비밀번호, 성명 등 회원이 회사에 제공한 일반정보 및 서비스 이용정보 등 생성 정보를 통칭합니다.

제3조 (약관의 명시와 개정 등)
① 회사는 이 약관의 내용을 이용자가 알 수 있도록 플랫폼 상에 게시하거나 연결화면을 제공하는 방법으로 이용자에게 공지합니다.
② 회사는 「약관의 규제에 관한 법률」 등 관련 법령에 위배하지 않는 범위에서 본 약관을 개정할 수 있습니다.
③ 회사는 약관을 개정할 경우에는 적용일자 및 개정내용, 개정 사유 등을 명시하여 그 적용일자로부터 최소한 7일 이전(이용자에게 불리하거나 중대한 사항의 변경은 30일 이전)부터 그 적용일자 경과 후 상당한 기간이 경과할 때까지 초기화면 또는 초기화면과의 연결화면을 통해 공지합니다.
④ 회사는 약관을 개정할 경우에는 원칙적으로 개정약관 공지 후 개정약관의 적용에 대한 이용자의 동의 여부를 확인합니다. 다만 개정약관 공지 시 이용자가 동의 또는 거부의 의사표시를 하지 않으면 승낙한 것으로 간주하겠다는 내용도 함께 공지한 경우에는 이용자가 약관 시행일까지 거부의사를 표시하지 않는다면 개정약관에 동의한 것으로 간주할 수 있습니다.
⑤ 이용자는 개정약관의 적용에 동의하지 않는 경우 회원의 경우 회사와의 서비스 이용계약을 해지할 수 있으며, 이용자는 서비스 이용을 중단할 수 있습니다.
⑥ 회사는 서비스 제공 및 운영을 위해 별도의 운영정책을 마련하여 운영할 수 있으며, 이 경우 회사는 사전 공지 후 운영정책을 적용하며 본 약관에 동의한 이용자 모두에게 그 효력이 발생합니다. 회사는 이용자가 운영정책의 내용을 서비스 내에서 확인할 수 있도록 합니다.
⑦ 본 약관에서 규정되지 않은 사항이나 해석에 대해서는 별도의 운영정책, 관련법령 또는 상관례에 따릅니다. 또한 본 약관과 운영정책이 내용상 충돌할 경우 별도 규정된 운영정책의 내용이 효력상 우선합니다.

제4조 (회원가입)
① 회원이 되려고 하는 자는 약관의 내용에 대하여 동의를 하고, 플랫폼 상의 회원가입 페이지에서 제공하는 양식을 작성하여 회원가입 하는 방법으로 이용신청을 하여야 합니다.
② 회사는 회원이 되려고 하는 자에게 실명확인 및 본인인증, 기타 필요한 정보를 요구할 수 있으며, 그 절차와 방식은 관련 법령에 따릅니다.
③ 회원이 되려고 하는 자는 이용신청 시 제1항에서 요구하는 정보 항목에 대하여 진실한 정보를 기재하여야 합니다. 실명 또는 정보를 허위로 기재하거나 타인의 명의를 도용한 경우 이 약관에 의한 회원의 권리를 주장할 수 없고, 회사는 별도 조치없이 서비스 이용계약을 취소하거나 해지할 수 있습니다.
④ 회원가입은 회원의 약관에 대한 동의와 회원의 이용신청에 대한 회사의 승낙으로 성립합니다. 이 약관에 관한 동의는 이용신청 당시 회사 이용약관에 동의함을 선택하거나 기타 동의 버튼 또는 서명 등을 통해 이루어집니다.

제5조 (이용신청의 승낙과 제한)
① 회원이 되려는 자가 제4조에서 정하는 바에 따라 정당하게 이용신청을 한 경우에 회사는 상당한 이유가 없는 한 그 이용신청을 승낙합니다.
② 제1항에도 불구하고, 회사는 다음 각 호의 어느 하나에 해당하는 이용신청에 대해서는 승낙을 하지 않을 수 있습니다.
1. 제4조에 위반하여 이용신청을 하는 경우
2. 자신에게 책임 있는 사유로 이용이 제한되었던 기록이 있는 자가 이용신청을 하는 경우
3. 법령에서 금지하는 위법행위를 할 목적으로 이용신청을 하는 경우
4. 회사의 이익을 저해하려는 목적으로 이용신청을 하는 경우
5. 이전에 회원의 자격을 상실한 적이 있는 자로서 회사의 회원 재가입 승낙을 얻지 못한 경우
6. 그 밖에 1호 내지 5호에 준하는 사유로서 승낙이 부적절하다고 판단되는 경우
③ 회사는 다음 각 호의 어느 하나에 해당하는 경우에는 그 사유가 해소될 때까지 승낙을 유보할 수 있습니다.
1. 서비스 관련 제반 용량의 부족함 등 회사의 설비에 여유가 없는 경우
2. 기술상 장애 사유가 있는 경우
3. 그 밖에 위 각 호에 준하는 사유로 이용신청의 승낙이 곤란한 경우
④ 회원의 이용신청에 대하여 회사가 승낙한 경우, 회원이 본 약관 및 관련 법령을 위반하지 않은 이상 회원과 회사 간에 유효하게 서비스 이용계약이 체결된 것으로 봅니다.

제6조 (회원 계정(ID) 및 비밀번호)
① 회사는 회원에 대하여 서비스 이용에 필요한 계정(ID)을 부여합니다.
② 회사는 계정정보를 통하여 당해 회원의 서비스 이용가능 여부 등을 판단하는 등 제반 회원 관리업무를 수행할 권한이 있으며, 다음과 같은 이유로 회원의 아이디 및 비밀번호 변경을 요구하거나 변경할 수 있습니다.
1. 회원 아이디가 회원의 이메일, 전화번호 등으로 등록되어 사생활 침해가 우려되는 경우
2. 타인에게 혐오감을 주거나 미풍양속에 저해할 목적으로 신청한 경우
3. 보안 및 아이디 정책, 서비스의 원활한 제공 등의 목적으로 변경할 필요성이 있는 경우
4. 기타 회사가 필요하다고 인정되는 경우
③ 회원은 자신의 계정정보를 선량한 관리자로서의 주의의무를 다하여 관리하여야 합니다. 회원이 본인의 계정정보를 소홀히 관리하거나 제3자에게 이용을 승낙함으로써 발생하는 손해에 대하여는 회원에게 책임이 있으며, 회사에게 고의 또는 과실이 없는 한 회사는 관련 책임을 부담하지 않습니다.
④ 비밀번호의 관리책임은 회원에게 있으며, 회원은 원하는 경우 비밀번호를 언제든지 변경할 수 있습니다.
⑤ 회원은 정기적으로 비밀번호를 변경하여야 합니다.
⑥ 회원은 계정 정보가 도용되거나 제3자가 이를 사용하고 있음을 인지한 경우 이를 즉시 회사에 통지하고 회사의 안내에 따라야 합니다. 회원이 이를 인지하고서도 통지하지 않거나, 통지한 경우에도 회사의 안내에 따르지 않아 발생한 피해에 대해 회사는 고의 또는 과실이 없는 한 책임지지 않습니다.

제7조 (회원 정보의 제공 및 변경)
① 회원은 본 약관에 의하여 회사에 정보를 제공하여야 하는 경우에는 진실된 정보를 제공하여야 하며, 허위정보 제공으로 인해 발생한 불이익에 대해서는 보호받지 못합니다.
② 회원은 플랫픔을 통해 자신의 개인정보를 열람하고 수정할 수 있습니다. 다만, 서비스 관리를 위해 필요한 실명, 계정(ID) 등은 수정이 제한될 수 있습니다. 이러한 경우에는 새로운 계정(ID)으로 재가입해야 하며, 회원 탈퇴한 계정(ID)은 재가입이 제한됩니다.
③ 회원은 회사에 제공한 정보가 변경되었을 경우 지체 없이 온라인으로 수정을 하거나 스스로 수정이 불가능한 경우 회사에 대하여 그 변경사항을 알려야 합니다.
④ 회원이 회원정보의 변경사항을 제2항에 의하여 수정하지 아니하거나 제3항에 의하여 회사에 알리지 아니하여 발생한 불이익에 대하여 회사는 책임을 지지 아니하며, 수정하지 아니하여 발생하는 문제의 책임은 회원에게 있습니다.

제8조 (개인정보의 보호 및 관리)
① 회사는 관련 법령이 정하는 바에 따라 계정정보 등을 포함한 이용자의 개인정보를 보호하기 위해 노력합니다. 이용자의 개인정보의 보호 및 사용에 대해서는 관련 법령 및 회사가 별도로 고지하는 개인정보 처리방침이 적용됩니다.
② 회사는 이용자가 안전하게 서비스를 이용할 수 있도록 개인정보, 신용정보의 보호를 위해 보안시스템을 갖추어야 하며 개인정보처리방침을 공시하고 준수합니다. 회사는 관련 법령, 본 약관 및 개인정보처리방침에서 정한 경우를 제외하고는 이용자의 개인정보가 제3자에게 공개 또는 제공되지 않도록 합니다.
③ 회사는 이용자의 귀책사유로 인하여 노출된 계정정보를 포함한 타인의 모든 개인정보, 비밀정보에 대해서 일체의 책임을 지지 않습니다.
④ 회사는 서비스를 확장ᆞ추가하는 경우 이용자의 개인정보 및 데이터를 이전할 수 있고, 이전한 개인정보 및 데이터를 이용할 수 있습니다.

제9조 (회사의 의무)
① 회사는 관련 법령과 본 약관이 정하는 권리의 행사와 의무의 이행을 신의에 좇아 성실하게 하여야 합니다.
② 회사는 계속적이고 안정적인 서비스의 제공을 위하여 서비스 개선을 하던 중 설비에 장애가 생기거나 데이터 등이 멸실된 때에는 천재지변, 비상사태, 해결이 곤란한 기술적 결함 등 부득이한 사유가 없는 한 지체 없이 이를 수리 또는 복구하도록 최선의 노력을 다합니다. 다만 협력사의 설비에 장애가 생기거나 협력사의 고의 또는 과실로 인하여 데이터 등이 멸실된 때에는 회사에 고의 또는 중과실이 없는 한 회사는 면책됩니다.
③ 회사가 제공하는 서비스로 인하여 이용자에게 손해가 발생한 경우 그러한 손해가 회사의 고의나 과실에 기해 발생한 경우에 한하여 책임을 부담하며, 그 책임의 범위는 통상손해에 한합니다.
④ 회사는 이용자로부터 제기되는 의견이나 불만이 정당하다고 인정할 경우에는 신속히 처리하여야 합니다. 다만, 신속한 처리가 곤란한 경우에는 이용자에게 그 사유와 처리일정을 통보하여야 합니다.

제10조 (이용자의 의무)
① 이용자는 다음 행위(또는 이에 준하는 행위를 포함함)를 하여서는 안 됩니다.
1. 비정상적인 시스템 접근
● 악성코드, 바이러스 등의 프로그램을 고의 또는 과실로 설치, 유포하는 행위
● 회사가 제공하는 프로그램 또는 서비스의 일부를 수정, 무단복제 하거나 리버스엔지니어링, 디컴파일, 디스어셈블 및 기타 일체의 가공행위를 통하여 복제, 분해 또는 모방 기타 변형하는 행위
2. 비정상적인 서비스 이용
● 회사가 제공하는 서비스의 결과물을 불법적인 목적으로 사용하는 행위
● 회사의 동의 없이 영리, 영업, 광고, 정치활동 등을 목적으로 서비스를 사용하는 행위
● 실제 정보와 일치하지 않는 정보 또는 타인의 정보로 회원가입을 하는 행위
● 다수의 계정으로 활동을 하는 행위
● 계정 내 불리한 정보를 삭제하기 위해 의도적으로 계정을 탈퇴/재가입하는 행위
3. 허위 또는 과장된 정보 입력
● 허위 또는 과장된 정보를 입력하여 타인의 서비스 이용을 방해하거나 방해할 위험을 야기하는 행위
4. 공공질서 위반
● 성별, 정치, 종교, 장애, 연령, 사회적 신분, 인종, 지역, 직업 등을 차별하거나 이에 대한 편견을 조장하는 행위
● 회사, 다른 이용자 또는 제3자를 차별 또는 비방하거나 명예를 훼손하는 행위
● 회사, 다른 이용자 또는 제3자에 대하여 욕설, 폭언, 협박 등을 하는 행위
● 과도한 신체 노출이나 음란한 행위를 묘사하거나, 성매매 관련 정보를 공유하거나, 타인에게 성적 수치심 또는 불쾌감을 유발할 수 있는 내용을 게시하는 등 미풍양속에 반하는 정보를 플랫폼 상에 등록하는 행위
● 혐오스러운 사진 또는 내용을 게시하거나, 욕설, 비속어, 은어를 사용하는 등 사회 통념에 반하는 비정상적인 활동을 하는 행위
5. 타인의 권리 침해
●&nbsp;
회사, 다른 이용자 또는 제3자의 특허권, 상표권, 저작권 등 지식재산권을 침해하는 행위 또는 침해할 우려가 있는 행위
● 타인의 개인정보를 침해하는 행위
● 기타 웹 해킹 프로그램, 매크로 프로그램, 보이스 피싱을 위한 미러링 사이트 등 타인의 권리를 침해하거나 침해할 우려가 있는 모든 행위
6. 계정거래, 양도, 대리, 교환 등
● 계정을 타인에게 판매, 양도, 대여하거나, 타인에게 그 이용을 허락 또는 이를 시도하는 행위 및 이를 알선하는 행위
7. 명의 사칭, 도용 등
● 이용자가 다른 이용자, 제3자 또는 회사의 직원을 사칭하는 행위
8. 기타
● 회사가 게시한 정보를 무단으로 변경하는 행위
● 자기 또는 타인에게 재산상의 이익을 주거나 타인에게 손해를 가할 목적으로 허위의 정보를 유통시키는 행위
● 기타 관련 법령에서 금지하거나 선량한 풍속 기타 사회통념상 허용되지 아니하거나 원활한 서비스 제공에 악영향을 끼치는 일체의 행위
② 이용자는 본 약관의 규정, 이용안내 및 서비스와 관련하여 공지한 주의사항, 회사가 통지하는 사항 등을 확인하고 준수할 의무가 있습니다.

제11조 (이용자의 의무 위반에 대한 제재)
① 이용자가 제10조의 의무를 위반한 경우에 회사는 사안의 중요성과 회사, 다른 이용자 및 3자가 입은 손해에 따라 이용자에게 다음과 같은 제재를 할 수 있습니다.
1. 서면경고 회사는 제10조의 의무를 위반한 이용자에게 의무 위반의 내용, 위반 시기 등을 기재하여 서면으로 경고할 수 있습니다.
2. 이용의 제한 회사는 일정한 기간을 정하여 서비스 이용과 로그인 등을 제한 또는 중지할 수 있습니다. 이 경우 회사는 해당 이용자의 접속을 금지할 수 있으며, 이용자가 게시한 내용의 전부 또는 일부를 임의로 삭제할 수 있습니다.
3. 영구 정지 회사는 회원의 계정을 영구적으로 정지할 수 있으며, 비회원의 경우 서비스 이용을 영구적으로 제한, 중지할 수 있습니다. (회사는 제10조의 의무를 위반하여 제재 대상이 된 이용자들에게 이메일 등을 통하여 제재 내용을 고지합니다.)

제12조 (서비스의 변경 및 내용 수정)&nbsp;
회사는 운영상, 기술상의 필요에 따라 서비스 내용을 수정하거나 변경할 수 있으며, 이 경우 변경 사항을 플랫폼 상에 공지합니다. 이에 대하여 회사는 이용자 또는 제3자에 어떠한 책임도 부담하지 않습니다.&nbsp;

제13조 (서비스의 제공 및 중단 등)
① 회사는 필요한 경우 일부 서비스의 제공을 특정 시점부터 개시할 수 있습니다. 이러한 경우 회사는 사전 또는 사후에 이를 공지합니다. 회사는 필요한 경우 일부 서비스를 특정 회원에게만 제공할 수 있습니다. 회사는 서비스를 일정 범위로 분할하여 각 범위 별로 이용 가능 시간을 별도로 정할 수 있습니다. 이 경우 그 내용을 사전 또는 사후에 이를 사이트에 공시하거나 이용자에게 이를 통지합니다.
② 서비스는 연중무휴, 1일 24시간을 원칙으로 합니다.
③ 제2항에도 불구하고, 다음 각 호의 어느 하나에 해당하는 경우에는 일정한 시간 동안 서비스가 제공되지 아니할 수 있으며, 해당 시간 동안 회사는 서비스를 제공할 의무가 없습니다.
1. 컴퓨터 등 정보통신설비의 보수점검, 교체, 정기점검 또는 서비스의 수정을 위하여 필요한 경우
2. 해킹 등의 전자적 침해사고, 통신 사고, 이용자들의 비정상적인 서비스 이용행태, 예상할 수 없는 서비스의 불안정성에 대응하기 위하여 필요한 경우
3. 관련 법령에서 특정 시간 또는 방법으로 서비스 제공을 금지하는 경우
4. 천재지변, 국가비상사태, 정전, 서비스 설비의 장애 또는 서비스 이용의 폭주 등으로 정상적인 서비스 제공이 불가능할 경우
5. 분할, 합병, 영업양도, 영업의 폐지, 당해 서비스의 수익 악화 등 회사의 경영상 중대한 필요에 의한 경우
④ 회사는 제3항 각 호의 경우, 1주일 전에 그 사실을 이용자에게 개별 서비스 초기 화면이나 플랫폼 상에 사전 고지하며, 이 기간 동안 이용자가 고지 내용을 인지하지 못한데 대하여 회사는 책임을 부담하지 아니합니다. 사전에 통지할 수 없는 부득이한 사정(긴급한 시스템 점검ᆞ증설ᆞ교체, 시스템 관리자의 고의, 과실 없는 디스크 장애ᆞ시스템 다운, 제3자인 통신회사, 기간통신사업자 등의 사정으로 인한 서비스 제공의 불가 등 회사가 통제할 수 없는 사정)이 있는 경우에는 그 사정이 종료된 후에 즉시 사후에 통지를 할 수 있습니다.
⑤ 회사는 1년 이상 휴면 회원에 대해 안내 메일 또는 공지사항 발표 후 1주일 간의 통지기간을 거쳐 서비스 제공을 중지할 수 있습니다.
⑥ 본 조의 서비스 중지에 의하여 본 서비스에 보관되거나 전송된 정보 등이 보관되지 못하였거나 삭제, 미전송, 기타 통신 데이터의 손실이 발생할 수 있으므로 이용자는 중요한 정보 등을 별도로 보관하고 서비스 중지 기간 이후 해당 정보 등의 존재 여부를 스스로 확인하여야 합니다. 회사의 고의 또는 과실이 없는 한 회사는 이에 대하여 책임을 부담하지 않습니다.
⑦ 회사의 사정으로 서비스를 영구적으로 중단하여야 할 경우에는 제4항을 준용하되, 다만 이 경우에는 사전 고지 기간을 1개월로 합니다.

제14조 (지식재산권)
① 회사가 제공하는 서비스 및 관련 소프트웨어(디자인, 코드 등 포함), 서비스 제공 과정에서 발생하는 데이터, 정보 기타 일체의 산출물(이용자의 키워드 검색내역 등 서비스 이용정보를 포함하며 이에 제한되지 아니함)에 관한 지식재산권, 소유권 기타 일체의 권리는 회사에게 귀속합니다. 회사는 관련법령상 허용되는 범위 내에서 이상의 산출물을 서비스 개선 및 기타 회사의 영업상 목적에 활용할 수 있습니다.
② 서비스의 사용 또는 프로그램의 설치 등으로 인하여 서비스 및 프로그램에 대한 지식재산권 등의 권리가 회사로부터 이용자에게 이전되는 것은 아니며, 본 이용약관에 따른 사용권 허가는 서비스에 대한 소유권 또는 지식재산권 등의 이전 또는 판매로 해석되지 않습니다.
③ 회사는 회사 컨텐츠와 관련한 적법한 라이선스를 보유하고 있습니다. 그러나 회사는 이용자에게 회사 컨텐츠에 대한 어떠한 사용권이나 라이선스도 부여하거나 보장하지 않습니다. 이용자가 저작권법 기타 관계 법령상 허용되는 범위를 넘어 회사 컨텐츠를 이용하거나, 이를 공표∙공연∙공중송신∙전시∙배포∙대여하는 등의 행위를 할 경우 그에 대한 책임은 전적으로 해당 이용자에게 있습니다
④ 이용자는 회사가 허용하는 목적 및 방법의 범위 내에서 서비스를 이용하여야 하며, 그에 위반하여 제3자의 지식재산권 기타 권리를 침해하여서는 아니됩니다. 이 경우, 제3자의 권리 침해에 관한 책임은 전적으로 그 이용자에게 있으며, 회사는 이와 관련하여 어떠한 책임도 부담하지 않습니다.

제15조 (정보 제공 및 광고의 게재)
① 회사는 이용자의 편의를 위하여 이용자가 서비스 이용 중 필요하다고 인정되는 다양한 정보 및 광고를 배너 게재, 전자우편, 서신우편, 휴대폰 문자메시지, 전화 등의 방법으로 이용자에게 제공할 수 있습니다. 이용자는 이를 원하지 않을 경우에 회사가 제공하는 방법에 따라 수신을 거부할 수 있습니다.
② 전항 단서에 따른 수신 거부 이용자의 경우라도 이용약관, 개인정보보호정책, 기타 이용자의 이익에 영향을 미칠 수 있는 중요한 사항의 변경 등 이용자가 반드시 알고 있어야 하는 사항에 대해서는 전항의 방법으로 정보의 제공 등을 할 수 있습니다.
③ 서비스가 제공되는 플랫폼 상에는 배너와 링크(Link) 등 다양한 형태의 광고가 포함될 수 있으며, 이는 제3자가 제공하는 페이지와 연결될 수 있습니다.
④ 제3항에 따라 제3자가 제공하는 페이지로 연결될 경우 해당 페이지는 회사의 서비스 영역이 아니므로 회사가 신뢰성, 안정성 등을 보장하지 않으며 그로 인한 이용자의 손해에 대하여도 회사는 책임을 지지 않습니다.
⑤ 회사는 서비스 상에 게재되어 있거나 서비스를 통한 제3자와의 판촉활동에 이용자가 참여하거나 교신 또는 거래의 결과로서 발생하는 모든 손실 또는 손해에 대해 관련 법에 특별한 규정이 있거나 회사의 고의 또는 중과실로 인한 경우가 아닌 한 책임을 지지 않습니다.

제16조 (회원의 해지)&nbsp;
회원은 회사와의 서비스 이용계약을 해지(이하 &ldquo;회원 탈퇴&rdquo;라 합니다)할 수 있습니다. 회원이 회원 탈퇴를 신청한 경우 회사는 회원 본인의 신청인지 여부를 확인할 수 있으며, 회사는 확인 완료 후에 회원의 신청에 따른 조치를 취합니다. 제19조 (회사의 해지)
① 회사는 이용자가 본 약관을 위반한 경우 또는 다음 각 호의 경우에는 이용자에 대하여 10일의 기간을 정하여 시정할 것을 최고하고 그 기간 동안 시정되지 않을 경우 서비스 이용 계약을 해지할 수 있습니다. 다만, 이용자가 현행법 위반 및 고의 또는 중대한 과실로 회사에 손해를 입힌 경우에는 사전통보 없이 서비스 이용계약을 해지할 수 있습니다.
1. 비 실명 가입, 주민등록번호의 도용 등 이용자가 제공한 데이터가 허위임이 판명된 경우
2. 범죄적 행위에 관련되는 경우
3. 국익 또는 사회적 공익을 저해할 목적으로 서비스 이용을 계획 또는 실행할 경우
4. 타인의 서비스 아이디 및 비밀번호를 도용한 경우
5. 타인의 명예를 손상시키거나 불이익을 주는 경우
6. 같은 사용자가 다른 아이디로 이중 등록을 한 경우
7. 서비스에 위해를 가하는 등 서비스의 건전한 이용을 저해하는 경우
8. 기타 관련법령이나 회사가 정한 이용조건에 위배되는 경우
② 제1항에 의하여 계약이 해지되는 경우 이용자에게 제공되는 서비스는 모두 중단됩니다.

제17조 (양도 금지)&nbsp;
이용자는 본 약관에 의한 서비스의 이용권한, 회사-이용자간 서비스 계약 등 기타 이용계약 상의 권리, 지위 등을 타인에게 양도 및 증여할 수 없으며, 이를 담보로 제공할 수 없습니다.

제18조 (면책)
① 회사는 다음 각 호의 경우에는 면책됩니다.
1. 전시, 사변, 천재지변, 국가비상사태, 해결이 곤란한 기술적 결함 기타 불가항력적 사유로 서비스를 제공할 수 없는 경우
2. 이용자의 귀책사유로 인한 서비스의 중지, 이용 장애 및 서비스 이용계약이 해지된 경우
3. 기간통신 사업자가 전기통신서비스를 중지하거나 정상적으로 제공하지 아니한 경우
4. 사전에 공지된 서비스용 설비의 보수, 교체, 정기점검, 공사 등 부득이한 사유로 서비스가 중지되거나 장애가 발생한 경우
5. 이용자의 컴퓨터 환경으로 인하여 발생하는 제반 문제 또는 회사의 고의 또는 중대한 과실이 없는 네트워크 환경으로 인하여 발생하는 문제로 인한 경우
6. 서비스 관련 협력사의 설비 장애 등 협력사 관련 사유로 서비스 제공이 중지되거나 장애가 발생한 경우
7. 회사의 고의 또는 중과실 없이 이용자 상호간 또는 이용자와 제3자간에 서비스를 매개로 분쟁이 발생한 경우
8. 이용자의 기기 오류에 의한 손해가 발생한 경우 또는 신상정보 및 전자우편주소를 부정확하게 기재하거나 미 기재하여 손해가 발생한 경우
9. 관련 법령, 정부 정책 등에 따라 서비스를 제공할 수 없는 경우
② 이용자의 불법적인 행위 또는 본 약관에 위반되는 행위로 인하여 회사에 손해가 발생하거나 수사기관, 행정청으로부터 형사처벌 또는 제재를 받은 경우 이용자는 자신의 비용(손해배상금, 소송비용, 변호사 비용 등을 포함하되 이에 한정하지 아니함)으로 손해를 전보하고 회사를 면책하여야 합니다.
③ 그 밖에 회사는 법령상 허용되는 한도 내에서 서비스와 관련하여 본 이용약관에 명시되지 않은 어떠한 구체적인 사항에 대한 약정이나 보증을 하지 않습니다.

제19조 (손해배상)&nbsp;
회사는 서비스와 관련하여 이용자에게 어떠한 손해가 발생하더라도 회사가 고의 또는 중과실에 의한 손해를 제외하고는 어떠한 책임도 부담하지 아니합니다. 제23조 (재판관할) 회사의 서비스 제공과 관련하여 회사와 이용자 사이에 분쟁이 발생한 경우, 회사와 이용자는 발생한 분쟁을 원만하게 해결하기 위하여 필요한 모든 노력을 하여야 합니다. 발생한 분쟁에 대하여 소송이 제기될 경우에는 당사자의 주소지를 관할하는 법원을 관할법원으로 하여 분쟁을 해결합니다.&nbsp;
부칙
1. 본 약관은 2021년 5월 1일부터 시행됩니다.
								
								</textarea>
							<div class="Agreement" style="float: left;">
								<input type="checkbox" id="chk2" class="select-chk chk" name="privacyConsent" value="Y">
								<label for="chk2"><span class="r-span">(필수) 개인정보 수집 및 이용동의</span></label>
							</div>
								<textarea style="width: 100%; height: 100px; padding: 15px; resize: none;">
 위셀글로벌 주식회사('www.sellermatch.co.kr'이하 '셀러매치')는 개인정보보호법에 따라 이용자의 개인정보 보호 및 권익을 보호하고 개인정보와 관련한 이용자의 고충을 원활하게 처리할 수 있도록 다음과 같은 처리방침을 두고 있습니다. 셀러매치는 개인정보처리방침을 개정하는 경우 웹사이트 공지사항(또는 개별공지)을 통하여 공지할 것입니다. 본 방침은 2021년 5월 3일부터 시행됩니다.

1. 개인정보의 처리 목적
위셀글로벌 주식회사는 개인정보를 다음의 목적을 위해 처리합니다. 처리한 개인정보는 다음의 목적 이외의 용도로는 사용되지 않으며 이용 목적이 변경될 시에는 사전동의를 구할 예정입니다. 이용자는 회사의 개인정보 수집에 대해, 동의하지 않거나 개인정보를 기재하지 않음으로써 이를 거부할 수 있습니다. 다만, 이 경우 이용자에게 제공되는 서비스가 제한될 수 있습니다.
가. 홈페이지 회원가입 및 관리
회원 가입의사 확인, 회원제 서비스 제공에 따른 본인 식별·인증, 연령 확인, 회원자격 유지·관리, 제한적 본인확인제 시행에 따른 본인확인, 서비스 부정이용 방지, 분쟁 조정을 위한 기록 보존 등을 목적으로 개인정보를 처리합니다.
나. 회원 불만 사항 처리
회원의 신원 확인, 민원 등 고충사항 확인, 사실조사를 위한 연락·통지, 처리결과 통보 등을 목적으로 개인정보를 처리합니다.
다. 재화 또는 서비스 제공
서비스 제공, 청구서 발송, 콘텐츠 제공, 본인인증, 연령인증, 요금결제·정산 등을 목적으로 개인정보를 처리합니다.
라. 서비스 개발
신규 서비스(제품) 개발 및 특화, 이벤트 등 광고성 정보 개선, 만족도 조사, 인구 통계학적 특성에 따른 서비스 제공 및 광고 게재, 접속 빈도 파악 또는 이용자의 서비스 이용에 대한 통계 추출
마. 마케팅 및 광고에의 활용
신규 서비스(제품) 개발 및 맞춤 서비스 제공, 이벤트 및 광고성 정보 제공 및 참여기회 제공 , 인구통계학적 특성에 따른 서비스 제공 및 광고 게재 , 서비스의 유효성 확인, 접속빈도 파악 또는 회원의 서비스 이용에 대한 통계 등을 목적으로 개인정보를 처리합니다.
바. 서비스 부정이용 방지
회원 재가입시 무료 이용 재사용 등 서비스 부정이용 방지 목적으로 개인정보를 처리합니다.

2. 개인정보 수집방법
셀러매치는 다음 방법으로 개인정보를 수집합니다.
셀러매치가 제공하는 플랫폼, 서면 양식, 전화 등 서비스 가입이나 사용 중 회원의 자발적 제공을 통한 수집


2. 개인정보 파일 현황
회원님께서 셀러매치에서 제공하는 서비스를 받는 동안 이용자의 개인정보는 셀러매치에서 계속 보유하며 서비스제공을 위해 이용하게 됩니다.
개인정보 파일명 : 셀러매치 개인정보
개인정보 항목 : 이메일, 휴대전화번호, 로그인ID, 비밀번호, 이름, 결제기록, 서비스 이용 기록, 방문 기록, 불량 이용 기록, 접속 로그, 디바이스 정보, 접속 브라우저 정보, 쿠키, 접속 IP 정보 등
수집방법 : 홈페이지, 전화/팩스, 생성정보 수집 툴을 통한 수집
보유근거 : 홈페이지 회원정보 수집동의 관련 기록 및 맞춤형 마케팅 등 제공
보유기간 : 5년
관련법령 : 신용정보의 수집/처리 및 이용 등에 관한 기록 : 3년, 대금결제 및 재화 등의 공급에 관한 기록 : 5년
•	
3. 개인정보의 처리 및 보유 기간
① <위셀글로벌 주식회사>('셀러매치')는 법령에 따른 개인정보 보유·이용기간 또는 정보주체로부터 개인정보를 수집 시에 동의 받은 개인정보 보유, 이용기간 내에서 개인정보를 처리, 보유합니다.
② 서비스 회원가입 및 관리, 서비스 제공, 회원 불만 사항 처리, 마케팅 및 광고에의 활용과 관련한 개인정보는 원칙적으로 회원 탈퇴(서비스 이용계약 해지) 시까지 위 이용목적을 위하여 보유∙이용됩니다.
③ 각각의 개인정보 처리 및 보유 기간은 다음과 같습니다.
1. 계약 또는 청약철회 등에 관한 기록
가. 보존근거: 전자상거래 등에서의 소비자보호에 관한 법률
나. 보존기간 : 5년
2. 대금결제 및 재화 등의 공급에 관한 기록
가. 보존근거: 전자상거래 등에서의 소비자보호에 관한 법률
나. 보존기간 : 5년
3. 전자금융 거래에 관한 기록
가. 보존근거: 전자금융거래법
나. 보존기간 : 5년
4. 소비자의 불만 또는 분쟁처리에 관한 기록
가. 보존근거: 전자상거래 등에서의 소비자보호에 관한 법률
나. 보존기간 : 3년
5. 표시광고에 관한 기록
가. 보존근거: 전자상거래 등에서의 소비자보호에 관한 법률
나. 보존기간 : 6개월
6. 웹사이트 방문 기록
가. 보존근거: 통신비밀보호법
나. 보존기간 : 3개월
7. 인터넷 로그기록자료, 접속지 추적자료
가. 보존근거: 통신비밀보호법
나. 보존기간 : 3개월

④ 본 조 제1, 2, 3항에도 불구하고 다음의 사유에 해당하는 경우에는 해당 사유가 종료되거나 법령에서 정한 기간까지 관련 개인정보가 보유, 이용될 수 있습니다.
1) 관계 법령 위반에 따른 수사·조사 등이 진행중인 경우에는 해당 수사·조사 종료시까지
2) 서비스 이용에 따른 채권·채무관계 잔존시에는 해당 채권, 채무관계 정산시까지
⑤ 재가입 후 무료 이용 재사용 등 서비스 부정이용 방지 목적을 위한 휴대전화번호 등 개인정보: 회원 탈퇴일로부터 1년


4. 개인정보의 제3자 제공
회사는 회원의 동의가 없는 경우 범위를 초과하여 이용하거나 원칙적으로 회원의 개인정보를 제3자에게 제공하거나 외부에 공개하지 않습니다. 다만, 법령의 규정에 의해 국가기관이 법령에 정해진 절차와 방법에 따라 그 제공을 요청하는 경우 및 아래의 경우에는 예외로 합니다.

-회원이 사전에 제3자 제공에 동의한 경우
-셀러매치 지원하기, 제안하기 기능을 이용한 회원 간 연락처 이동
-개인정보를 제공받는 자 : 해당사항 없음

5. 정보주체와 법정대리인의 권리·의무 및 그 행사방법
이용자는 개인정보주체로써 다음과 같은 권리를 행사할 수 있습니다.
① 정보주체는 위셀글로벌 주식회사에 대해 언제든지 개인정보 열람, 정정, 삭제, 처리정지 요구 등의 권리를 행사할 수 있습니다.
② 제1항에 따른 권리 행사는 위셀글로벌 주식회사에 대해 개인정보 보호법 시행령 제41조 제1항에 따라 서면, 전자우편, 모사전송(FAX) 등을 통하여 하실 수 있으며 위셀글로벌 주식회사 (는) 이에 대해 지체 없이 조치하겠습니다.
③ 제1항에 따른 권리 행사는 정보주체의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있습니다. 이 경우 개인정보 보호법 시행규칙 별지 제11호 서식에 따른 위임장을 제출하셔야 합니다.
④ 개인정보 열람 및 처리정지 요구는 개인정보보호법 제35조 제5항, 제37조 제2항에 의하여 정보주체의 권리가 제한 될 수 있습니다.
⑤ 개인정보의 정정 및 삭제 요구는 다른 법령에서 그 개인정보가 수집 대상으로 명시되어 있는 경우에는 그 삭제를 요구할 수 없습니다.
⑥ 위셀글로벌 주식회사는 정보주체 권리에 따른 열람의 요구, 정정·삭제의 요구, 처리정지의 요구 시 열람 등 요구를 한 자가 본인이거나 정당한 대리인인지를 확인합니다.

6. 개인정보의 파기
<위셀글로벌 주식회사>('셀러매치')는 원칙적으로 개인정보 처리목적이 달성된 경우에는 지체없이 해당 개인정보를 파기합니다. 파기의 절차, 기한 및 방법은 다음과 같습니다.
-파기절차 : 이용자가 입력한 정보는 목적 달성 후 별도의 DB에 옮겨져(종이의 경우 별도의 서류) 내부 방침 및 기타 관련 법령에 따라 일정기간 저장된 후 혹은 즉시 파기됩니다. 이 때, DB로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는 다른 목적으로 이용되지 않습니다.
-파기기한 : 이용자의 개인정보는 개인정보의 보유기간이 경과된 경우에는 보유기간의 종료일로부터 5일 이내에, 개인정보의 처리 목적 달성, 해당 서비스의 폐지, 사업의 종료 등 그 개인정보가 불필요하게 되었을 때에는 개인정보의 처리가 불필요한 것으로 인정되는 날로부터 5일 이내에 그 개인정보를 파기합니다.
-파기방법 : 전자적 파일 형태의 정보는 기록을 재생할 수 없는 기술적 방법을 사용합니다. 종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.

7. 개인정보 자동 수집 장치의 설치•운영 및 거부에 관한 사항
① 위셀글로벌 주식회사는 개별적인 맞춤서비스를 제공하기 위해 이용정보를 저장하고 수시로 불러오는 ‘쿠키(cookie)’를 사용합니다.
② 쿠키는 웹사이트를 운영하는데 이용되는 서버(http)가 이용자의 컴퓨터 브라우저에게 보내는 소량의 정보이며 이용자들의 PC 컴퓨터내의 하드디스크에 저장되기도 합니다.
가. 쿠키의 사용 목적
이용자가 방문한 각 서비스와 웹 사이트들에 대한 방문 및 이용형태, 인기 검색어, 보안접속 여부 등을 파악하여 이용자에게 최적화된 서비스를 제공하기 위해 사용됩니다.
나. 쿠키의 설치•운영 및 거부
설비를 이용함에 있어 회원은 쿠키 설치에 대한 선택권을 가지고 있습니다. 회원은 웹 브라우저에서 옵션을 설정함으로써 모든 쿠키를 허용하거나, 쿠키가 저장될 때마다 확인을 거치거나, 모든 쿠키의 저장을 거부할 수 있습니다. 다만 회원이 쿠키를 거부할 경우, 서비스 제공에 어려움이 있을 수 있습니다.

8. 개인정보 보호책임자
① 위셀글로벌 주식회사는 개인정보 처리에 관한 업무를 총괄해서 책임지고, 개인정보 처리와 관련한 정보주체의 불만처리 및 피해구제 등을 위하여 아래와 같이 개인정보 보호책임자를 지정하고 있습니다.
▶ 개인정보관리 책임자
성명: 정윤용
연락처: help@sellermatch.co.kr
▶ 개인정보보호 책임자
성명: 정윤용
연락처: help@sellermatch.co.kr
② 정보주체께서는 위셀글로벌 주식회사의 서비스(또는 사업)을 이용하시면서 발생한 모든 개인정보 보호 관련 문의, 불만처리, 피해구제 등에 관한 사항을 개인정보 보호책임자에게 문의하실 수 있습니다. 위셀글로벌 주식회사는 정보주체의 문의에 대해 지체 없이 답변 및 처리할 예정입니다.

9. 개인정보 처리방침의 고지 또는 통지 방법
① 현행 개인정보 처리방침에 대한 내용 추가, 삭제 및 수정이 있을 시에는 서비스 웹페이지를 통해 변경이유 및 그 내용을 고지합니다.
② 회사는 회원이 동의한 범위를 넘어 회원의 개인정보를 이용하거나 제3자에게 취급위탁하기 위해 회원의 추가적인 동의를 얻고자 하는 때에는 미리 회원에게 개별적으로 서면, 전자우편, 전화 등으로 해당사항을 고지하거나 웹페이지에 이를 게시합니다.
③ 회사는 개인정보의 수집, 보관, 처리, 이용, 제공, 관리, 파기 등을 제3자에게 위탁하는 경우에는 서비스약관, 개인정보처리방침 등을 통하여 그 사실을 회원에게 고지합니다.

10. 개인정보의 안전성 확보 조치 
<위셀글로벌 주식회사>'셀러매치'는 개인정보보호법 제29조에 따라 다음과 같이 안전성 확보에 필요한 기술적/관리적 및 물리적 조치를 하고 있습니다.
① 정기적인 자체 감사 실시
개인정보 취급 관련 안정성 확보를 위해 정기적(분기 1회)으로 자체 감사를 실시하고 있습니다.
② 개인정보 취급 직원의 최소화 및 교육
개인정보를 취급하는 직원을 지정하고 담당자에 한정시켜 최소화 하여 개인정보를 관리하는 대책을 시행하고 있습니다.
③ 내부관리계획의 수립 및 시행
개인정보의 안전한 처리를 위하여 내부관리계획을 수립하고 시행하고 있습니다.
④ 개인정보의 암호화
이용자의 개인정보는 비밀번호는 암호화 되어 저장 및 관리되고 있어, 본인만이 알 수 있으며 중요한 데이터는 파일 및 전송 데이터를 암호화 하거나 파일 잠금 기능을 사용하는 등의 별도 보안기능을 사용하고 있습니다.</textarea>
						</div>
						<div class="Agreement" style="float: left; margin-left:10px;">
							<input type="checkbox" id="chk3" class="select-chk chk" name="ageConsent" value="Y">
							<label for="chk3"><span class="r-span">(필수) 만 14세 이상입니다.</span></label>
						</div>
						<div class="Agreement" style="float: left; margin-left:10px;">
							<input type="checkbox" id="chk4" class="select-chk chk" name="marketingConsent" value="Y">
							<label for="chk4"><span class="r-span">(선택) 신규 공급자/판매자 정보 등 이메일/문자 수신 동의</span></label>
						</div>
						<div class="Agreement" style="float: left; margin-left:10px;">
							<input type="checkbox" id="chk5" class="select-chk chk" name="accountActiveConsent" value="Y">
							<label for="chk5"><span class="r-span">(선택) 계정 활성 상태를 유지합니다.</span></label>
						</div>
						<div class="join-btn-div" style="text-align-last: center;">
							<button class="join-btn" type="submit" disabled="disabled" style="background-image: linear-gradient(98deg, #D9D9D9, #D9D9D9);">가입하기</button>
						</div>
					</div>
				</form>
				<!-- 회원가입 form end -->
			</div>

		</div>
	</div>
	<div id="hiddenBox" style="display: none;">
		<input type="hidden" id="memSort">
	</div>
	<div class="partner_wrap join-temp-Box"></div>
</div>
<%@ include file="inc/footer.jsp"%>
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/template/assets/daum/exeDaumPostcode.js"></script>
<script>
$(function (){
	$('input[type="checkbox"][id="memSort1"]').on('click', function(){
	  swal('알림', '판매자를 선택하셨습니다.', 'success');
	  var chkValue = $('input[type=checkbox][id="memSort1"]:checked').val();
	  if(chkValue){
	             $('#resultText1').css('display','block');
	             $('#resultText2').css('display','none');
	  }else{
	             $('#resultText1').css('display','none');
	             $('#resultText2').css('display','block');
	  }
});
});
$(function (){
	$('input[type="checkbox"][id="memSort2"]').on('click', function(){
	  swal('알림', '공급자를 선택하셨습니다.', 'success');
	  var chkValue = $('input[type=checkbox][id="memSort2"]:checked').val();
	  if(chkValue){
	             $('#resultText1').css('display','none');
	             $('#resultText2').css('display','block');
	  }else{
          		 $('#resultText1').css('display','block');
		         $('#resultText2').css('display','none');
	  }
});
});


$(document).ready(function() {
	$('#info').on('click', function(){
		$('#infoModal').modal();
	});
	
	$('#termsOfService').on('click', function(){
		$('#termsOfServiceModal').modal();
	});
});

$(document).ready(function() {
	
	$(document).on("change", "#image" ,handleImgfileSelect);
	
	$(document).on("click", ".agree-all", function(){
		$(".agree-chk").prop("checked", this.checked);
		$(".select-chk").prop("checked", this.checked);
		
		if (this.checked) {
			$('.join-btn').css("background-image", "linear-gradient(98deg, #ff8000, #ff540f)");
			$('.join-btn').attr('disabled', false);
		} else {
			$('.join-btn').css("background-image", "linear-gradient(98deg, #D9D9D9, #D9D9D9)");
			$('.join-btn').attr('disabled', true);
		}
	});
	
	$(document).on("click", ".select-chk", function(){
		var total_len = $(".chk").length;
		//선택된 갯수
		var len = $(".chk:checked").length;
		if(len == total_len){ // 선택된 갯수가 총 갯수랑 같으면 전체선택체크박스 체크 표시
			$(".agree-all").prop('checked', true);
		}else if(len >= 0){ // 선택된 갯수가 0보다 크거나 같으면 전체선택체크박스 체크 해제 
			$(".agree-all").prop('checked', false);
			$(".agree-all").prop("checked", false);
		}
		if($("#chk1:checked").val()=='Y'&&$("#chk2:checked").val()=='Y'&&$("#chk3:checked").val()=='Y'){
			$('.join-btn').css("background-image", "linear-gradient(98deg, #ff8000, #ff540f)");
			$('.join-btn').attr('disabled', false);
		}else{
			$('.join-btn').css("background-image", "linear-gradient(98deg, #D9D9D9, #D9D9D9)");
			$('.join-btn').attr('disabled', true);
		}
		
		if (this.checked == false) {
			$(".agree-all").prop("checked", false);
		}
	});
	
	$(document).on("click", ".agree-chk", function(){
		var total_len = $(".chk").length;
		//선택된 갯수
		var len = $(".chk:checked").length;
		if(len == total_len){ // 선택된 갯수가 총 갯수랑 같으면 전체선택체크박스 체크 표시
			$(".agree-all").prop('checked', true);

		}else if(len >= 0){ // 선택된 갯수가 0보다 크거나 같으면 전체선택체크박스 체크 해제 
			$(".agree-all").prop('checked', false);
			$(".agree-all").prop("checked", false);
		}

		if($("#chk1:checked").val()=='Y'&&$("#chk2:checked").val()=='Y'&&$("#chk3:checked").val()=='Y'){
			$('.join-btn').css("background-image", "linear-gradient(98deg, #ff8000, #ff540f)");
			$('.join-btn').attr('disabled', false);
		}else{
			$('.join-btn').css("background-image", "linear-gradient(98deg, #D9D9D9, #D9D9D9)");
			$('.join-btn').attr('disabled', true);
		}
	});
		
	$(document).on("click", "#sendAuthEmail", function(){
	    const memEmail = $("#memEmail").val();
	
	    if (!memEmail) {
	    	swal('알림', '이메일을 입력하세요.', 'warning');
	        return;
	    }
	    
	    $.post(ROOT_URL + '/member/sendAuthEmail', {
	    	memEmail: memEmail
	    }, function(json) {
	    	swal('확인', '인증번호가 발송되었습니다.', 'success');
	    });
	});
	
	$(document).on("click", "#authConfirm", function(){
	    const auth_confirm = $("#auth_confirm").val();
	
	    if (!auth_confirm) {
	    	swal('알림', '인증번호를 입력하세요.', 'warning');
	        return;
	    }
	    
	    $.post(ROOT_URL + '/member/authConfirm', {
	    	auth_confirm: auth_confirm
	    }, function(json) {
	    	if (json.result == "0") {
	    		swal('알림', '인증실패', 'warning');
			} else {
		    	swal('확인', '인증이 확인되었습니다.', 'success');
		    	$("#memRname").val(json.result);
			}
	    });
	});
	
	$(document).on("focus blur", "#memNick", function(){
		var memNick = $('#memNick').val();
		$('#memNick').val(memNick.trim());
	});
	
	$(document).on("focus", "#join_form", function(e){
		
		$.validator.addMethod("passwordCk",  function( value, element ) {

			return this.optional(element) ||  /^.*(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=*]).*$/.test(value);

		}); 
		
		$.validator.addMethod("phone", function(value, element) {
			return this.optional(element)
					|| /^01(?:0|1|[6-9])(?:\d{3}|\d{4})\d{4}$/i.test(value)
					|| /^\d{2, 3}\d{3, 4}\d{4}$/i.test(value);
		});
		
	    /** 유효성 검사 플러그인이 ajaxForm보다 먼저 명시되어야 한다. */
	    $('#join_form').validate({
	    	/* 
				required 필수 항목으로 설정한다. (true, false)
				remote 백엔드와 연동하여 Ajax 처리 결과를 받을 수 있다.(중복검사 등)
			*/
			
	        rules: {
	            // [아이디] 필수 + 알파벳,숫자 조합만 허용
	            memberId: {
	                required: true, email: true, 
	                remote : {
	                    url : ROOT_URL + '/member/idCheck',
	                    type : 'post',
	                    data : {
	                    	memberId : function() {
                            return $('#memberId').val();
                       		}
	                    }
	                }
	            },
	            // [비밀번호] 필수 + 글자수 길이 제한
	            memPw2: { required: true, passwordCk:true, minlength: 6, maxlength: 30 },
	            // [비밀번호 확인] 필수 + 특정 항목과 일치 (id로 연결)
	            memPw_confirm: { required: true, equalTo: '#memPw2' },
	            // 닉네임 필수, 길이제한, 중복검사
	            memNick: { 
	            	required: true, 
	            	maxlength: 9,
	            	remote : {
	                    url : ROOT_URL + '/member/nickCheck',
	                    type : 'post',
	                    data : {
	                    	memberId : function() {
                            return $('#memNick').val();
                       		}
	                    }
	                }
	            },
	            // [연락처] 필수
	            memTel: { phone: true, required: true, minlength: 10, maxlength: 11 },
	            // [우편번호] 필수 입력
	            postcode: 'required',
	            // [주소1] 우편번호가 입력된 경우만 필수
	            memAddr: 'required',
	            
	        },
	        messages: {
	        	memberId: {
	                required: '아이디를 입력하세요.',
	                email: '아이디는 이메일만 입력 가능합니다.',
	                remote: '이미 사용중인 이메일 입니다.'
	            },
	            memPw2: {
	                required: '비밀번호를 입력하세요.',
	                passwordCk: '비밀번호는 문자 + 숫자 + 특수문자를 포함하셔야 합니다.',
	                minlength: '비밀번호는 최소 {0}글자 이상 입력하셔야 합니다.',
	                maxlength: '비밀번호는 최대 {0}글자까지 가능합니다.',
	            },
	            memPw_confirm: {
	                required: '비밀번호 확인값을 입력하세요.',
	                equalTo: '비밀번호 확인이 잘못되었습니다.',
	            },
	            email: {
	                required: '이메일을 입력하세요.',
	                email: '이메일 형식이 잘못되었습니다.',
	                maxlength: '이메일은 최대 {0}글자까지 가능합니다.',
	                remote: '이미 사용중인 이메일 입니다.'
	            },
	            memTel: {
	            	required: '연락처를 입력하세요.',
	                phone: '연락처 형식이 잘못되었습니다.',
	                minlength: '연락처는 최소 {0}글자 이상 입력하셔야 합니다.',
	                maxlength: '연락처는 최대 {0}글자까지 가능합니다.',
	            },
	            memNick: {
	            	maxlength: '닉네임은 최대 {9}글자까지 가능합니다.',
	            	remote: '이미 사용중인 닉네임입니다.'
	            },
	            postcode: '우편번호를 입력해 주세요.',
	            memAddr: '기본주소를 입력해 주세요.',
	        }
	    });
	});
    
    $(document).on("submit", "#join_form", function(e){
		e.preventDefault();
		
		var profileMemId = $('#memberId').val();
		var profileSort = $('#memSort').val();
		
	    var form = $(this);
		var url = form.attr('action');
		
		$('.join-btn').prop("disabled", true);
 	    $('.ajax-loader').show();
       
        $.ajax({
			   type: "POST",
	           url: url,
	           data: form.serialize(),
	           beforeSend: function() {
	        	   return $('#join_form').valid();
	        	   
               },
               success: function() {
            	   $('.ajax-loader').hide();
            	   window.location.href = ROOT_URL+"/member/joinComplete";
            	   
/*             	   swal('알림', '회원가입이 완료되었습니다.', 'success').then(function(result) {
            		    var text = '';
	   					if (profileSort == 1) {
	   						text = '프로필 등록 후 여러분이 원하는 판매자와 더 가까워집니다.'
	   					}
	   					if (profileSort == 2) {
	   						text = '프로필 등록 후 여러분이 원하는 공급자와 더 가까워집니다.'
	   					}
	   					swal({
	   	    	            title: '<div>프로필 등록을 해야</div><div>프로젝트 등록을 할 수 있습니다.</div>',
	   	    	            text: text,
	   	    	            type: "question",
	   	    	            icon: 'warning',
	   	    	            showCancelButton: true,
	   	    	            confirmButtonColor: '#3085d6',
	   	    	            cancelButtonColor: '#d33',
	   	    	            confirmButtonText: '지금 등록하기',
	   	    	            cancelButtonText: '나중에 등록하기'
		    	        }).then(function(result) {    					
		    	            if (result.value) {
		    	            	window.location = ROOT_URL+ "/profile?profileMemId="+profileMemId+"&profileSort="+profileSort;
		    	            } else {
		    	            	window.location = ROOT_URL + '/temp';
		    	            }
		    	        });
                   }); */
               }
        });
    });
});

function handleImgfileSelect(e) {
	var files = e.target.files;
	var filesArr = Array.prototype.slice.call(files);
	
	
	filesArr.forEach(function(f) {
		if(!f.type.match("image.*")) {
			return;
		}
		sel_file = f;
		
		var reader = new FileReader();
		reader.onload = function(e) {
			$("#img").attr("src", e.target.result);
		}
		reader.readAsDataURL(f);
	});
};
</script>
<script type="text/javascript">
$(document).ready(function() {
	Handlebars.registerHelper('createTag', function (tag) {
		return new Handlebars.SafeString(tag);
	});

	Handlebars.registerHelper('ifCond', function (v1, operator, v2, options) {

	    switch (operator) {
	        case '==':
	            return (v1 == v2) ? options.fn(this) : options.inverse(this);
	        case '===':
	            return (v1 === v2) ? options.fn(this) : options.inverse(this);
	        case '!=':
	            return (v1 != v2) ? options.fn(this) : options.inverse(this);
	        case '!==':
	            return (v1 !== v2) ? options.fn(this) : options.inverse(this);
	        case '<':
	            return (v1 < v2) ? options.fn(this) : options.inverse(this);
	        case '<=':
	            return (v1 <= v2) ? options.fn(this) : options.inverse(this);
	        case '>':
	            return (v1 > v2) ? options.fn(this) : options.inverse(this);
	        case '>=':
	            return (v1 >= v2) ? options.fn(this) : options.inverse(this);
	        case '&&':
	            return (v1 && v2) ? options.fn(this) : options.inverse(this);
	        case '||':
	            return (v1 || v2) ? options.fn(this) : options.inverse(this);
	        default:
	            return options.inverse(this);
	    }
	});	
});

function checkOnlyOne(element) {
	  
	  const checkboxes 
	      = document.getElementsByName("memSort");
	  
	  checkboxes.forEach((cb) => {
	    cb.checked = false;
	  })
	  
	  element.checked = true;
	}

</script>
<script>
    <c:if test= "${msg != null}">
    swal('${msg}');
    </c:if>
</script>
</body>
</html>
