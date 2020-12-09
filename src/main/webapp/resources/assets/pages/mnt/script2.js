'use strict';
$(document).ready(function () {
  //modal date picker
  $('#datetimepicker').datetimepicker({
    locale : 'ko',
    format: 'HH:mm:ss',
    defaultDate: new Date(),
    icons: {
      time: "icofont icofont-clock-time",
      date: "icofont icofont-ui-calendar",
      up: "icofont icofont-rounded-up",
      down: "icofont icofont-rounded-down",
      next: "icofont icofont-rounded-right",
      previous: "icofont icofont-rounded-left"
    }
  });
  $('#datepicker').daterangepicker({
    singleDatePicker: true,
    showDropdowns: true,
    locale: {
      format: 'YYYY-MM-DD',
      "customRangeLabel": "Custom",
      "daysOfWeek": [
          "일", "월", "화", "수", "목", "금", "토"
      ],
      "monthNames": [
        "1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"
      ],
    }
  });
  $('#datepicker2').daterangepicker({
	    singleDatePicker: true,
	    showDropdowns: true,
	    locale: {
	      format: 'YYYY-MM-DD',
	      "customRangeLabel": "Custom",
	      "daysOfWeek": [
	          "일", "월", "화", "수", "목", "금", "토"
	      ],
	      "monthNames": [
	        "1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"
	      ],
	    }
	  });
  $("#submit").on("click",function(){
    if($("#select1 option:checked").text() == "소속사명"){
      swal("error!", "소속사명을 선택해주세요.", "error");
    }
    else if($("#select2 option:checked").text() == "연예인명"){
      swal("error!", "연예인명을 선택해주세요.", "error");
    }
    else if($("#siteName").val() == ""){
      swal("error!", "사이트명을 입력해주세요.", "error");
    }
    else if($("#boardNum").val() == ""){
      swal("error!", "게시판 번호를 입력해주세요.", "error");
    }
    else if($("#title").val() == ""){
      swal("error!", "제목을 입력해주세요.", "error");
    }
    else if($("#content").val() == ""){
      swal("error!", "내용을 입력해주세요.", "error");
    }
    else if($("#content").val() == ""){
      swal("error!", "내용을 입력해주세요.", "error");
    }
    else{
      $("#frm").submit();
      $("#frmModalN").modal("hide");
      // swal("success!", "등록에 성공하였습니다.", "success");
      // swal("error!", "등록에 실패하였습니다.", "error");
    }
  });

  //이미지다운 확인메시지
  $(document).on("click",".alert-image",function(){
    swal({
          title: "이미지다운 하시겠습니까?",
          text: "현재 리스트 이미지가 다운됩니다.",
          type: "warning",
          showCancelButton: true,
          confirmButtonClass: "btn-danger",
          confirmButtonText: "YES",
          closeOnConfirm: false
        },
        function(){
          swal("Success!", "이미지다운 되었습니다.", "success");
          
          location = "http://49.247.5.169/classification/imageDownload?" + "searchType=" + decodeURI(window.location.href.split("&searchType=")[1]).split("&")[0]
	 	  + "&keyword=" + decodeURI(window.location.href.split("&keyword=")[1]).split("&")[0]
    	  + "&company=" + $("#selectCompany option:selected").val()
          + "&selectKey=" + $('#selectKeyword option:selected').val()
          + "&textType=" + $("#selectTextType option:selected").val()
  		  + "&startDate=" + makeDateFormat($("#fromDate").val(), 0)
  		  + "&endDate=" +  makeDateFormat($("#fromDate").val(), 1);
          
        });
  });
  
//이미지다운 확인메시지
  $(document).on("click",".alert-image2",function(){
    swal({
          title: "이미지다운 하시겠습니까?",
          text: "현재 리스트 이미지가 다운됩니다.",
          type: "warning",
          showCancelButton: true,
          confirmButtonClass: "btn-danger",
          confirmButtonText: "YES",
          closeOnConfirm: false
        },
        function(){
          swal("Success!", "이미지다운 되었습니다.", "success");
          
          location = "http://49.247.5.169/classification/imageDownload?" + "searchType=" + decodeURI(window.location.href.split("&searchType=")[1]).split("&")[0]
	 	  + "&keyword=" + decodeURI(window.location.href.split("&keyword=")[1]).split("&")[0]
    	  + "&company=" + "쇼박스"
          + "&selectKey=" + $('#selectKeyword option:selected').val()
          + "&textType=" + $("#selectTextType option:selected").val()
  		  + "&startDate=" + makeDateFormat($("#fromDate").val(), 0)
  		  + "&endDate=" +  makeDateFormat($("#fromDate").val(), 1);
          
        });
  });
  
  var domain = "";
  var idx = "";
  
//  //이미지 보기 클릭시 모달
//  $(document).on("click",".image",function(event){
//	  
//	  var tr = event.target.parentElement.parentElement.parentElement.children;
//	  
//	  domain = tr[2].innerHTML;
//	  idx = tr[0].value;
//	  
//	  var thumbName = tr[7].children[0].value;
//	  console.log(thumbName);
//	  
//	  
//	  var path = 'http://49.247.5.169/classification/show?name=' + thumbName;
//	  $("#thumbnail").attr("src", path);
//	  $('#imageModal').modal('show');
//	  
//  });
  //이미지업로드 클릭시
  $(document).on("click",".alert-upload",function(){

/*    var formObj = $("#imageForm");
    
    formObj.attr("action", "uploadFile");
	formObj.attr("method", "post");
    formObj.submit();
    */

	console.log("domain: " + domain);
	console.log("idx: " + idx);
	  
    console.log($("#imageIinput")[0].files[0]);
    uploadImage($("#imageIinput")[0].files[0], domain, idx);
    
    //이미지처리메시지 - 성공시
    
    $("#imageModal").modal("hide");
    
    
    swal("Success!", "이미지업로드가 되었습니다.", "success");
    
    //location.reload();
    
    //이미지처리메시지 - 실패시
    // swal("error!", "이미지업로드가 실패했습니다.", "error");
  });
  
  //이미지삭제 클릭시
  $(document).on("click",".alert-delete",function(){

	  console.log("domain: " + domain);
	  console.log("idx: " + idx);
	  
    $.ajax({
		url : '/deleteAjax',
		data : {domain : domain, idx : idx},
		dataType : 'json',
		method : 'POST'
	});
    
    swal("Success!", "이미지삭제가 되었습니다.", "success");
	
	$("#imageModal").modal("hide");
	
	//location.reload();
  });
});

