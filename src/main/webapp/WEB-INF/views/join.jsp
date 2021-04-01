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
						고마진 공급자를 찾아 수익을 향상시키세요! 회원유형은 마이페이지에서 추후에 전환 가능합니다.</div>
					<div class="resultText" id="resultText2" style="display: none;">공급자가입을
						선택하셨습니다. 검증된 고매출 판매자를 찾아 거래해보세요!  회원유형은 마이페이지에서 추후에 전환 가능합니다.</div>
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
							<input type="radio" id="memSort1" value="2" name="memSort" checked="checked" /><span class="radio-sort"> 판매자로 가입</span>
							<input type="radio" id="memSort2" value="1" name="memSort" style="margin-left:30px;"/><span class="radio-sort"> 공급자로 가입</span>
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
							<input type="text" class="form-control" name="memNick" id="memNick" placeholder="별명을 입력하세요. (회사명 등 정보성 닉네임은 사용 불가)" value="${result.memNick}">
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
								<input type="checkbox" id="chk1" class="agree-chk chk">
								<label for="chk1"><span class="r-span">(필수) 이용약관동의</span></label>
							</div>
							<!-- 						<div id="termsOfService" href="javascipt:void(0);" style="float: right;">
							내용보기 V
						</div> -->
							<textarea
								style="width: 100%; height: 100px; padding: 15px; resize: none;">
제1조 (목적) 
본약관은위셀글로벌주식회사(이하 "회사"라합니다)가이용자에게제공하는 ‘셀러매치’ 서비스의이용과관련하여회사와이용자간의권리, 의무, 책임사항및기타필요한사항을규정함을목적으로합니다. 

제2조 (정의) 
본약관에서사용하는용어의정의는다음과같습니다.
1.“셀러매치서비스” 또는 "서비스"는함은회사가셀러매치웹사이트(sellermatch.co.kr) 기타플랫폼(이하 “플랫폼”이라합니다)을통하여회원에게제공하는일체의서비스를의미합니다.
2.“이용자”는플랫폼에접속하여회사가제공하는서비스를이용하는회원및비회원을의미합니다.
3."회원"은본약관에동의하고플랫폼상의회원가입절차를완료한자를의미합니다.
4.“비회원”은회원으로가입하지않고서비스를이용하는이용자를의미합니다.
5.“계정(ID)"이라함은회원의식별과서비스이용을위하여회원이선정하고회사가부여하는문자, 숫자또는특수문자의조합을의미합니다.
6."비밀번호"라함은회원이부여받은계정(ID)과일치되는회원임을확인하고회원의정보및권익보호를위해회원자신이선정하여비밀로관리하는문자, 숫자또는특수문자의조합을의미합니다.
7."계정정보"라함은회원의계정(ID), 비밀번호, 성명등회원이회사에제공한일반정보및서비스이용정보등생성정보를통칭합니다.

제3조 (약관의명시와개정등)
①회사는이약관의내용을이용자가알수있도록플랫폼상에게시하거나연결화면을제공하는방법으로이용자에게공지합니다.
②회사는「약관의규제에관한법률」등관련법령에위배하지않는범위에서본약관을개정할수있습니다.
③회사는약관을개정할경우에는적용일자및개정내용, 개정사유등을명시하여그적용일자로부터최소한 7일이전(이용자에게불리하거나중대한사항의변경은 30일이전)부터그적용일자경과후상당한기간이경과할때까지초기화면또는초기화면과의연결화면을통해공지합니다.
④회사는약관을개정할경우에는원칙적으로개정약관공지후개정약관의적용에대한이용자의동의여부를확인합니다. 다만개정약관공지시이용자가동의또는거부의의사표시를하지않으면승낙한것으로간주하겠다는내용도함께공지한경우에는이용자가약관시행일까지거부의사를표시하지않는다면개정약관에동의한것으로간주할수있습니다.
⑤이용자는개정약관의적용에동의하지않는경우회원의경우회사와의서비스이용계약을해지할수있으며, 이용자는서비스이용을중단할수있습니다.
⑥회사는서비스제공및운영을위해별도의운영정책을마련하여운영할수있으며, 이경우회사는사전공지후운영정책을적용하며본약관에동의한이용자모두에게그효력이발생합니다. 회사는이용자가운영정책의내용을서비스내에서확인할수있도록합니다.
⑦본약관에서규정되지않은사항이나해석에대해서는별도의운영정책, 관련법령또는상관례에따릅니다. 또한본약관과운영정책이내용상충돌할경우별도규정된운영정책의내용이효력상우선합니다.

