<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Mainly scripts -->
<script src="resources/js/lib/jquery-2.1.1.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="resources/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<!-- Flot -->
<script src="resources/js/plugins/flot/jquery.flot.js"></script>
<script src="resources/js/plugins/flot/jquery.flot.tooltip.min.js"></script>
<script src="resources/js/plugins/flot/jquery.flot.spline.js"></script>
<script src="resources/js/plugins/flot/jquery.flot.resize.js"></script>
<script src="resources/js/plugins/flot/jquery.flot.pie.js"></script>

<!-- Peity -->
<script src="resources/js/plugins/peity/jquery.peity.min.js"></script>
<script src="resources/js/demo/peity-demo.js"></script>

<!-- Custom and plugin javascript -->
<script src="resources/js/inspinia.js"></script>
<script src="resources/js/plugins/pace/pace.min.js"></script>

<!-- jQuery UI -->
<script src="resources/js/plugins/jquery-ui/jquery-ui.min.js"></script>

<!-- GITTER -->
<script src="resources/js/plugins/gritter/jquery.gritter.min.js"></script>

<!-- Sparkline -->
<script src="resources/js/plugins/sparkline/jquery.sparkline.min.js"></script>

<!-- Sparkline demo data  -->
<script src="resources/js/demo/sparkline-demo.js"></script>

<!-- ChartJS-->
<script src="resources/js/plugins/chartJs/Chart.min.js"></script>

<!-- Toastr -->
<script src="resources/js/plugins/toastr/toastr.min.js"></script>
<link href="resources/css/bootstrap.min.inspinia.css" rel="stylesheet">
<link href="resources/css/font-awesome.css" rel="stylesheet">

<!-- Toastr style -->
<link href="resources/css/toastr.min.css" rel="stylesheet">

<!-- Gritter -->
<link href="resources/css/jquery.gritter.css" rel="stylesheet">

<link href="resources/css/animate.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>사원 상세 조회</title>
</head>
<body>
	<!-- 전체 페이지 레이아웃 모든 include 또는 content 는 이 안에 들어가야함 -->
	<div id="wrapper">

		<!-- 인클루드되는 페이지의 css bootstrap jquery 링크는 삭제 -->
		<%
			pageContext.include("inc/navi.jsp");
		%>
		<!-- 인클루드되는 페이지의 css bootstrap jquery 링크는 삭제 -->

		<!-- 네비옆 회색 메인 컨텐츠 부분 -->
		<div id="page-wrapper" class="gray-bg">
			<!-- 네비 접었다 폈다 하기 -->
			<div class="row border-bottom">
				<nav class="navbar navbar-static-top" role="navigation"
					style="margin-bottom: 0">
				<div class="navbar-header">
					<a class="navbar-minimalize minimalize-styl-2 btn btn-primary "
						href="#"><i class="fa fa-bars"></i> </a>
				</div>
				</nav>
			</div>
			<!-- 네비 접었다 폈다 하기 -->
			<!-- 페이지 헤더? -->
			<div class="row wrapper border-bottom white-bg page-heading">
				<div class="col-lg-10">
				</div>
				<div class="col-lg-2"></div>
			</div>
			<!-- 페이지 헤더? -->
			<div class="wrapper wrapper-content animated fadeInRight">
				<div class="row">
					<div class="col-lg-12">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<table class="table">

									<tbody>

										<tr>
											<th width="80">사원번호</th>
											<th width="270">이름</th>
											<th width="100">직종</th>
											<th width="200">담당자번호</th>
											<th width="280">입사일</th>
											<th width="80">급여</th>
											<th width="80">수당</th>
											<th width="80">부서번호</th>

										</tr>
										<tr>
											<td>${b.empno}</td>
											<td>${b.ename}</td>
											<td>${b.job}</td>
											<td>${b.mgr}</td>
											<td><fmt:formatDate value="${b.hiredate}"
													pattern="yyyy-MM-dd" /></td>
											<td>${b.sal}</td>
											<td>${b.comm}</td>
											<td>${b.deptno}</td>
										</tr>
										<tr>
											<td colspan="8" align="right"><i class="fa fa-scissors"><a
													href="update.htm?empno=${b.empno}">수정</a></i> <i
												class="fa fa-trash-o"><a
													href="delete.htm?empno=${b.empno}">삭제</a></i>
											<!-- <input type="button" value="답변" onclick="board_reply()"/> -->
											</td>
										</tr>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 채팅 인클루드 자리 -->
		<%
			pageContext.include("inc/chat.jsp");
		%>
		
	</div>

	<!-- Mainly scripts -->
	<script src="js/jquery-2.1.1.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
	<script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

	<!-- Peity -->
	<script src="js/plugins/peity/jquery.peity.min.js"></script>

	<!-- Custom and plugin javascript -->
	<script src="js/inspinia.js"></script>
	<script src="js/plugins/pace/pace.min.js"></script>

	<!-- iCheck -->
	<script src="js/plugins/iCheck/icheck.min.js"></script>

	<!-- Peity -->
	<script src="js/demo/peity-demo.js"></script>

</body>
</html>