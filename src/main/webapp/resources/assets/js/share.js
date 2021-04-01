
var url_default_ks = "https://story.kakao.com/share?url=";
var url_default_fb = "https://www.facebook.com/sharer/sharer.php?u=";
var url_default_tw_txt = "https://twitter.com/intent/tweet?text="; 
var url_default_tw_url = "&url="; 
var url_default_naver = "http://share.naver.com/web/shareView?url="; 
var url_default_line = "https://social-plugins.line.me/lineit/share?url=";
var url_default_band = "https://band.us/plugin/share?body=";
var url_this_page = location.href;
var title_this_page = document.title; 
var url_combine_ks = url_default_ks + url_this_page; 
var url_combine_fb = url_default_fb + url_this_page; 
var url_combine_tw = url_default_tw_txt + document.title + url_default_tw_url + url_this_page; 
var url_combine_naver = url_default_naver + encodeURI(url_this_page) + "&title=" + encodeURI(title_this_page); 
var url_combine_line = url_default_line + encodeURI(url_this_page);
var url_combine_band = url_default_band + encodeURI(title_this_page) + "\n" + encodeURI(url_this_page) + "&route=" + encodeURI(url_this_page);

$(function(){
	var text = $("#sns-link-tmpl").html();
	$(".shareBtn").on("click", function(){
			swal({
				customClass: 'swalSNSshare',
                title: '친구들과 공유하기 <div id="snsShareCloseBtn"><a href="" return false;"><img src="'+ROOT_URL+'/assets/img/close.png"></a></div>',
                html: text,
                showConfirmButton: false,
/*                 input:'text',
                inputValue: url_this_page, */
                allowOutsideClick: false
            });
			$("#swal-input1").val(url_this_page);
			$(".SNScopyBtn").on("click",function(){
				$("#swal-input1").select();
                document.execCommand('copy');
                swal(
                	'복사되었습니다.',
                	'친구들에게 공유해 보세요!'
                );
			});
	});
});
    
Kakao.init('e3526049c8f7ae79005d88c0e163cad7');   //발급받은 Javascript 키를 입력합니다.
function sendLinkKakao() {
  Kakao.Link.sendScrap({
	requestUrl:url_this_page,
	templateId: 50199,
    templateArgs: {
      title:
    	  url_this_page,
      description:
        '셀러매치는 상품공급자와 판매대행자 직거래 사이트입니다.',
    },
    installTalk : true
  });
};

function sendLinkKakaoStory() {
	Kakao.Story.share({
      url: url_this_page,
      text: '셀러매치는 상품공급자와 판매대행자 직거래 사이트입니다.',
    });
 };