제4조 (회원가입)
①회원이되려고하는자는약관의내용에대하여동의를하고, 플랫폼상의회원가입페이지에서제공하는양식을작성하여회원가입하는방법으로이용신청을하여야합니다.
②회사는회원이되려고하는자에게실명확인및본인인증, 기타필요한정보를요구할수있으며, 그절차와방식은관련법령에따릅니다.
③회원이되려고하는자는이용신청시제1항에서요구하는정보항목에대하여진실한정보를기재하여야합니다. 실명또는정보를허위로기재하거나타인의명의를도용한경우이약관에의한회원의권리를주장할수없고, 회사는별도조치없이서비스이용계약을취소하거나해지할수있습니다.
④회원가입은회원의약관에대한동의와회원의이용신청에대한회사의승낙으로성립합니다. 이약관에관한동의는이용신청당시회사이용약관에동의함을선택하거나기타동의버튼또는서명등을통해이루어집니다.

제5조 (이용신청의승낙과제한)
①회원이되려는자가제4조에서정하는바에따라정당하게이용신청을한경우에회사는상당한이유가없는한그이용신청을승낙합니다.
②제1항에도불구하고, 회사는다음각호의어느하나에해당하는이용신청에대해서는승낙을하지않을수있습니다.
1.제4조에위반하여이용신청을하는경우
2.자신에게책임있는사유로이용이제한되었던기록이있는자가이용신청을하는경우
3.법령에서금지하는위법행위를할목적으로이용신청을하는경우
4.회사의이익을저해하려는목적으로이용신청을하는경우
5.이전에회원의자격을상실한적이있는자로서회사의회원재가입승낙을얻지못한경우
6.그밖에 1호내지 5호에준하는사유로서승낙이부적절하다고판단되는경우
③회사는다음각호의어느하나에해당하는경우에는그사유가해소될때까지승낙을유보할수있습니다.
1.서비스관련제반용량의부족함등회사의설비에여유가없는경우
2.기술상장애사유가있는경우
3.그밖에위각호에준하는사유로이용신청의승낙이곤란한경우
④회원의이용신청에대하여회사가승낙한경우, 회원이본약관및관련법령을위반하지않은이상회원과회사간에유효하게서비스이용계약이체결된것으로봅니다.

제6조 (회원계정(ID) 및비밀번호)
①회사는회원에대하여서비스이용에필요한계정(ID)을부여합니다.
②회사는계정정보를통하여당해회원의서비스이용가능여부등을판단하는등제반회원관리업무를수행할권한이있으며, 다음과같은이유로회원의아이디및비밀번호변경을요구하거나변경할수있습니다.
1.회원아이디가회원의이메일, 전화번호등으로등록되어사생활침해가우려되는경우
2.타인에게혐오감을주거나미풍양속에저해할목적으로신청한경우
3.보안및아이디정책, 서비스의원활한제공등의목적으로변경할필요성이있는경우
4.기타회사가필요하다고인정되는경우
③회원은자신의계정정보를선량한관리자로서의주의의무를다하여관리하여야합니다. 회원이본인의계정정보를소홀히관리하거나제3자에게이용을승낙함으로써발생하는손해에대하여는회원에게책임이있으며, 회사에게고의또는과실이없는한회사는관련책임을부담하지않습니다.
④비밀번호의관리책임은회원에게있으며, 회원은원하는경우비밀번호를언제든지변경할수있습니다.
⑤회원은정기적으로비밀번호를변경하여야합니다.
⑥회원은계정정보가도용되거나제3자가이를사용하고있음을인지한경우이를즉시회사에통지하고회사의안내에따라야합니다. 회원이이를인지하고서도통지하지않거나, 통지한경우에도회사의안내에따르지않아발생한피해에대해회사는고의또는과실이없는한책임지지않습니다.

