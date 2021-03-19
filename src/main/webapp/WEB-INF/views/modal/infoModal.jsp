<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<style>
.modal-header {
	display: block;
}   
#infoModal .modal-dialog .modal-content .modal-body {
    position: relative;
    padding: 40px 50px 61.5px 50px;
    text-align: center;
}
#infoModal .modal-dialog .modal-content .modal-body .logoImg{
  display: inline-block;
  width: 197px;
  height: 40px;
  margin: 0 10px 0 0;
  object-fit: contain;
}
#infoModal .modal-dialog .modal-content .modal-body .title{
  display: inline-block;
  margin: 6.5px 0 6.5px 10px;
  font-family: SegoeUI;
  font-size: 20px;
  font-weight: bold;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.05;
  letter-spacing: normal;
  text-align: center;
  color: #000000;
  vertical-align: middle;
}
#infoModal .modal-dialog .modal-content .modal-body .topBox{
	margin-bottom: 22.5px;
}
#infoModal .modal-dialog .modal-content .modal-body .contents{
  font-family: SegoeUI;
  font-size: 12px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.75;
  letter-spacing: normal;
  text-align: left;
  color: #000000;
}
</style>

  <!-- Modal -->
<div class="modal fade" id="infoModal" role="dialog">
	<div class="modal-dialog modal-xl" style="width: 1200px;">
		<div class="modal-content">
			<div class="modal-body">
			<div class="topBox">
				<img class="logoImg" src="${pageContext.request.contextPath}/assets/img/sellermatch_logo.png">
				<div class="title">셀러매치 개인정보처리방침</div>
			</div>
				<div class="contents">
