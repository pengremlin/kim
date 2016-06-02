<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>INSPINIA | Profile</title>

<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/font-awesome.css" rel="stylesheet">
<link href="resources/css/animate.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<link href="resources/css/plugins/chartist/chartist.min.css"
	rel="stylesheet">

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

								<div class="ibox-title">
									<h5>Simple line chart</h5>
								</div>
								<div class="ibox-content">
									<div id="ct-chart1" class="ct-perfect-fourth"
										style="width: 600px; height: 400px"></div>
								</div>



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
	<!-- 전체 페이지 레이아웃 모든 include 또는 content 는 이 안에 들어가야함 -->



	<!-- Mainly scripts -->
	<script src="resources/js/jquery-2.1.1.js"></script>
	<script src="resources/js/bootstrap.js"></script>
	<script src="resources/js/plugins/metisMenu/jquery.metisMenu.js"></script>
	<script src="resources/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

	<!-- Custom and plugin javascript -->
	<script src="resources/js/inspinia.js"></script>
	<script src="resources/js/plugins/pace/pace.min.js"></script>

	<!-- Peity -->
	<script src="resources/js/plugins/peity/jquery.peity.min.js"></script>

	<!-- Peity -->
	<script src="resources/js/demo/peity-demo.js"></script>


	<!-- Custom and plugin javascript -->
	<script src="resources/js/inspinia.js"></script>
	<script src="resources/js/plugins/pace/pace.min.js"></script>

	<!-- Chartist -->
	<script src="resources/js/plugins/chartist/chartist.min.js"></script>

	<!-- Custom and plugin javascript -->
	<script src="resources/js/inspinia.js"></script>
	<script src="resources/js/plugins/pace/pace.min.js"></script>
	<script src="resources/js/plugins/metisMenu/jquery.metisMenu.js"></script>
	<script src="resources/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script>
		$(document).ready(
				function() {
					// Simple line
					new Chartist.Line('#ct-chart1', {
						labels : [ 'Monday', 'Tuesday', 'Wednesday',
								'Thursday', 'Friday' ],
						series : [ [ 12, 9, 7, 8, 5 ], [ 2, 1, 3.5, 7, 3 ],
								[ 1, 3, 4, 5, 6 ] ]
					}, {
						fullWidth : true,
						chartPadding : {
							right : 40
						}
					});
				});
	</script>



</body>

</html>