제7조 (회원정보의제공및변경)
①회원은본약관에의하여회사에정보를제공하여야하는경우에는진실된정보를제공하여야하며, 허위정보제공으로인해발생한불이익에대해서는보호받지못합니다.
②회원은플랫픔을통해자신의개인정보를열람하고수정할수있습니다. 다만, 서비스관리를위해필요한실명, 계정(ID) 등은수정이제한될수있습니다. 이러한경우에는새로운계정(ID)으로재가입해야하며, 회원탈퇴한계정(ID)은재가입이제한됩니다.
③회원은회사에제공한정보가변경되었을경우지체없이온라인으로수정을하거나스스로수정이불가능한경우회사에대하여그변경사항을알려야합니다.
④회원이회원정보의변경사항을제2항에의하여수정하지아니하거나제3항에의하여회사에알리지아니하여발생한불이익에대하여회사는책임을지지아니하며, 수정하지아니하여발생하는문제의책임은회원에게있습니다.

제8조 (개인정보의보호및관리)
①회사는관련법령이정하는바에따라계정정보등을포함한이용자의개인정보를보호하기위해노력합니다. 이용자의개인정보의보호및사용에대해서는관련법령및회사가별도로고지하는 개인정보처리방침이적용됩니다.
②회사는이용자가안전하게서비스를이용할수있도록개인정보, 신용정보의보호를위해보안시스템을갖추어야하며개인정보처리방침을공시하고준수합니다. 회사는관련법령, 본약관및개인정보처리방침에서정한경우를제외하고는이용자의개인정보가제3자에게공개또는제공되지않도록합니다.
③회사는이용자의귀책사유로인하여노출된계정정보를포함한타인의모든개인정보, 비밀정보에대해서일체의책임을지지않습니다.
④회사는서비스를확장ᆞ추가하는경우이용자의개인정보및데이터를이전할수있고, 이전한개인정보및데이터를이용할수있습니다.

제9조 (회사의의무)
①회사는관련법령과본약관이정하는권리의행사와의무의이행을신의에좇아성실하게하여야합니다.
②회사는계속적이고안정적인서비스의제공을위하여서비스개선을하던중설비에장애가생기거나데이터등이멸실된때에는천재지변, 비상사태, 해결이곤란한기술적결함등부득이한사유가없는한지체없이이를수리또는복구하도록최선의노력을다합니다. 다만협력사의설비에장애가생기거나협력사의고의또는과실로인하여데이터등이멸실된때에는회사에고의또는중과실이없는한회사는면책됩니다.
③회사가제공하는서비스로인하여이용자에게손해가발생한경우그러한손해가회사의고의나과실에기해발생한경우에한하여책임을부담하며, 그책임의범위는통상손해에한합니다.
④회사는이용자로부터제기되는의견이나불만이정당하다고인정할경우에는신속히처리하여야합니다. 다만, 신속한처리가곤란한경우에는이용자에게그사유와처리일정을통보하여야합니다.

