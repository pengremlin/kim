<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<head>

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title></title>

<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/font-awesome.css" rel="stylesheet">

<!-- Toastr style -->
<link href="resources/css/plugins/toastr/toastr.min.css"
	rel="stylesheet">

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

			<div class="wrapper wrapper-content  animated fadeInRight">

				<!-- 모달 창 -->
				<div class="modal inmodal" id="myModal" tabindex="-1" role="dialog"
					aria-hidden="true">
					
					<form action="insertmemo.htm" method="post">
					
					<div class="modal-dialog">
						<div class="modal-content animated flipInY">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">
									<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
								</button>
								<h4 class="modal-title">메모 추가</h4>
								<small class="font-bold"></small>
							</div>
							<div class="modal-body">
								<div class="note-editable" contenteditable="true">
									<textarea id="board_content" name="board_content">여기 내용입력 </textarea>
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-white" data-dismiss="modal">닫기</button>
								<button type="submit"  class="btn btn-primary">내용 저장</button>
							</div>
						</div>
					</div>
					
					</form>
				</div>
				<!-- 모달 창 -->


				<div class="row">
					<div class="col-lg-4">
						<div class="ibox">
							<div class="ibox-content">
								<h3>To-do</h3>
								<p class="small">
									<i class="fa fa-hand-o-up"></i> 모든 항목들은 드래그로 이동이 가능합니다.
								</p>

								<div class="input-group">
									<input type="text" placeholder="제목 입력"
										class="input input-sm form-control"> <span
										class="input-group-btn"> <!-- 모달 호출 버튼 -->
										<button type="button" class="btn btn-sm btn-white"
											data-toggle="modal" data-target="#myModal">
											<i class="fa fa-plus"></i>노트 추가
										</button> <!-- 모달 호출 버튼 -->

									</span>
								</div>



								<ul class="sortable-list connectList agile-list" id="todo">
									<li class="warning-element" id="task1">Simply dummy text
										of the printing and typesetting industry.
										<div class="agile-detail">
											<a href="#" class="pull-right btn btn-xs btn-white">Tag</a> <i
												class="fa fa-clock-o"></i> 12.10.2015
										</div>
									</li>
									<li class="success-element" id="task2">Many desktop
										publishing packages and web page editors now use Lorem Ipsum
										as their default.
										<div class="agile-detail">
											<a href="#" class="pull-right btn btn-xs btn-white">Mark</a>
											<i class="fa fa-clock-o"></i> 05.04.2015
										</div>
									</li>
									<li class="info-element" id="task3">Sometimes by accident,
										sometimes on purpose (injected humour and the like).
										<div class="agile-detail">
											<a href="#" class="pull-right btn btn-xs btn-white">Mark</a>
											<i class="fa fa-clock-o"></i> 16.11.2015
										</div>
									</li>
									<li class="danger-element" id="task4">All the Lorem Ipsum
										generators
										<div class="agile-detail">
											<a href="#" class="pull-right btn btn-xs btn-primary">Done</a>
											<i class="fa fa-clock-o"></i> 06.10.2015
										</div>
									</li>
									<li class="warning-element" id="task5">Which looks
										reasonable. The generated Lorem Ipsum is therefore always free
										from repetition, injected humour, or non-characteristic words
										etc.
										<div class="agile-detail">
											<a href="#" class="pull-right btn btn-xs btn-white">Tag</a> <i
												class="fa fa-clock-o"></i> 09.12.2015
										</div>
									</li>
									<li class="warning-element" id="task6">Packages and web
										page editors now use Lorem Ipsum as
										<div class="agile-detail">
											<a href="#" class="pull-right btn btn-xs btn-primary">Done</a>
											<i class="fa fa-clock-o"></i> 08.04.2015
										</div>
									</li>
									<li class="success-element" id="task7">Many desktop
										publishing packages and web page editors now use Lorem Ipsum
										as their default.
										<div class="agile-detail">
											<a href="#" class="pull-right btn btn-xs btn-white">Mark</a>
											<i class="fa fa-clock-o"></i> 05.04.2015
										</div>
									</li>
									<li class="info-element" id="task8">Sometimes by accident,
										sometimes on purpose (injected humour and the like).
										<div class="agile-detail">
											<a href="#" class="pull-right btn btn-xs btn-white">Mark</a>
											<i class="fa fa-clock-o"></i> 16.11.2015
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="ibox">
							<div class="ibox-content">
								<h3>In Progress</h3>
								<p class="small">
									<i class="fa fa-hand-o-up"></i> Drag task between list
								</p>
								<ul class="sortable-list connectList agile-list" id="inprogress">
									<li class="success-element" id="task9">Quisque venenatis
										ante in porta suscipit.
										<div class="agile-detail">
											<a href="#" class="pull-right btn btn-xs btn-white">Tag</a> <i
												class="fa fa-clock-o"></i> 12.10.2015
										</div>
									</li>
									<li class="success-element" id="task10">Phasellus sit amet
										tortor sed enim mollis accumsan in consequat orci.
										<div class="agile-detail">
											<a href="#" class="pull-right btn btn-xs btn-white">Mark</a>
											<i class="fa fa-clock-o"></i> 05.04.2015
										</div>
									</li>
									<li class="warning-element" id="task11">Nunc sed arcu at
										ligula faucibus tempus ac id felis. Vestibulum et nulla quis
										turpis sagittis fringilla.
										<div class="agile-detail">
											<a href="#" class="pull-right btn btn-xs btn-white">Mark</a>
											<i class="fa fa-clock-o"></i> 16.11.2015
										</div>
									</li>
									<li class="warning-element" id="task12">Ut porttitor augue
										non sapien mollis accumsan. Nulla non elit eget lacus
										elementum viverra.
										<div class="agile-detail">
											<a href="#" class="pull-right btn btn-xs btn-white">Tag</a> <i
												class="fa fa-clock-o"></i> 09.12.2015
										</div>
									</li>
									<li class="info-element" id="task13">Packages and web page
										editors now use Lorem Ipsum as
										<div class="agile-detail">
											<a href="#" class="pull-right btn btn-xs btn-primary">Done</a>
											<i class="fa fa-clock-o"></i> 08.04.2015
										</div>
									</li>
									<li class="success-element" id="task14">Quisque lacinia
										tellus et odio ornare maximus.
										<div class="agile-detail">
											<a href="#" class="pull-right btn btn-xs btn-white">Mark</a>
											<i class="fa fa-clock-o"></i> 05.04.2015
										</div>
									</li>
									<li class="danger-element" id="task15">Enim mollis
										accumsan in consequat orci.
										<div class="agile-detail">
											<a href="#" class="pull-right btn btn-xs btn-white">Mark</a>
											<i class="fa fa-clock-o"></i> 11.04.2015
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="ibox">
							<div class="ibox-content">
								<h3>Completed</h3>
								<p class="small">
									<i class="fa fa-hand-o-up"></i> Drag task between list
								</p>
								<ul class="sortable-list connectList agile-list" id="completed">
									<li class="info-element" id="task16">Sometimes by
										accident, sometimes on purpose (injected humour and the like).
										<div class="agile-detail">
											<a href="#" class="pull-right btn btn-xs btn-white">Mark</a>
											<i class="fa fa-clock-o"></i> 16.11.2015
										</div>
									</li>
									<li class="warning-element" id="task17">Ut porttitor augue
										non sapien mollis accumsan. Nulla non elit eget lacus
										elementum viverra.
										<div class="agile-detail">
											<a href="#" class="pull-right btn btn-xs btn-white">Tag</a> <i
												class="fa fa-clock-o"></i> 09.12.2015
										</div>
									</li>
									<li class="warning-element" id="task18">Which looks
										reasonable. The generated Lorem Ipsum is therefore always free
										from repetition, injected humour, or non-characteristic words
										etc.
										<div class="agile-detail">
											<a href="#" class="pull-right btn btn-xs btn-white">Tag</a> <i
												class="fa fa-clock-o"></i> 09.12.2015
										</div>
									</li>
									<li class="warning-element" id="task19">Packages and web
										page editors now use Lorem Ipsum as
										<div class="agile-detail">
											<a href="#" class="pull-right btn btn-xs btn-primary">Done</a>
											<i class="fa fa-clock-o"></i> 08.04.2015
										</div>
									</li>
									<li class="success-element" id="task20">Many desktop
										publishing packages and web page editors now use Lorem Ipsum
										as their default.
										<div class="agile-detail">
											<a href="#" class="pull-right btn btn-xs btn-white">Mark</a>
											<i class="fa fa-clock-o"></i> 05.04.2015
										</div>
									</li>
									<li class="info-element" id="task21">Sometimes by
										accident, sometimes on purpose (injected humour and the like).
										<div class="agile-detail">
											<a href="#" class="pull-right btn btn-xs btn-white">Mark</a>
											<i class="fa fa-clock-o"></i> 16.11.2015
										</div>
									</li>
									<li class="warning-element" id="task22">Simply dummy text
										of the printing and typesetting industry.
										<div class="agile-detail">
											<a href="#" class="pull-right btn btn-xs btn-white">Tag</a> <i
												class="fa fa-clock-o"></i> 12.10.2015
										</div>
									</li>
									<li class="success-element" id="task23">Many desktop
										publishing packages and web page editors now use Lorem Ipsum
										as their default.
										<div class="agile-detail">
											<a href="#" class="pull-right btn btn-xs btn-white">Mark</a>
											<i class="fa fa-clock-o"></i> 05.04.2015
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
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

		</div>
		<!-- 채팅 인클루드 자리 -->
		<%
			pageContext.include("inc/chat.jsp");
		%>
		
	</div>



	<!-- Mainly scripts -->
	<script src="resources/js/jquery-2.1.1.js"></script>
	<script src="resources/js/jquery-ui-1.10.4.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/plugins/metisMenu/jquery.metisMenu.js"></script>
	<script src="resources/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

	<!-- Custom and plugin javascript -->
	<script src="resources/js/inspinia.js"></script>
	<script src="resources/js/plugins/pace/pace.min.js"></script>

	<script>
		$(document)
				.ready(
						function() {

							$("#todo, #inprogress, #completed")
									.sortable(
											{
												connectWith : ".connectList",
												update : function(event, ui) {

													var todo = $("#todo")
															.sortable("toArray");
													var inprogress = $(
															"#inprogress")
															.sortable("toArray");
													var completed = $(
															"#completed")
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
																					.stringify(completed));
												}
											}).disableSelection();

						});
	</script>

</body>

</html>