//콘서트 등록 inserBtn 클릭시...
$(document).on("click",".insertMnt",function(){
	var mnt_m_id = $("#mnt_m_id").val();
	console.log("mnt_m_id: " + mnt_m_id);
	var mnt_c_id = $("#mnt_c_id").val();
	console.log("mnt_c_id" + mnt_c_id);
	var mnt_t_platform = $("#mnt_t_platform").val();
	console.log("mnt_t_platform: " + mnt_t_platform);
	var mnt_t_url = $("#mnt_t_url").val();
	console.log("mnt_t_url: " + mnt_t_url);
	var mnt_t_title = $("#mnt_t_title").val();
	console.log("mnt_t_title: " + mnt_t_title);
	var mnt_t_user = $("#mnt_t_user").val();
	console.log("mnt_t_user: " + mnt_t_user);
				
	uploadImage8($("#image")[0].files[0], $("#image2")[0].files[0], $("#image3")[0].files[0], mnt_m_id, mnt_c_id, mnt_t_platform, mnt_t_url, mnt_t_title, mnt_t_user);
    
	//이미지처리메시지 - 성공시
    
    $("#frmModal").modal("hide");
    
    
    swal("Success!", "등록 되었습니다.", "success");
    
    window.setTimeout("pageReload()", 2000);
	
	
	
    //이미지처리메시지 - 실패시
    // swal("error!", "이미지업로드가 실패했습니다.", "error");
    
}); // end insertBtn click...

//콘서트 수정 updateBtn 클릭시...
$(document).on("click",".updateMnt",function(){
	
	var mnt_idx2 = $("#mnt_idx2").val();
	console.log(mnt_idx2);
	var mnt_c_id2 = $("#mnt_c_id2").val();
	console.log(mnt_c_id2);
	var mnt_m_id2 = $("#mnt_m_id2").val();
	console.log(mnt_m_id2);
	var mnt_t_platform2 = $("#mnt_t_platform2").val();
	console.log(mnt_t_platform2);
	var mnt_t_url2 = $("#mnt_t_url2").val();
	console.log(mnt_t_url2);
	var mnt_t_title2 = $("#mnt_t_title2").val();
	console.log(mnt_t_title2);
	var mnt_t_user2 = $("#mnt_t_user2").val();
	console.log(mnt_t_user2);
	
	uploadImage9($("#image4")[0].files[0], $("#image5")[0].files[0], $("#image6")[0].files[0], mnt_c_id2, mnt_m_id2, mnt_t_platform2, mnt_t_url2, mnt_t_title2, mnt_t_user2, mnt_idx2);
	
	//이미지처리메시지 - 성공시
    
    $("#frmModalN").modal("hide");
    
    
    swal("Success!", "업데이트 되었습니다.", "success");
    
    window.setTimeout("pageReload()", 2000);
    //이미지처리메시지 - 실패시
    // swal("error!", "이미지업로드가 실패했습니다.", "error");
    
}); // end insertBtn click...