제10조 (이용자의의무)
①이용자는다음행위(또는이에준하는행위를포함함)를하여서는안됩니다.
1.비정상적인시스템접근
●악성코드, 바이러스등의프로그램을고의또는과실로설치, 유포하는행위
●회사가제공하는프로그램또는서비스의일부를수정, 무단복제하거나리버스엔지니어링, 디컴파일, 디스어셈블및기타일체의가공행위를통하여복제, 분해또는모방기타변형하는행위
2.비정상적인서비스이용
●회사가제공하는서비스의결과물을불법적인목적으로사용하는행위
●회사의동의없이영리, 영업, 광고, 정치활동등을목적으로서비스를사용하는행위
●실제정보와일치하지않는정보또는타인의정보로회원가입을하는행위
●다수의계정으로활동을하는행위
●계정내불리한정보를삭제하기위해의도적으로계정을탈퇴/재가입하는행위
3.허위또는과장된정보입력
●허위또는과장된정보를입력하여타인의서비스이용을방해하거나방해할위험을야기하는행위
4.공공질서위반
●성별, 정치, 종교, 장애, 연령, 사회적신분, 인종, 지역, 직업등을차별하거나이에대한편견을조장하는행위
●회사, 다른이용자또는제3자를차별또는비방하거나명예를훼손하는행위
●회사, 다른이용자또는제3자에대하여욕설, 폭언, 협박등을하는행위
●과도한신체노출이나음란한행위를묘사하거나, 성매매관련정보를공유하거나, 타인에게성적수치심또는불쾌감을유발할수있는내용을게시하는등미풍양속에반하는정보를플랫폼상에등록하는행위
●혐오스러운사진또는내용을게시하거나, 욕설, 비속어, 은어를사용하는등사회통념에반하는비정상적인활동을하는행위
5.타인의권리침해
●
회사, 다른이용자또는제3자의특허권, 상표권, 저작권등지식재산권을침해하는행위또는침해할우려가있는행위
●타인의개인정보를침해하는행위
●기타웹해킹프로그램, 매크로프로그램, 보이스피싱을위한미러링사이트등타인의권리를침해하거나침해할우려가있는모든행위
6.계정거래, 양도, 대리, 교환등
●계정을타인에게판매, 양도, 대여하거나, 타인에게그이용을허락또는이를시도하는행위및이를알선하는행위
7.명의사칭, 도용등
●이용자가다른이용자, 제3자또는회사의직원을사칭하는행위
8.기타
●회사가게시한정보를무단으로변경하는행위
●자기또는타인에게재산상의이익을주거나타인에게손해를가할목적으로허위의정보를유통시키는행위
●기타관련법령에서금지하거나선량한풍속기타사회통념상허용되지아니하거나원활한서비스제공에악영향을끼치는일체의행위
②이용자는본약관의규정, 이용안내및서비스와관련하여공지한주의사항, 회사가통지하는사항등을확인하고준수할의무가있습니다.

제11조 (이용자의의무위반에대한제재)
①이용자가제10조의의무를위반한경우에회사는사안의중요성과회사, 다른이용자및 3자가입은손해에따라이용자에게다음과같은제재를할수있습니다.
1.서면경고회사는제10조의의무를위반한이용자에게의무위반의내용, 위반시기등을기재하여서면으로경고할수있습니다.
2.이용의제한회사는일정한기간을정하여서비스이용과로그인등을제한또는중지할수있습니다. 이경우회사는해당이용자의접속을금지할수있으며, 이용자가게시한내용의전부또는일부를임의로삭제할수있습니다.
3.영구정지회사는회원의계정을영구적으로정지할수있으며, 비회원의경우서비스이용을영구적으로제한, 중지할수있습니다. (회사는제10조의의무를위반하여제재대상이된이용자들에게이메일등을통하여제재내용을고지합니다.)

제12조 (서비스의변경및내용수정) 
회사는운영상, 기술상의필요에따라서비스내용을수정하거나변경할수있으며, 이경우변경사항을플랫폼상에공지합니다. 이에대하여회사는이용자또는제3자에어떠한책임도부담하지않습니다. 

