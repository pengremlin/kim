
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

</head>

<body>

	<!-- 전체 페이지 레이아웃 모든 include 또는 content 는 이 안에 들어가야함 -->
	<div id="wrapper">

		<!-- 인클루드되는 페이지의 css bootstrap jquery 링크는 삭제 -->
		<%
			pageContext.include("WEB-INF/views/inc/navi.jsp");
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
			
			
			
		
		
	
	</div>
	
	<%
			pageContext.include("WEB-INF/views/emp/inc/chat.jsp");
		%>
	</div>



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

</body>

</html>
