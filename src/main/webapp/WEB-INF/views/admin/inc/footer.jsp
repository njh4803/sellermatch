<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<script>
    const ROOT_URL = "${pageContext.request.contextPath}";
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Required Jqurey -->
<script type="text/javascript" src="${pageContext.request.contextPath}/template/bower_components/jquery/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/template/bower_components/jquery-ui/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/template/bower_components/popper.js/js/popper.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/template/bower_components/bootstrap/js/bootstrap.min.js"></script>
<!-- jquery slimscroll js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/template/bower_components/jquery-slimscroll/js/jquery.slimscroll.js"></script>
<!-- modernizr js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/template/bower_components/modernizr/js/modernizr.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/template/bower_components/modernizr/js/css-scrollbars.js"></script>
<!-- classie js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/template/bower_components/classie/js/classie.js"></script>
<!-- Rickshow Chart js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/template/bower_components/d3/js/d3.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/template/bower_components/rickshaw/js/rickshaw.js"></script>
<!-- Morris Chart js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/template/bower_components/raphael/js/raphael.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/template/bower_components/morris.js/js/morris.js"></script>
<!-- Horizontal-Timeline js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/template/assets/pages/dashboard/horizontal-timeline/js/main.js"></script>
<!-- amchart js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/template/assets/pages/dashboard/amchart/js/amcharts.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/template/assets/pages/dashboard/amchart/js/serial.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/template/assets/pages/dashboard/amchart/js/light.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/template/assets/pages/dashboard/amchart/js/custom-amchart.js"></script>
<!-- jquery file upload js -->
<script src="${pageContext.request.contextPath}/template/assets/pages/jquery.filer/js/jquery.filer.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/template/assets/pages/filer/custom-filer.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/template/assets/pages/filer/jquery.fileuploads.init.js" type="text/javascript"></script>
<!-- i18next.min.js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/template/bower_components/i18next/js/i18next.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/template/bower_components/i18next-xhr-backend/js/i18nextXHRBackend.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/template/bower_components/i18next-browser-languagedetector/js/i18nextBrowserLanguageDetector.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/template/bower_components/jquery-i18next/js/jquery-i18next.min.js"></script>
<!-- Custom js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/template/assets/pages/dashboard/custom-dashboard.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/template/assets/js/script.js"></script>

<!-- pcmenu js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/template/assets/js/pcoded.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/template/assets/js/demo-12.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/template/assets/js/jquery.mCustomScrollbar.concat.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/template/assets/js/jquery.mousewheel.min.js"></script>

<!-- AjaxHelper -->
<script src="${pageContext.request.contextPath}/plugins/ajax/ajax_helper.js"></script>

<!-- ajaxform -->
<script src="${pageContext.request.contextPath}/plugins/ajax-form/jquery.form.min.js"></script>

<!-- handlebars js -->
<script src="${pageContext.request.contextPath}/plugins/handlebars/handlebars-v4.0.11.js"></script>

<!-- validate js -->
<script src="${pageContext.request.contextPath}/plugins/validate/jquery.validate.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/validate/additional-methods.min.js"></script>

<!-- sweetalert js -->
<script src="${pageContext.request.contextPath}/plugins/sweetalert/sweetalert2.all.min.js"></script>

<!-- bootstrap js -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<%-- <script type="text/javascript" src="${pageContext.request.contextPath}/plugins/datatables/js/jquery.dataTables.min.js"></script> --%>
<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/datatables/yadcf/jquery.dataTables.yadcf.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/template/assets/js/jquery-ui.custom.min.js"></script>
<%-- <script type="text/javascript" src="${pageContext.request.contextPath}/plugins/datatables/js/dataTables.buttons.min.js"></script> --%>
<!-- <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script> -->
<script type="text/javascript" src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/buttons/1.7.1/js/dataTables.buttons.min.js"></script>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>

<script type="text/javascript" src="https://cdn.datatables.net/buttons/1.7.1/js/buttons.html5.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/buttons/1.7.1/js/buttons.print.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/fixedcolumns/3.2.6/js/dataTables.fixedColumns.min.js"></script>



</body>

</html>