$(document).on("click",".updateState2",function(){
	
	var idx4 = $("#mnt_idx4").val()
	console.log("idx : "+idx4);
	
	var today = new Date();
	var year = today.getFullYear(); // 년도
	console.log(year);
	var month = today.getMonth() + 1;  // 월
	console.log(month);
	var date = today.getDate();  // 날짜
	console.log(date);
	var hours = today.getHours(); // 시
	console.log(hours);
	var minutes = today.getMinutes();  // 분
	if(minutes <= 9){
		minutes = "0"+minutes
	}
	console.log(minutes);
	var seconds = today.getSeconds(); // 초
	if(seconds <= 9){
		seconds = "0"+seconds
	}
	
	var text = year+"-"+month+"-"+date+" "+hours+":"+minutes+":"+seconds;
	console.log("text : "+text);
	
	var state = $("input[name='mnt_lc_check']:checked").val();
	console.log(state);
	
	uploadImage10($("#image10")[0].files[0], $("#image11")[0].files[0], $("#image12")[0].files[0]
	, idx4, text, state);
	
	//이미지처리메시지 - 성공시
    
    $("#frmModal5").modal("hide");
    
    
    swal("Success!", "업데이트 되었습니다.", "success");
    
    window.setTimeout("pageReload()", 2000);
    //이미지처리메시지 - 실패시
    // swal("error!", "이미지업로드가 실패했습니다.", "error");
    
}); // end insertBtn click...

$(document).on("click",".insertState",function(){
	
	var idx = $("#mnt_idx3").val()
	console.log("idx : "+idx);
	
	var mnt_t_title = $("#mnt_t_title4").val()
	
	uploadImage11($("#image13")[0].files[0], idx);
	
	//이미지처리메시지 - 성공시
    
    $("#frmModal5").modal("hide");
    
    
    swal("Success!", "업데이트 되었습니다.", "success");
    
    window.setTimeout("pageReload()", 2000);
    //이미지처리메시지 - 실패시
    // swal("error!", "이미지업로드가 실패했습니다.", "error");
    
}); // end insertBtn click...


function pageReload() {
	location.reload();
}

function uploadImage8(file, file2, file3, mnt_m_id, mnt_c_id, mnt_t_platform, mnt_t_url, mnt_t_title, mnt_t_user){
	var formData = new FormData();
	
	formData.append("file", file);
	formData.append("file2", file2);
	formData.append("file3", file3);
	formData.append("mnt_m_id", mnt_m_id);
	formData.append("mnt_c_id", mnt_c_id);
	formData.append("mnt_t_platform", mnt_t_platform);
	formData.append("mnt_t_url", mnt_t_url);
	formData.append("mnt_t_title", mnt_t_title);
	formData.append("mnt_t_user", mnt_t_user);

	console.log(file, file2, file3, mnt_m_id, mnt_c_id, mnt_t_platform, mnt_t_url, mnt_t_title, mnt_t_user);
	
	
	$.ajax({
		url : '/insertMnt',
		data : formData,
		dataType : 'text',
		processData : false,
		contentType : false,
		method : 'POST',
		success : function(data) {
			console.log(data);

		}
	});
}
	
	function uploadImage9(file4, file5, file6, mnt_c_id2, mnt_m_id2, 
			mnt_t_platform2, mnt_t_url2, mnt_t_title2, mnt_t_user2, mnt_idx2){
		
		var formData = new FormData();
		
		formData.append("file4", file4);
		formData.append("file5", file5);
		formData.append("file6", file6);
		formData.append("mnt_c_id2", mnt_c_id2);
		formData.append("mnt_m_id2", mnt_m_id2);
		formData.append("mnt_t_platform2", mnt_t_platform2);
		formData.append("mnt_t_url2", mnt_t_url2);
		formData.append("mnt_t_title2", mnt_t_title2);
		formData.append("mnt_t_user2", mnt_t_user2);
		formData.append("mnt_idx2", mnt_idx2);

		$.ajax({
			url : '/updateMnt',
			data : formData,
			dataType : 'text',
			processData : false,
			contentType : false,
			method : 'POST',
			success : function(data) {
				console.log(data);

			}
		});
	}
	function uploadImage10(file7, file8, file9, idx4, text, state){
		
		var formData = new FormData();
		
		formData.append("file7", file7);
		formData.append("file8", file8);
		formData.append("file9", file9);
		formData.append("idx4", idx4);
		formData.append("text", text);
		formData.append("state", state);

		$.ajax({
			url : '/updateState',
			data : formData,
			dataType : 'text',
			processData : false,
			contentType : false,
			method : 'POST',
			success : function(data) {
				console.log(data);

			}
		});
	}
function uploadImage11(file10, idx){
		
		var formData = new FormData();
		
		formData.append("file10", file10);
		formData.append("idx", idx);

		$.ajax({
			url : '/updateMnt2',
			data : formData,
			dataType : 'text',
			processData : false,
			contentType : false,
			method : 'POST',
			success : function(data) {
				console.log(data);

			}
		});
	}