제13조 (서비스의제공및중단등)
①회사는필요한경우일부서비스의제공을특정시점부터개시할수있습니다. 이러한경우회사는사전또는사후에이를공지합니다. 회사는필요한경우일부서비스를특정회원에게만제공할수있습니다. 회사는서비스를일정범위로분할하여각범위별로이용가능시간을별도로정할수있습니다. 이경우그내용을사전또는사후에이를사이트에공시하거나이용자에게이를통지합니다.
②서비스는연중무휴, 1일 24시간을원칙으로합니다.
③제2항에도불구하고, 다음각호의어느하나에해당하는경우에는일정한시간동안서비스가제공되지아니할수있으며, 해당시간동안회사는서비스를제공할의무가없습니다.
1.컴퓨터등정보통신설비의보수점검, 교체, 정기점검또는서비스의수정을위하여필요한경우
2.해킹등의전자적침해사고, 통신사고, 이용자들의비정상적인서비스이용행태, 예상할수없는서비스의불안정성에대응하기위하여필요한경우
3.관련법령에서특정시간또는방법으로서비스제공을금지하는경우
4.천재지변, 국가비상사태, 정전, 서비스설비의장애또는서비스이용의폭주등으로정상적인서비스제공이불가능할경우
5.분할, 합병, 영업양도, 영업의폐지, 당해서비스의수익악화등회사의경영상중대한필요에의한경우
④회사는제3항각호의경우, 1주일전에그사실을이용자에게개별서비스초기화면이나플랫폼상에사전고지하며, 이기간동안이용자가고지내용을인지하지못한데대하여회사는책임을부담하지아니합니다. 사전에통지할수없는부득이한사정(긴급한시스템점검ᆞ증설ᆞ교체, 시스템관리자의고의, 과실없는디스크장애ᆞ시스템다운, 제3자인통신회사, 기간통신사업자등의사정으로인한서비스제공의불가등회사가통제할수없는사정)이있는경우에는그사정이종료된후에즉시사후에통지를할수있습니다.
⑤회사는 1년이상휴면회원에대해안내메일또는공지사항발표후 1주일간의통지기간을거쳐서비스제공을중지할수있습니다.
⑥본조의서비스중지에의하여본서비스에보관되거나전송된정보등이보관되지못하였거나삭제, 미전송, 기타통신데이터의손실이발생할수있으므로이용자는중요한정보등을별도로보관하고서비스중지기간이후해당정보등의존재여부를스스로확인하여야합니다. 회사의고의또는과실이없는한회사는이에대하여책임을부담하지않습니다.
⑦회사의사정으로서비스를영구적으로중단하여야할경우에는제4항을준용하되, 다만이경우에는사전고지기간을 1개월로합니다.

제14조 (지식재산권)
①회사가제공하는서비스및관련소프트웨어(디자인, 코드등포함), 서비스제공과정에서발생하는데이터, 정보기타일체의산출물(이용자의키워드검색내역등서비스이용정보를포함하며이에제한되지아니함)에관한지식재산권, 소유권기타일체의권리는회사에게귀속합니다. 회사는관련법령상허용되는범위내에서이상의산출물을서비스개선및기타회사의영업상목적에활용할수있습니다.
②서비스의사용또는프로그램의설치등으로인하여서비스및프로그램에대한지식재산권등의권리가회사로부터이용자에게이전되는것은아니며, 본이용약관에따른사용권허가는서비스에대한소유권또는지식재산권등의이전또는판매로해석되지않습니다.
③회사는회사컨텐츠와관련한적법한라이선스를보유하고있습니다. 그러나회사는이용자에게회사컨텐츠에대한어떠한사용권이나라이선스도부여하거나보장하지않습니다. 이용자가저작권법기타관계법령상허용되는범위를넘어회사컨텐츠를이용하거나, 이를공표∙공연∙공중송신∙전시∙배포∙대여하는등의행위를할경우그에대한책임은전적으로해당이용자에게있습니다
④이용자는회사가허용하는목적및방법의범위내에서서비스를이용하여야하며, 그에위반하여제3자의지식재산권기타권리를침해하여서는아니됩니다. 이경우, 제3자의권리침해에관한책임은전적으로그이용자에게있으며, 회사는이와관련하여어떠한책임도부담하지않습니다.

