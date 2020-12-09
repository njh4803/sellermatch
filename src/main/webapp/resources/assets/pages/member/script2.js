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
$(document).on("click",".insertMem",function(){
	
	var m_id = $("#m_id").val();
	console.log(m_id);
	var m_pw = $("#m_pw").val();
	console.log(m_pw);
	var m_class = $("input[name='type']:checked").val();
	console.log(m_class);
	var m_name = $("#m_name").val();
	console.log(m_name);
	var m_state = $("input[name='m_state']:checked").val();
	console.log(m_state);
				
	console.log($("#image")[0].files[0]);
	uploadImage6($("#image")[0].files[0], m_id, m_pw, m_class, m_name, m_state);
    
	//이미지처리메시지 - 성공시
    
    $("#frmModal").modal("hide");
    
    
    swal("Success!", "등록 되었습니다.", "success");
    
    window.setTimeout("pageReload()", 2000);
    //이미지처리메시지 - 실패시
    // swal("error!", "이미지업로드가 실패했습니다.", "error");
    
}); // end insertBtn click...

//콘서트 수정 updateBtn 클릭시...
$(document).on("click",".updateMem",function(){
	
	var m_idx = $("#m_idx2").val();
	console.log(m_idx);
	var m_id = $("#m_id2").val();
	console.log(m_id);
	var m_pw = $("#m_pw2").val();
	console.log(m_pw);
	var m_class = $("input[name='type2']:checked").val();
	console.log(m_class);
	var m_name = $("#m_name2").val();
	console.log(m_name);
	var m_state = $("input[name='m_state2']:checked").val();
	console.log(m_state);
	
	console.log($("#image2")[0].files[0]);
	uploadImage7($("#image2")[0].files[0], m_id, m_pw, m_class, m_name, m_state, m_idx);
	
	//이미지처리메시지 - 성공시
    
    $("#frmModalN").modal("hide");
    
    
    swal("Success!", "업데이트 되었습니다.", "success");
    
    window.setTimeout("pageReload()", 2000);
    //이미지처리메시지 - 실패시
    // swal("error!", "이미지업로드가 실패했습니다.", "error");
    
}); // end insertBtn click...

function pageReload() {
	location.reload();
}

function uploadImage6(file, m_id, m_pw, m_class, m_name, m_state){
	var formData = new FormData();
		
	formData.append("file", file);
	formData.append("m_id", m_id);
	formData.append("m_pw", m_pw);
	formData.append("m_class", m_class);
	formData.append("m_name", m_name);
	formData.append("m_state", m_state);

	console.log(file, m_id, m_pw, m_class, m_name, m_state);
	
	
	$.ajax({
		url : '/insertMem',
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
	
	function uploadImage7(file, m_id, m_pw, m_class, m_name, m_state, m_idx){
		
		var formData = new FormData();
			
		formData.append("file", file);
		formData.append("m_id", m_id);
		formData.append("m_pw", m_pw);
		formData.append("m_class", m_class);
		formData.append("m_name", m_name);
		formData.append("m_state", m_state);
		formData.append("m_idx", m_idx);

		console.log(file, m_id, m_pw, m_class, m_name, m_state, m_idx);
		
		
		$.ajax({
			url : '/updateMem',
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