<br>위셀글로벌주식회사('www.sellermatch.co.kr'이하 '셀러매치')는개인정보보호법에따라이용자의개인정보보호및권익을보호하고개인정보와관련한이용자의고충을원활하게처리할수있도록다음과같은처리방침을두고있습니다. 셀러매치는개인정보처리방침을개정하는경우웹사이트공지사항(또는개별공지)을통하여공지할것입니다. 본방침은 2021년4월 1일부터시행됩니다.
<br>
<br>1.개인정보의처리목적
<br>위셀글로벌주식회사는개인정보를다음의목적을위해처리합니다. 처리한개인정보는다음의목적이외의용도로는사용되지않으며이용목적이변경될시에는사전동의를구할예정입니다. 이용자는회사의개인정보수집에대해, 동의하지않거나개인정보를기재하지않음으로써이를거부할수있습니다. 다만, 이경우이용자에게제공되는서비스가제한될수있습니다.
<br>가. 홈페이지회원가입및관리
<br>회원가입의사확인, 회원제서비스제공에따른본인식별•인증, 연령확인, 회원자격유지•관리, 제한적본인확인제시행에따른본인확인, 서비스부정이용방지, 분쟁조정을위한기록보존등을목적으로개인정보를처리합니다.
<br>나. 회원불만사항처리
<br>회원의신원확인, 민원등고충사항확인, 사실조사를위한연락•통지, 처리결과통보등을목적으로개인정보를처리합니다.
<br>다. 재화또는서비스제공
<br>서비스제공, 청구서발송, 콘텐츠제공, 본인인증, 연령인증, 요금결제•정산등을목적으로개인정보를처리합니다.
<br>라. 서비스개발
<br>신규서비스(제품) 개발및특화, 이벤트등광고성정보개선, 만족도조사, 인구통계학적특성에따른서비스제공및광고게재, 접속빈도파악또는이용자의서비스이용에대한통계추출
<br>마. 마케팅및광고에의활용
<br>신규서비스(제품) 개발및맞춤서비스제공, 이벤트및광고성정보제공및참여기회제공 ,인구통계학적특성에따른서비스제공및광고게재 , 서비스의유효성확인, 접속빈도파악또는회원의서비스이용에대한통계등을목적으로개인정보를처리합니다.
<br>바. 서비스부정이용방지
<br>회원재가입시무료이용재사용등서비스부정이용방지목적으로개인정보를처리합니다.
<br>
<br>2.개인정보파일현황
<br>개인정보파일명 :셀러매치개인정보
<br>개인정보항목 : 이메일, 휴대전화번호, 로그인ID, 비밀번호, 성별, 생년월일, 이름, 결제기록, 서비스이용기록, 방문기록, 불량이용기록, 접속로그, 디바이스정보, 접속브라우저정보, 쿠키, 접속 IP 정보등
<br>수집방법 : 홈페이지, 전화/팩스, 생성정보수집툴을통한수집
<br>보유근거 : 홈페이지회원정보수집동의관련기록및맞춤형마케팅등제공
<br>보유기간 : 5년
<br>관련법령 : 신용정보의수집/처리및이용등에관한기록 : 3년, 대금결제및재화등의공급에관한기록 : 5년
<br>
<br>3.개인정보의처리및보유기간
<br>①<위셀글로벌주식회사>('셀러매치')는법령에따른개인정보보유•이용기간또는정보주체로부터개인정보를수집시에동의받은개인정보보유, 이용기간내에서개인정보를처리, 보유합니다.
<br>②서비스회원가입및관리, 서비스제공, 회원불만사항처리, 마케팅및광고에의활용과관련한개인정보는원칙적으로회원탈퇴(서비스이용계약해지) 시까지위이용목적을위하여보유∙이용됩니다.
<br>③각각의개인정보처리및보유기간은다음과같습니다.
<br><마케팅및광고에의활용>
<br><마케팅및광고에의활용>와관련한개인정보는수집•이용에관한동의일로부터<3년>까지위이용목적을위하여보유•이용됩니다.
<br>보유근거 :홈페이지회원정보수집및이용에관한기록
<br>관련법령 :
<br>1) 신용정보의수집/처리및이용등에관한기록 : 3년
<br>2) 대금결제및재화등의공급에관한기록 : 5년
<br>3) 계약또는청약철회등에관한기록 : 5년
<br>④본조제1, 2, 3항에도불구하고다음의사유에해당하는경우에는해당사유가종료되거나법령에서정한기간까지관련개인정보가보유, 이용될수있습니다.
<br>1) 관계법령위반에따른수사•조사등이진행중인경우에는해당수사•조사종료시까지
<br>2) 서비스이용에따른채권•채무관계잔존시에는해당채권, 채무관계정산시까지
<br>3) 재가입후무료이용재사용등서비스부정이용방지목적을위한휴대전화번호등개인정보: 회원탈퇴일로부터 1년
<br>4) 전자상거래등에서의소비자보호에관한법률에따른표시•광고, 계약내용및이행등거래에관한기록 - 표시•광고에관한기록: 6개월 - 소비자불만또는분쟁처리, 신용정보의수집∙처리및이용등에관한기록: 3년 - 계약또는청약철회, 대금결제, 재화등의공급기록: 5년
<br>5) 전자금융거래법에따른전자금융거래에관한기록: 5년
<br>6) 통신비밀보호법에따른거래에관한기록 - 가입자의전기통신일시, 개시•종료시간, 상대방가입자번호, 사용도수, 발신기지국위치추적자료에관한기록: 1년 - 컴퓨터통신, 인터넷로그기록자료, 접속지추적자료 : 3개월
<br>
<br>4.개인정보의제3자제공
<br>회사는회원의동의가없는경우원칙적으로회원의개인정보를제3자에게제공하지않습니다. 다만, 법령의규정에의해국가기관이법령에정해진절차와방법에따라그제공을요청하는경우및아래의경우에는예외로합니다.
<br>-회원이사전에제3자제공에동의한경우
<br>
<br>5.정보주체와법정대리인의권리•의무및그행사방법
<br>이용자는개인정보주체로써다음과같은권리를행사할수있습니다.
<br>①정보주체는위셀글로벌주식회사에대해언제든지개인정보열람, 정정, 삭제, 처리정지요구등의권리를행사할수있습니다.
<br>②제1항에따른권리행사는위셀글로벌주식회사에대해개인정보보호법시행령제41조제1항에따라서면, 전자우편, 모사전송(FAX) 등을통하여하실수있으며위셀글로벌주식회사 (는) 이에대해지체없이조치하겠습니다.
<br>③제1항에따른권리행사는정보주체의법정대리인이나위임을받은자등대리인을통하여하실수있습니다. 이경우개인정보보호법시행규칙별지제11호서식에따른위임장을제출하셔야합니다.
<br>④개인정보열람및처리정지요구는개인정보보호법제35조제5항, 제37조제2항에의하여정보주체의권리가제한될수있습니다.
<br>⑤개인정보의정정및삭제요구는다른법령에서그개인정보가수집대상으로명시되어있는경우에는그삭제를요구할수없습니다.
<br>⑥위셀글로벌주식회사는정보주체권리에따른열람의요구, 정정•삭제의요구, 처리정지의요구시열람등요구를한자가본인이거나정당한대리인인지를확인합니다.
<br>
<br>6.개인정보의파기
<br><위셀글로벌주식회사>('셀러매치')는원칙적으로개인정보처리목적이달성된경우에는지체없이해당개인정보를파기합니다. 파기의절차, 기한및방법은다음과같습니다.
<br>-파기절차 : 이용자가입력한정보는목적달성후별도의 DB에옮겨져(종이의경우별도의서류) 내부방침및기타관련법령에따라일정기간저장된후혹은즉시파기됩니다. 이때, DB로옮겨진개인정보는법률에의한경우가아니고서는다른목적으로이용되지않습니다.
<br>-파기기한 : 이용자의개인정보는개인정보의보유기간이경과된경우에는보유기간의종료일로부터 5일이내에, 개인정보의처리목적달성, 해당서비스의폐지, 사업의종료등그개인정보가불필요하게되었을때에는개인정보의처리가불필요한것으로인정되는날로부터 5일이내에그개인정보를파기합니다.
<br>-파기방법 : 전자적파일형태의정보는기록을재생할수없는기술적방법을사용합니다. 종이에출력된개인정보는분쇄기로분쇄하거나소각을통하여파기합니다.
<br>
<br>7.개인정보자동수집장치의설치•운영및거부에관한사항
<br>①위셀글로벌주식회사는개별적인맞춤서비스를제공하기위해이용정보를저장하고수시로불러오는 ‘쿠키(cookie)’를사용합니다.
<br>②쿠키는웹사이트를운영하는데이용되는서버(http)가이용자의컴퓨터브라우저에게보내는소량의정보이며이용자들의 PC 컴퓨터내의하드디스크에저장되기도합니다.
<br>가. 쿠키의사용목적
<br>이용자가방문한각서비스와웹사이트들에대한방문및이용형태, 인기검색어, 보안접속여부등을파악하여이용자에게최적화된서비스를제공하기위해사용됩니다.
<br>나. 쿠키의설치•운영및거부
<br>설비를이용함에있어회원은쿠키설치에대한선택권을가지고있습니다. 회원은웹브라우저에서옵션을설정함으로써모든쿠키를허용하거나, 쿠키가저장될때마다확인을거치거나, 모든쿠키의저장을거부할수있습니다. 다만회원이쿠키를거부할경우, 서비스제공에어려움이있을수있습니다.
<br>
<br>8.개인정보보호책임자
<br>①위셀글로벌주식회사는개인정보처리에관한업무를총괄해서책임지고, 개인정보처리와관련한정보주체의불만처리및피해구제등을위하여아래와같이개인정보보호책임자를지정하고있습니다.
<br>▶개인정보관리책임자
<br>성명: 안준수
<br>연락처: help@sellermatch.co.kr
<br>▶개인정보보호책임자
<br>성명: 안준수
<br>연락처: help@sellermatch.co.kr
<br>②정보주체께서는위셀글로벌주식회사의서비스(또는사업)을이용하시면서발생한모든개인정보보호관련문의, 불만처리, 피해구제등에관한사항을개인정보보호책임자에게문의하실수있습니다. 위셀글로벌주식회사는정보주체의문의에대해지체없이답변및처리할예정입니다.
<br>
<br>9.개인정보처리방침의고지또는통지방법
<br>①현행개인정보처리방침에대한내용추가, 삭제및수정이있을시에는서비스웹페이지를통해변경이유및그내용을고지합니다.
<br>②회사는회원이동의한범위를넘어회원의개인정보를이용하거나제3자에게취급위탁하기위해회원의추가적인동의를얻고자하는때에는미리회원에게개별적으로서면, 전자우편, 전화등으로해당사항을고지하거나웹페이지에이를게시합니다.
<br>③회사는개인정보의수집, 보관, 처리, 이용, 제공, 관리, 파기등을제3자에게위탁하는경우에는서비스약관, 개인정보처리방침등을통하여그사실을회원에게고지합니다.
<br>
<br>10.개인정보의안전성확보조치
<br><위셀글로벌주식회사>'셀러매치'는개인정보보호법제29조에따라다음과같이안전성확보에필요한기술적/관리적및물리적조치를하고있습니다.
<br>①정기적인자체감사실시
<br>개인정보취급관련안정성확보를위해정기적(분기 1회)으로자체감사를실시하고있습니다.
<br>②개인정보취급직원의최소화및교육
<br>개인정보를취급하는직원을지정하고담당자에한정시켜최소화하여개인정보를관리하는대책을시행하고있습니다.
<br>③내부관리계획의수립및시행
<br>개인정보의안전한처리를위하여내부관리계획을수립하고시행하고있습니다.
<br>④개인정보의암호화
<br>이용자의개인정보는비밀번호는암호화되어저장및관리되고있어, 본인만이알수있으며중요한데이터는파일및전송데이터를암호화하거나파일잠금기능을사용하는등의별도보안기능을사용하고있습니다.
               	</div>
			</div>
		</div>
	</div>
</div>