<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>jQuery UI Sortable - Connect lists</title>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css">

<script>
	$(function() {
		var dialog, form,

		// From http://www.whatwg.org/specs/web-apps/current-work/multipage/states-of-the-type-attribute.html#e-mail-state-%28type=email%29
		emailRegex = /^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/, name = $("#name"), email = $("#email"), password = $("#password"), allFields = $(
				[]).add(name).add(email).add(password), tips = $(".validateTips");

		function updateTips(t) {
			tips.text(t).addClass("ui-state-highlight");
			setTimeout(function() {
				tips.removeClass("ui-state-highlight", 1500);
			}, 500);
		}

		function checkLength(o, n, min, max) {
			if (o.val().length > max || o.val().length < min) {
				o.addClass("ui-state-error");
				updateTips("Length of " + n + " must be between " + min
						+ " and " + max + ".");
				return false;
			} else {
				return true;
			}
		}

		function checkRegexp(o, regexp, n) {
			if (!(regexp.test(o.val()))) {
				o.addClass("ui-state-error");
				updateTips(n);
				return false;
			} else {
				return true;
			}
		}

		function addUser() {
			var valid = true;
			allFields.removeClass("ui-state-error");

			valid = valid && checkLength(name, "username", 3, 16);
			valid = valid && checkLength(email, "email", 6, 80);
			valid = valid && checkLength(password, "password", 5, 16);

			valid = valid
					&& checkRegexp(
							name,
							/^[a-z]([0-9a-z_\s])+$/i,
							"Username may consist of a-z, 0-9, underscores, spaces and must begin with a letter.");
			valid = valid
					&& checkRegexp(email, emailRegex, "eg. ui@jquery.com");
			valid = valid
					&& checkRegexp(password, /^([0-9a-zA-Z])+$/,
							"Password field only allow : a-z 0-9");

			if (valid) {
				$("#users tbody").append(
						"<tr>" + "<td>" + name.val() + "</td>" + "<td>"
								+ email.val() + "</td>" + "<td>"
								+ password.val() + "</td>" + "</tr>");
				dialog.dialog("close");
			}
			return valid;
		}

		dialog = $("#dialog-form").dialog({
			autoOpen : false,
			height : 300,
			width : 350,
			modal : true,
			buttons : {
				"Create an account" : addUser,
				Cancel : function() {
					dialog.dialog("close");
				}
			},
			close : function() {
				form[0].reset();
				allFields.removeClass("ui-state-error");
			}
		});

		form = dialog.find("form").on("submit", function(event) {
			event.preventDefault();
			addUser();
		});

		$("#create-user").button().on("click", function() {
			dialog.dialog("open");
		});
	});