제15조 (정보제공및광고의게재)
①회사는이용자의편의를위하여이용자가서비스이용중필요하다고인정되는다양한정보및광고를배너게재, 전자우편, 서신우편, 휴대폰문자메시지, 전화등의방법으로이용자에게제공할수있습니다. 이용자는이를원하지않을경우에회사가제공하는방법에따라수신을거부할수있습니다.
②전항단서에따른수신거부이용자의경우라도이용약관, 개인정보보호정책, 기타이용자의이익에영향을미칠수있는중요한사항의변경등이용자가반드시알고있어야하는사항에대해서는전항의방법으로정보의제공등을할수있습니다.
③서비스가제공되는플랫폼상에는배너와링크(Link) 등다양한형태의광고가포함될수있으며, 이는제3자가제공하는페이지와연결될수있습니다.
④제3항에따라제3자가제공하는페이지로연결될경우해당페이지는회사의서비스영역이아니므로회사가신뢰성, 안정성등을보장하지않으며그로인한이용자의손해에대하여도회사는책임을지지않습니다.
⑤회사는서비스상에게재되어있거나서비스를통한제3자와의판촉활동에이용자가참여하거나교신또는거래의결과로서발생하는모든손실또는손해에대해관련법에특별한규정이있거나회사의고의또는중과실로인한경우가아닌한책임을지지않습니다.

제16조 (회원의해지) 
회원은회사와의서비스이용계약을해지(이하 “회원탈퇴”라합니다)할수있습니다. 회원이회원탈퇴를신청한경우회사는회원본인의신청인지여부를확인할수있으며, 회사는확인완료후에회원의신청에따른조치를취합니다. 제19조 (회사의해지)
①회사는이용자가본약관을위반한경우또는다음각호의경우에는이용자에대하여 10일의기간을정하여시정할것을최고하고그기간동안시정되지않을경우서비스이용계약을해지할수있습니다. 다만, 이용자가현행법위반및고의또는중대한과실로회사에손해를입힌경우에는사전통보없이서비스이용계약을해지할수있습니다.
1.비실명가입, 주민등록번호의도용등이용자가제공한데이터가허위임이판명된경우
2.범죄적행위에관련되는경우
3.국익또는사회적공익을저해할목적으로서비스이용을계획또는실행할경우
4.타인의서비스아이디및비밀번호를도용한경우
5.타인의명예를손상시키거나불이익을주는경우
6.같은사용자가다른아이디로이중등록을한경우
7.서비스에위해를가하는등서비스의건전한이용을저해하는경우
8.기타관련법령이나회사가정한이용조건에위배되는경우
②제1항에의하여계약이해지되는경우이용자에게제공되는서비스는모두중단됩니다.

제17조 (양도금지) 
이용자는본약관에의한서비스의이용권한, 회사-이용자간서비스계약등기타이용계약상의권리, 지위등을타인에게양도및증여할수없으며, 이를담보로제공할수없습니다.

제18조 (면책)
①회사는다음각호의경우에는면책됩니다.
1.전시, 사변, 천재지변, 국가비상사태, 해결이곤란한기술적결함기타불가항력적사유로서비스를제공할수없는경우
2.이용자의귀책사유로인한서비스의중지, 이용장애및서비스이용계약이해지된경우
3.기간통신사업자가전기통신서비스를중지하거나정상적으로제공하지아니한경우
4.사전에공지된서비스용설비의보수, 교체, 정기점검, 공사등부득이한사유로서비스가중지되거나장애가발생한경우
5.이용자의컴퓨터환경으로인하여발생하는제반문제또는회사의고의또는중대한과실이없는네트워크환경으로인하여발생하는문제로인한경우
6.서비스관련협력사의설비장애등협력사관련사유로서비스제공이중지되거나장애가발생한경우
7.회사의고의또는중과실없이이용자상호간또는이용자와제3자간에서비스를매개로분쟁이발생한경우
8.이용자의기기오류에의한손해가발생한경우또는신상정보및전자우편주소를부정확하게기재하거나미기재하여손해가발생한경우
9.관련법령, 정부정책등에따라서비스를제공할수없는경우
②이용자의불법적인행위또는본약관에위반되는행위로인하여회사에손해가발생하거나수사기관, 행정청으로부터형사처벌또는제재를받은경우이용자는자신의비용(손해배상금, 소송비용, 변호사비용등을포함하되이에한정하지아니함)으로손해를전보하고회사를면책하여야합니다.
③그밖에회사는법령상허용되는한도내에서서비스와관련하여본이용약관에명시되지않은어떠한구체적인사항에대한약정이나보증을하지않습니다.

