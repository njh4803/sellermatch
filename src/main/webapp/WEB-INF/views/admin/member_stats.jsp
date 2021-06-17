<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="inc/header.jsp"%> 
<!-- bootstrap css -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/template/assets/pages/mnt/css/style.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/template/assets/pages/division/css/style.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/datatables/dataTables.bootstrap.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/datatables/yadcf/jquery.dataTables.yadcf.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/datatables/tabletools/dataTables.tableTools.css" />
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.24/css/jquery.dataTables.min.css">

<style>
.table-center th{
	text-align: center;
}

/* 필수항목 표시를 위한 `*` */
.identify {
	font-size: 14px;
	color: #f00;
}

/* 에러 메시지에 대한 글자 색상 */
.error {
	color: red;
}

/* 에러가 발생한 <input>태그 */
input.error {
	
}
/* 에러메시지가 표시중인 <label> 태그 */
label.error {
	font-size: 10px;
	color: red;
	display: inline-block;
	padding: 5px 10px;
	margin: 0;
}
.jFiler-input-dragDrop {
    width: 100%;
    background-color: #fafafa;
}
.ck-blurred.ck.ck-content.ck-editor__editable.ck-rounded-corners.ck-editor__editable_inline {
	height: 300px;
}
.modal-header {
	display: block;
}
.main-body .page-wrapper .page-header-title h6 {
    display: inline-block;
    margin-bottom: 0;
    font-weight: 600;
    color: #4a6076;
    font-size: 14px;
}
.btn-group-toggle {
	display: -webkit-inline-box;
}
</style>
<%@ include file="inc/navigation.jsp"%>
    <!-- Pre-loader start -->
    <div class="theme-loader">
        <div class="ball-scale">
            <div></div>
        </div>
    </div>
    <!-- Pre-loader end -->
    <div id="pcoded" class="pcoded">
        <div class="pcoded-overlay-box"></div>
        <div class="pcoded-container navbar-wrapper">
                    <div class="pcoded-content">
                        <div class="pcoded-inner-content">
                            <!-- Main-body start -->
                            <div class="main-body">
                                <div class="page-wrapper">
                                    <!-- Page-header start -->
                                    <div style="margin-bottom:20px;">
                                        <div class="page-header-title" style="width: 100%;">
                                        	<div class="col-sm-10" style="display: inline-block;">
                                        		<h4>회원 통계 관리</h4>
                                        	</div>
                                        </div>
                                    </div>
                                    <!-- Page-header end -->
									<div class="page-body">
										<div class="row">
                                            <div class="col-sm-12">
                                                <!-- Zero config.table start -->
                                                <div class="card">
                                                    <div class="card-header">
                                                    	<div class="panel-body">
															<table class="table table-striped table-bordered" id="BoardDataListTable">
																<thead>
																	<tr class="replace-inputs">
																		<th class="text-center" style="vertical-align:middle;">일자</th>
																		<th class="text-center" style="vertical-align:middle;">회원가입</th>
																		<th class="text-center" style="vertical-align:middle;">공급자 가입</th>
																		<th class="text-center" style="vertical-align:middle;">판매자 가입</th>
																	</tr>
																</thead>
															</table>
														</div>
                                                    </div>
                                                </div>
                                           </div>
                                        </div>
									</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
<script type="text/javascript">
var BoardDataListTable;
$(window).ready(function(){
	BoardDataListTable = $("#BoardDataListTable").dataTable({
			'stateSave':false,
			'autoWidth':false,
			'order': [[ 0, "desc" ]],
			'pageLength': 30,
	        dom: 'Bfrtip',
			'ajax': {
				'type' : 'POST',
				'url' : '/admin/memberStats',
				'dataType' : "JSON"
			},
	        'columns': [
	            {
		            'data':'memDate',
		            'className':'text-center hidden-xs hidden-sm coldata applicationIndex'
			    },
	            {
		            'data': 'totalCnt',
		            'className':'text-center coldata' 
		        },
	            { 
		            'data': 'proCnt',
	            	'className':'text-center coldata'
		        },
	            { 
		            'data': 'selCnt',
	            	'className':'text-center coldata'
		        },
	        ],
	        'language': {
				'zeroRecords': '데이터가 없습니다.',
				'paginate': {
			   		'previous': '&lt;',
			   		'next': '&gt;'
			    }
			},
		})
});
</script>
<%@ include file="inc/footer.jsp"%>

<footer class="main-footer sticky  footer-type-2">
	<div class="footer-inner">
		<!-- Add your copyright text here -->
		<div class="footer-text">
		</div>
		<!-- Go to Top Link, just add rel="go-top" to any link to add this functionality -->
		<div class="go-up">
			<a href="#" rel="go-top">
				<i class="fa-angle-up"></i>
			</a>
		</div>
	</div>
</footer>