</script>
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

			<div class="ibox-content">
				<div class="wrapper wrapper-content animated fadeInRight">
					<div class="row">
						<div class="col-lg-10">
							<table class="table table-striped" id="main_table"
								style="height: 650px; width: 1000px">
								<tr>
									<td rowspan="2" class="border-right-none border-bottom-none"
										width="20%">


										<div class="tooltiptext" style="display: none">
											<ol style="margin-left: 10px;">
												<li>Top 3 Problems you face</li>
											</ol>
										</div>

										<p style="color: #666"></p>
										<div id="question_1" class="hid">
											<ol>
												<li>Top 3 Problems you face</li>
											</ol>
										</div>
										<div id="block_1" class="drop_container "></div>


									</td>
									<td class="border-right-none border-bottom-none" width="20%">
										<h6 id="2">
											Solution <a href="javascript:void(0);" class="i-icon"
												data-question_no="2">?</a> &nbsp;&nbsp; <a href="#"
												id="dialog-form" class="insert_note ">Insert</a>

										</h6>

										<div class="tooltiptext" style="display: none">
											<ol style="margin-left: 10px;">
												<li>Top 3 Solutions to your Problems</li>
											</ol>
										</div>

										<p style="color: #666"></p>
										<div id="question_2" class="hid">
											<ol>
												<li>Top 3 Solutions to your Problems</li>
											</ol>
										</div>
										<div id="block_2" class="drop_container "></div>


									</td>
									<td rowspan="2" colspan="2"
										class="border-right-none border-bottom-none" width="20%">
										<h6 id="3">
											Unique Value Proposition <a href="javascript:void(0);"
												class="i-icon" data-question_no="3">?</a> &nbsp;&nbsp; <a
												href="#" id="insert_link_3" class="insert_note ">Insert</a>

										</h6>

										<div class="tooltiptext" style="display: none">
											<ol style="margin-left: 10px;">
												<li>Single, clear, compelling message that states why
													you are different and worth buying</li>
											</ol>
										</div>

										<p style="color: #666"></p>
										<div id="question_3" class="hid">
											<ol>
												<li>Single, clear, compelling message that states why
													you are different and worth buying</li>
											</ol>
										</div>
										<div id="block_3" class="drop_container "></div>


									</td>
									<td class="border-right-none border-bottom-none" width="20%">
										<h6 id="4">
											Unfair Advantage <a href="javascript:void(0);" class="i-icon"
												data-question_no="4">?</a> &nbsp;&nbsp; <a href="#"
												id="insert_link_4" class="insert_note ">Insert</a>

										</h6>

										<div class="tooltiptext" style="display: none">
											<ol style="margin-left: 10px;">
												<li>Can't be easily copied or bought</li>
											</ol>
										</div>

										<p style="color: #666"></p>
										<div id="question_4" class="hid">
											<ol>
												<li>Can't be easily copied or bought</li>
											</ol>
										</div>
										<div id="block_4" class="drop_container "></div>


									</td>
									<td rowspan="2" class="border-bottom-none" width="20%">
										<h6 id="5">
											Customer Segments <a href="javascript:void(0);"
												class="i-icon" data-question_no="5">?</a> &nbsp;&nbsp; <a
												href="#" id="insert_link_5" class="insert_note ">Insert</a>

										</h6>

										<div class="tooltiptext" style="display: none">
											<ol style="margin-left: 10px;">
												<li>Target customers</li>
											</ol>
										</div>

										<p style="color: #666"></p>
										<div id="question_5" class="hid">
											<ol>
												<li>Target customers</li>
											</ol>
										</div>
										<div id="block_5" class="drop_container "></div>


									</td>
								</tr>
								<tr>
									<td class="border-bottom-none border-right-none">
										<h6 id="6">
											Key Metrics <a href="javascript:void(0);" class="i-icon"
												data-question_no="6">?</a> &nbsp;&nbsp; <a href="#"
												id="insert_link_6" class="insert_note ">Insert</a>

										</h6>

										<div class="tooltiptext" style="display: none">
											<ol style="margin-left: 10px;">
												<li>Activity that drives retention/revenue</li>
											</ol>
										</div>

										<p style="color: #666"></p>
										<div id="question_6" class="hid">
											<ol>
												<li>Activity that drives retention/revenue</li>
											</ol>
										</div>
										<div id="block_6" class="drop_container "></div>


									</td>
									<td class="border-bottom-none border-right-none">
										<h6 id="7">
											Channels <a href="javascript:void(0);" class="i-icon"
												data-question_no="7">?</a> &nbsp;&nbsp; <a href="#"
												id="insert_link_7" class="insert_note ">Insert</a>

										</h6>

										<div class="tooltiptext" style="display: none">
											<ol style="margin-left: 10px;">
												<li>Path to customers</li>
											</ol>
										</div>

										<p style="color: #666"></p>
										<div id="question_7" class="hid">
											<ol>
												<li>Path to customers</li>
											</ol>
										</div>
										<div id="block_7" class="drop_container "></div>


									</td>
								</tr>
								<tr class="fix_width_section">
									<td colspan="3" class="border-right-none">
										<h6 id="8">
											Cost Structure <a href="javascript:void(0);" class="i-icon"
												data-question_no="8">?</a> &nbsp;&nbsp; <a href="#"
												id="insert_link_8" class="insert_note ">Insert</a>

										</h6>

										<div class="tooltiptext" style="display: none">
											<ol style="margin-left: 10px;">
												<li>Customer acquisition costs, distribution costs,
													hosting...</li>
											</ol>
										</div>

										<p style="color: #666"></p>
										<div id="question_8" class="hid">
											<ol>
												<li>Customer acquisition costs, distribution costs,
													hosting...</li>
											</ol>
										</div>
										<div id="block_8" class="drop_container "></div>


									</td>
									<td colspan="3">
										<h6 id="9">
											Revenue Stream <a href="javascript:void(0);" class="i-icon"
												data-question_no="9">?</a> &nbsp;&nbsp; <a href="#"
												id="insert_link_9" class="insert_note ">Insert</a>

										</h6>

										<div class="tooltiptext" style="display: none">
											<ol style="margin-left: 10px;">
												<li>Revenue model, Life time value revenue...</li>
											</ol>
										</div>

										<p style="color: #666"></p>
										<div id="question_9" class="hid">
											<ol>
												<li>Revenue model, Life time value revenue...</li>
											</ol>
										</div>
										<div id="block_9" class="drop_container "></div>


									</td>
								</tr>

								<tr id="brain_storming_section">
									<td>

										<div class="tooltiptext" style="display: none">
											<ol style="margin-left: 10px;">
												<li>What are your temporary brainstorming notes?</li>
											</ol>
										</div>




									</td>
								</tr>
							</table>





						</div>
					</div>

					<div class="pull-right">
						<button type="submit" class="btn btn-w-m btn-success">저장</button>
					</div>

				</div>
			</div>
		</div>







	</div>


</body>
</html>