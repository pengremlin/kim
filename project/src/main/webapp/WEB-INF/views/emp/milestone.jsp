<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>INSPINIA | Profile</title>

<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/font-awesome.css" rel="stylesheet">
<link href="resources/css/animate.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<!-- Toastr style -->
<link href="resources/css/plugins/toastr/toastr.min.css"
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
			<div class="modal inmodal fade inl" id="myModal" tabindex="-1"
				role="dialog" aria-hidden="true">
				<div class="modal-dialog modal-sm">
					<div class="modal-content animated flipInY">
						<div class="modal-header" >
							<button type="button" class="close" data-dismiss="modal">
								<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
							</button>
							<h4 class="modal-title">개발론 카드</h4>
							<small class="font-bold"></small>
						</div>
						<div class="modal-body">
							<div class="note-editable" contenteditable="true">
							
								<input type="checkbox"> 초기의 이해 과계자들이 시스템 개발에 합의한다.<br><br>
								<input type="checkbox"> 새로운 시스템을 사용할 이해관계자들이 식별된다.<br><br>
								<input type="checkbox"> 새로운 시스템의 초기 작업에 펀딩할 이해 관계자가 식별된다.<br><br>
								<input type="checkbox"> 새로운 시스템의 도입으로 해결되는 기회가 명확하다.<br><br>
								
							</div>
						</div> 

					</div>
				</div>
			</div>

			<div class="ibox-title">

				<table class="table table-striped">
					<tr>
						<td valign="middle" rowspan="1" colspan="1" align="center">
							알파상태 배열하기 <i class="fa fa-hand-o-right"></i>
						</td>

						<td valign="middle" rowspan="2" colspan="2" align="center">
							Customer</td>
						<td valign="middle" rowspan="2" colspan="2" align="center">
							Solution</td>
						<td valign="middle" rowspan="2" colspan="3" align="center">
							Endeavour</td>
					</tr>
					<tr>
						<td colspan="1" align="center"><i class="fa fa-hand-o-down"></i>
							마일스톤 배열하기</td>

					</tr>


					<!-- 첫번째 줄 -->

					<tr>
						<td valign="middle" rowspan="2" colspan="1" align="center"><br>
							<br> <br> <br> 발주</td>

						<td rowspan="1" colspan="1" align="center">이해관계자</td>
						<td rowspan="1" colspan="1" align="center">기회</td>
						<td rowspan="1" colspan="1" align="center">요구사항</td>
						<td rowspan="1" colspan="1" align="center">소프트웨어시스템</td>
						<td rowspan="1" colspan="1" align="center">팀</td>
						<td rowspan="1" colspan="1" align="center">작업방식</td>
						<td rowspan="1" colspan="1" align="center">작업</td>


					</tr>

					<tr>


						<td colspan="1" align="center">
							<ul class="sortable-list connectList agile-list" id="1-1">


								<li class="success-element" class="warning-element" id="task1">식별
									<a href="#" class="pull-right btn btn-xs btn-white"
									data-toggle="modal" data-target="#myModal"></a>
								</li>

								<li class="success-element" id="task2">대표선출 <a href="#"
									class="pull-right btn btn-xs btn-white" data-toggle="modal"
									data-target="#myModal"></a>
								</li>

								<li class="success-element" id="task3">작업참여
								 <a href="#" class="pull-right btn btn-xs btn-white" data-toggle="modal" data-target="#myModal"></a>
								</li>
							</ul>

						</td>

						<td colspan="1" align="center">
							<ul class="sortable-list connectList agile-list" id="1-2">
								<li class="success-element" id="task4">기회식별 <a href="#"
									class="pull-right btn btn-xs btn-white" data-toggle="modal"
									data-target="#myModal"></a>
								</li>

								<li class="success-element" id="task5">솔루션 필요성 확인 <a
									href="#" class="pull-right btn btn-xs btn-white"
									data-toggle="modal" data-target="#myModal"></a>
								</li>

								<li class="success-element" id="task6">솔루션 가치 확인 <a
									href="#" class="pull-right btn btn-xs btn-white"
									data-toggle="modal" data-target="#myModal"></a>
								</li>

							</ul>
						</td>

						<td colspan="1" align="center">
							<ul class="sortable-list connectList agile-list" id="1-3">
								<li class="warning-element" id="task5"><a href="#"
									 data-toggle="modal"
									data-target="#myModal">개념정의 </a>
								</li>
								<li class="warning-element" id="task6">범위정의 <a href="#"
									class="pull-right btn btn-xs btn-white" data-toggle="modal"
									data-target="#myModal"></a>
								</li>



							</ul>
						</td>
						<td colspan="1" align="center">
							<ul class="sortable-list connectList agile-list" id="onefour">
								<li class="warning-element" id="task7">아키텍처 선정 <a href="#"
									class="pull-right btn btn-xs btn-white" data-toggle="modal"
									data-target="#myModal"></a>
								</li>


							</ul>


						</td>
						<td colspan="1" align="center">
							<ul class="sortable-list connectList agile-list" id="1-5">
								<li class="info-element" id="task8">팀 요건 정의 <a href="#"
									class="pull-right btn btn-xs btn-white" data-toggle="modal"
									data-target="#myModal"></a>
								</li>
								<li class="info-element" id="task9">팀 구성 <a href="#"
									class="pull-right btn btn-xs btn-white" data-toggle="modal"
									data-target="#myModal"></a>
								</li>
							</ul>



						</td>
						<td colspan="1" align="center">

							<ul class="sortable-list connectList agile-list" id="1-6">
								<li class="info-element" id="task9">원칙수립 <a href="#"
									class="pull-right btn btn-xs btn-white" data-toggle="modal"
									data-target="#myModal"></a>
								</li>
								<li class="info-element" id="task10">작업방식확정<a href="#"
									class="pull-right btn btn-xs btn-white" data-toggle="modal"
									data-target="#myModal"></a>
								</li>




							</ul>


						</td>
						<td colspan="1" align="center">




							<ul class="sortable-list connectList agile-list" id="1-7">
								<li class="info-element" id="task11">과업확정 <a href="#"
									class="pull-right btn btn-xs btn-white" data-toggle="modal"
									data-target="#myModal"></a>
								</li>
								<li class="info-element" id="task12">사전준비<a href="#"
									class="pull-right btn btn-xs btn-white" data-toggle="modal"
									data-target="#myModal"></a>
								</li>


							</ul>






						</td>
					</tr>

					<!-- 첫번째 줄  끝 -->
					</ul>



					<!-- 두번째 줄 -->

					<tr>
						<td valign="middle" rowspan="2" colspan="1" align="center"><br>
							셋업 <br></td>
					</tr>

					<tr>

						<td colspan="1" align="center"><ul class="sortable-list connectList agile-list" id="2-1"></ul></td>
						<td colspan="1" align="center"><ul class="sortable-list connectList agile-list" id="2-2"></ul></td>
						<td colspan="1" align="center"><ul class="sortable-list connectList agile-list" id="2-3"></ul></td>
						<td colspan="1" align="center"><ul class="sortable-list connectList agile-list" id="2-4"></ul></td>
						<td colspan="1" align="center"><ul class="sortable-list connectList agile-list" id="2-5"></ul></td>
						<td colspan="1" align="center">
							<ul class="sortable-list connectList agile-list" id="2-6">
								<li class="info-element" id="task12">시범적용 <a href="#"
									class="pull-right btn btn-xs btn-white" data-toggle="modal"
									data-target="#myModal"></a>
								</li>
							</ul>
						

						</td>
						<td colspan="1" align="center">
						<ul class="sortable-list connectList agile-list" id="2-7">
							<li class="info-element" id="task13">작업시작 <a href="#"
									class="pull-right btn btn-xs btn-white" data-toggle="modal"
									data-target="#myModal"></a>
								</li>
						</ul>
							

						</td>
					</tr>

					<!-- 두번째 줄 -->



					<!-- 세번째 줄 -->

					<tr>
						<td valign="middle" rowspan="2" colspan="1" align="center"><br>
							요구분석 <br></td>
					</tr>

					<tr>

						<td colspan="1" align="center">
							<ul class="sortable-list connectList agile-list" id="3-1">
								<li class="success-element" class="warning-element" id="task14">배포기준합의
									<a href="#" class="pull-right btn btn-xs btn-white"
									data-toggle="modal" data-target="#myModal"></a>
								</li>
							</ul>
						</td>
						
						<td colspan="1" align="center">
							<ul class="sortable-list connectList agile-list" id="3-2">
								<li class="success-element" class="warning-element" id="task15">솔루션 타당성 검증
									<a href="#" class="pull-right btn btn-xs btn-white"
									data-toggle="modal" data-target="#myModal"></a>
								</li>
							</ul>
						
						</td>
						<td colspan="1" align="center">
							<ul class="sortable-list connectList agile-list" id="3-3">
								<li class="warning-element" id="task16">요건정의 <a href="#"
									class="pull-right btn btn-xs btn-white" data-toggle="modal"
									data-target="#myModal"></a>
								</li>
								<li class="warning-element" id="task17">요건합의 <a href="#"
									class="pull-right btn btn-xs btn-white" data-toggle="modal"
									data-target="#myModal"></a>
								</li>
							</ul>											
						</td>
						
						
						<td colspan="1" align="center">
						<ul class="sortable-list connectList agile-list" id="3-4">
								<li class="warning-element" id="task18">아키텍처 검증 <a href="#"
									class="pull-right btn btn-xs btn-white" data-toggle="modal"
									data-target="#myModal"></a>
								</li>
								
							</ul>	
				

						</td>
						
						<td colspan="1" align="center">
						
						<ul class="sortable-list connectList agile-list" id="3-5">
								<li class="info-element" id="task19">팀 빌딩 <a href="#"
									class="pull-right btn btn-xs btn-white" data-toggle="modal"
									data-target="#myModal"></a>
								</li>
								
							</ul>	
				
						
						</td>
						<td colspan="1" align="center">
						
							<ul class="sortable-list connectList agile-list" id="3-6">
								<li class="info-element" id="task20">전체 적용 <a href="#"
									class="pull-right btn btn-xs btn-white" data-toggle="modal"
									data-target="#myModal"></a>
								</li>
								
							</ul>	
						
						

						</td>
						<td colspan="1" align="center">
							
							<ul class="sortable-list connectList agile-list" id="3-7">
								<li class="info-element" id="task21">작업 진행 <a href="#"
									class="pull-right btn btn-xs btn-white" data-toggle="modal"
									data-target="#myModal"></a>
								</li>
								
							</ul>	
								
							

						</td>
					</tr>

					<!-- 세번째 줄 끝 -->


					<!-- 네번째 줄 -->

					<tr>
						<td valign="middle" rowspan="2" colspan="1" align="center"><br>
							구현 <br></td>
					</tr>

					<tr>

						<td colspan="1" align="center">
							<ul class="sortable-list connectList agile-list" id="4-1">
								<li class="success-element" class="warning-element" id="task22">배포 합의
									<a href="#" class="pull-right btn btn-xs btn-white"
									data-toggle="modal" data-target="#myModal"></a>
								</li>
							</ul>
						
						
						</td>
						<td colspan="1" align="center">
							<ul class="sortable-list connectList agile-list" id="4-2">
								<li class="success-element" class="warning-element" id="task23">솔루션 개발
									<a href="#" class="pull-right btn btn-xs btn-white"
									data-toggle="modal" data-target="#myModal"></a>
								</li>
							</ul>
						
						
						</td>
						<td colspan="1" align="center">
							<ul class="sortable-list connectList agile-list" id="4-3">
								<li class="warning-element" id="task24">요건구현 <a href="#"
									class="pull-right btn btn-xs btn-white" data-toggle="modal"
									data-target="#myModal"></a>
								</li>
								<li class="warning-element" id="task25">니즈 충족 <a href="#"
									class="pull-right btn btn-xs btn-white" data-toggle="modal"
									data-target="#myModal"></a>
								</li>
							</ul>		
							
							
						</td>
						<td colspan="1" align="center">
							<ul class="sortable-list connectList agile-list" id="4-4">
								<li class="warning-element" id="task26">사용가능 <a href="#"
									class="pull-right btn btn-xs btn-white" data-toggle="modal"
									data-target="#myModal"></a>
								</li>
								
							</ul>	
						

						</td>
						<td colspan="1" align="center">
							<ul class="sortable-list connectList agile-list" id="4-5">
								<li class="info-element" id="task27">배포준비<a href="#"
									class="pull-right btn btn-xs btn-white" data-toggle="modal"
									data-target="#myModal"></a>
								</li>
								
							</ul>	
							
							

						</td>
						<td colspan="1" align="center">
							<ul class="sortable-list connectList agile-list" id="4-6">
								<li class="info-element" id="task28">작업수행<a href="#"
									class="pull-right btn btn-xs btn-white" data-toggle="modal"
									data-target="#myModal"></a>
								</li>
								
							</ul>	
							
						

						</td>
						<td colspan="1" align="center">
							<ul class="sortable-list connectList agile-list" id="4-7">
								<li class="info-element" id="task29">작업방식화 내제화<a href="#"
									class="pull-right btn btn-xs btn-white" data-toggle="modal"
									data-target="#myModal"></a>
								</li>
								<li class="info-element" id="task30">목표달성<a href="#"
									class="pull-right btn btn-xs btn-white" data-toggle="modal"
									data-target="#myModal"></a>
								</li>
							</ul>
						</td>
					</tr>


					<!-- 네번째 줄 끝-->

					<!-- 다섯번째 줄 -->
					<tr>
						<td valign="middle" rowspan="2" colspan="1" align="center"><br>
							종료 <br></td>
					</tr>

					<tr>

						<td colspan="1" align="center"><ul class="sortable-list connectList agile-list" id="5-1"></ul></td>
						<td colspan="1" align="center"><ul class="sortable-list connectList agile-list" id="5-2"></ul></td>
						<td colspan="1" align="center"><ul class="sortable-list connectList agile-list" id="5-3"></ul></td>
						<td colspan="1" align="center"><ul class="sortable-list connectList agile-list" id="5-4"></ul></td>
						<td colspan="1" align="center"><ul class="sortable-list connectList agile-list" id="5-5"></ul></td>
						<td colspan="1" align="center">
							<ul class="sortable-list connectList agile-list" id="5-6">
								
							</ul>
						

						</td>
						<td colspan="1" align="center">
						<ul class="sortable-list connectList agile-list" id="5-7">
							<li class="info-element" id="task31">작업종료 <a href="#"
									class="pull-right btn btn-xs btn-white" data-toggle="modal"
									data-target="#myModal"></a>
								</li>
						</ul>
					
						</td>
					</tr>


					<!-- 다섯번째 줄 끝-->












				</table>




			</div>
			<!-- 각 노트들 위치값 출력 -->
				<div class="row">
					<h1>각 노트들 위치값 출력</h1>
					<div class="col-lg-12">
						<div class="output p-m m white-bg"></div>
					</div>
				</div>
				<!-- 각 노트들 위치값 출력 -->
			
			
		</div>
		
		<!-- 채팅 인클루드 자리 -->
		<%
			pageContext.include("inc/chat.jsp");
		%>
		
		
	</div>

	<!-- Mainly scripts -->
	<script src="resources/js/jquery-2.1.1.js"></script>
	<script src="resources/js/jquery-ui-1.10.4.min.js"></script>
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




	<script>
		$(document)
				.ready(
						function() {

							$("#1-1, #1-2, #1-3, #onefour, #1-5, #1-6, #1-7,#2-1,#2-2,#2-3,#2-4,#2-5,#2-6,#2-7,#3-1,#3-2,#3-3,#3-4,#3-5,#3-6,#3-7,#4-1,#4-2,#4-3,#4-4,#4-5,#4-6,#4-7,#5-1,#5-2,#5-3,#5-4,#5-5,#5-6,#5-7")
									.sortable(
											{
												connectWith : ".connectList",
												update : function(event, ui) {

													var todo = $("#1-1")
															.sortable("toArray");
													var inprogress = $("#1-2")
															.sortable("toArray");
													var completed = $("#1-3")
															.sortable("toArray");
													var onefour = $("#onefour")
															.sortable("toArray");
													var completed = $("#1-5")
															.sortable("toArray");
													var completed = $("#1-6")
															.sortable("toArray");
													var completed = $("#1-7")
															.sortable("toArray");
													var completed = $("#2-1")
													.sortable("toArray");
													var completed = $("#2-2")
													.sortable("toArray");
													var completed = $("#2-3")
													.sortable("toArray");
													var completed = $("#2-4")
													.sortable("toArray");
													var completed = $("#2-5")
													.sortable("toArray");
													var completed = $("#2-6")
													.sortable("toArray");
													var completed = $("#2-7")
													.sortable("toArray");
													var completed = $("#3-1")
													.sortable("toArray");
													var completed = $("#3-2")
													.sortable("toArray");
													var completed = $("#3-3")
													.sortable("toArray");
													var completed = $("#3-4")
													.sortable("toArray");
													var completed = $("#3-5")
													.sortable("toArray");
													var completed = $("#3-6")
													.sortable("toArray");
													var completed = $("#3-7")
													.sortable("toArray");
													var completed = $("#4-1")
													.sortable("toArray");
													var completed = $("#4-2")
													.sortable("toArray");
													var completed = $("#4-3")
													.sortable("toArray");
													var completed = $("#4-4")
													.sortable("toArray");
													var completed = $("#4-5")
													.sortable("toArray");
													var completed = $("#4-6")
													.sortable("toArray");
													var completed = $("#4-7")
													.sortable("toArray");
													var completed = $("#5-1")
													.sortable("toArray");
													var completed = $("#5-2")
													.sortable("toArray");
													var completed = $("#5-3")
													.sortable("toArray");
													var completed = $("#5-4")
													.sortable("toArray");
													var completed = $("#5-5")
													.sortable("toArray");
													var completed = $("#5-6")
													.sortable("toArray");
													var completed = $("#5-7")
													.sortable("toArray");
													
													

													$('.output')
															.html(
																	"ToDo: "
																			+ window.JSON
																					.stringify(todo)
																			+ "<br/>"
																			+ "In Progress: "
																			+ window.JSON
																					.stringify(inprogress)
																			+ "<br/>"
																			+ "Completed: "
																			+ window.JSON
																					.stringify(completed)
																			+ "<br/>"
																			+ "onefour: "
																			+ window.JSON
																					.stringify(onefour)		
															
															
															
															
															
															);
												}
											}).disableSelection();

						});
	</script>
</body>
</html>