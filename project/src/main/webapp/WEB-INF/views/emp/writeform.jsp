<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>사원 등록</title>
<script type="text/javascript">
	function board_write() {
		//alert("쓰기")	;
		if (document.writeform.name.value == "") {
			alert("이름을 입력해주세요");
		} else if (document.writeform.ename.value == "") {
			alert("사원번호를 입력해주세요");
			document.writeform.ename.focus();
		} else if (document.writeform.job.value == "") {
			alert("직종을 입력해주세요");
			document.writeform.job.focus();
		} else if (document.writeform.mgr.value == "") {
			alert("담당자 번호를 입력해주세요");
			document.writeform.mgr.focus();
		} else if (document.writeform.sal.value == "") {
			alert("급여를 입력해주세요");
			document.writeform.sal.focus();
		} else if (document.writeform.comm.value == "") {
			alert("수당을 입력해주세요");
			document.writeform.comm.focus();
		} else if (document.writeform.deptno.value == "") {
			alert("부서번호를 입력해주세요");
			document.writeform.deptno.focus();
		} else {
			document.writeform.submit(); //전송
		}
	}
</script>

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
				<div class="col-lg-10"></div>
				<div class="col-lg-2"></div>
			</div>
			<!-- 페이지 헤더? -->
			<!-- Main 끝 -->


			<div class="wrapper wrapper-content animated fadeInRight">
				<div class="row">
					<div class="col-lg-12">
						<div class="ibox float-e-margins">
							<div class="ibox-title" style="width: 300px">

								<div id="wrap">
									<div id="tbl">
										<form name="writeform" action="write.htm" method="post">
											<table class="table">

												<tr>
													<th>사원번호</th>
													<td class="td"><input type="text" name="empno"></td>
												</tr>
												<tr>
													<th>이름</th>
													<td class="td"><input type="text" name="ename"></td>
												</tr>
												<tr>
													<th>직종</th>
													<td class="td"><input type="text" name="job"></td>
												</tr>
												<tr>
													<th>담당자번호</th>
													<td class="td"><input type="text" name="mgr"></td>
												</tr>
												<th>급여</th>
												<td class="td"><input type="text" name="sal"></td>
												</tr>
												<tr>
													<th>수당</th>
													<td class="td"><input type="text" name="comm"></td>
												</tr>
												<tr>
													<th>부서번호</th>
													<td class="td"><input type="text" name="deptno"></td>
												</tr>



											</table>

											<button type="submit" class="btn btn-primary btn-block" onclick="board_write()">입력</button>

										</form>
									</div>
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