제19조 (손해배상) 
회사는서비스와관련하여이용자에게어떠한손해가발생하더라도회사가고의또는중과실에의한손해를제외하고는어떠한책임도부담하지아니합니다. 제23조 (재판관할) 회사의서비스제공과관련하여회사와이용자사이에분쟁이발생한경우, 회사와이용자는발생한분쟁을원만하게해결하기위하여필요한모든노력을하여야합니다. 발생한분쟁에대하여소송이제기될경우에는당사자의주소지를관할하는법원을관할법원으로하여분쟁을해결합니다. 
부칙
1.본약관은 2021년4월 1일부터시행됩니다.
								
								</textarea>
							<div class="Agreement" style="float: left;">
								<input type="checkbox" id="chk2" class="select-chk chk">
								<label for="chk2"><span class="r-span">(선택) 개인정보 수집 및 이용동의</span></label>
							</div>
							<!-- 						<div style="float: right;">
							내용보기 V
						</div> -->
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
	$('input[type="radio"][id="memSort1"]').on('click', function(){
	  var chkValue = $('input[type=radio][id="memSort1"]:checked').val();
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
	$('input[type="radio"][id="memSort2"]').on('click', function(){
	  var chkValue = $('input[type=radio][id="memSort2"]:checked').val();
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
		console.log(total_len)
		//선택된 갯수
		var len = $(".chk:checked").length;
		console.log(len)
		if(len == total_len){ // 선택된 갯수가 총 갯수랑 같으면 전체선택체크박스 체크 표시
			$(".agree-all").prop('checked', true);
		}else if(len >= 0){ // 선택된 갯수가 0보다 크거나 같으면 전체선택체크박스 체크 해제 
			$(".agree-all").prop('checked', false);	
		}
		
		if (this.checked == false) {
			$(".agree-all").prop("checked", false);
		}
	});
	
	$(document).on("click", ".agree-chk", function(){
		
		var total_len = $(".chk").length;
		console.log(total_len)
		//선택된 갯수
		var len = $(".chk:checked").length;
		console.log(len)
		if(len == total_len){ // 선택된 갯수가 총 갯수랑 같으면 전체선택체크박스 체크 표시
			$(".agree-all").prop('checked', true);
		}else if(len >= 0){ // 선택된 갯수가 0보다 크거나 같으면 전체선택체크박스 체크 해제 
			$(".agree-all").prop('checked', false);	
		}
		
		if (this.checked) {
			$('.join-btn').css("background-image", "linear-gradient(98deg, #ff8000, #ff540f)");
			$('.join-btn').attr('disabled', false);
		} else {
			$('.join-btn').css("background-image", "linear-gradient(98deg, #D9D9D9, #D9D9D9)");
			$('.join-btn').attr('disabled', true);
			$(".agree-all").prop("checked", false);
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
		console.log($('#memNick').val())
	});
	
	$(document).on("focus", "#join_form", function(e){
		
		$.validator.addMethod("passwordCk",  function( value, element ) {

			return this.optional(element) ||  /^.*(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/.test(value);

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
	            	maxlength: 6,
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
	            	maxlength: '닉네임은 최대 {6}글자까지 가능합니다.',
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
		
		
       
        $.ajax({
			   type: "POST",
	           url: url,
	           data: form.serialize(),
	           beforeSend: function() {
	        	   return $('#join_form').valid();
               },
               success: function() {
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

</script>
<script>
    <c:if test= "${msg != null}">
    swal('${msg}');
    </c:if>
</script>
</body>
</html>
