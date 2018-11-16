<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<!-- BEGIN HEAD -->

<!-- Mirrored from maniac.yakuzi.eu/ by HTTrack Website Copier/3.x [XR&CO'2013], Sun, 01 Jan 2017 05:29:31 GMT -->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta content="" name="description" />
<meta content="" name="author" />


<title>Owner - Dashboard</title>

<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<style type="text/css">
${
demo
.css
}
</style>
<!-- Plotly.js -->
<script src="assets/js/plotly-latest.min.js"></script>
<!--Numeric.js  -->


<!-- BEGIN CORE FRAMEWORK -->
<link href="assets/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" />
<link href="assets/plugins/ionicons/css/ionicons.min.css"
	rel="stylesheet" />
<link href="assets/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" />
<!-- END CORE FRAMEWORK -->

<!-- BEGIN PLUGIN STYLES -->
<link href="assets/plugins/animate/animate.css" rel="stylesheet" />
<link href="assets/plugins/bootstrap-slider/css/slider.css"
	rel="stylesheet" />
<link href="assets/plugins/rickshaw/rickshaw.min.css" rel="stylesheet" />
<link
	href="assets/plugins/jquery-jvectormap/jquery-jvectormap-1.2.2.css"
	rel="stylesheet" />
<link
	href="assets/plugins/bootstrap-daterangepicker/daterangepicker-bs3.css"
	rel="stylesheet" />
<!-- END PLUGIN STYLES -->

<!-- BEGIN THEME STYLES -->
<link href="assets/css/material.css" rel="stylesheet" />
<link href="assets/css/style.css" rel="stylesheet" />
<link href="assets/css/plugins.css" rel="stylesheet" />
<link href="assets/css/helpers.css" rel="stylesheet" />
<link href="assets/css/responsive.css" rel="stylesheet" />
<!-- END THEME STYLES -->
<style type="text/css">
* {
	font-family: "Source Sans Pro", "Helvetica Neue", Helvetica, Arial,
		sans-serif;
}
</style>
<script type="text/javascript" src="graph.js"></script>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="fixed-leftside fixed-header">
	<script src="https://code.highcharts.com/highcharts.js"></script>
	<script src="https://code.highcharts.com/modules/exporting.js"></script>
	<!-- BEGIN HEADER -->
	<jsp:include page="header.jsp"></jsp:include>
	<!-- END HEADER -->

	<div class="wrapper">
		<!-- BEGIN LEFTSIDE -->
		<jsp:include page="menu.jsp"></jsp:include>
		<!-- END LEFTSIDE -->

		<!-- BEGIN RIGHTSIDE -->
		<div class="rightside bg-grey-100">
			<!-- BEGIN PAGE HEADING -->
			<div class="page-head bg-grey-100">
				<h1 class="page-title">
					Dashboard<small></small>
				</h1>
				<div id="bs-daterangepicker"
					class="btn bg-grey-50 padding-10-20 no-border color-grey-600 pull-right border-radius-25 hidden-xs no-shadow">
					<i class="ion-calendar margin-right-10"></i> <span></span> <i
						class="ion-ios-arrow-down margin-left-5"></i>
				</div>
			</div>
			<!-- END PAGE HEADING -->

			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
						<div class="panel bg-teal-500">
							<div class="panel-body padding-15-20">
								<div class="clearfix">
								<c:set value="${deals}" var="o"></c:set>
									<div class="pull-left">
										<div
											class="color-white font-size-26 font-roboto font-weight-600"
											data-toggle="counter" data-start="0" data-from="0"
											data-to="${o}" data-speed="500" data-refresh-interval="10"></div>
										<div class="display-block color-teal-50 font-weight-600">
										</br>
											<a href="owner_deals.do" style="color:#e1e9f0"><i class="ion-plus-round"></i> NEW DEALS</a>
										</div>
									</div>
									<div class="pull-right">
										<i class="font-size-36 color-teal-100 fa fa-money"></i>
									</div>
								</div>
								<div class="margin-top-25 margin-bottom-5"></div>
								<div class="font-size-11 clearfix color-teal-50 font-weight-600">

								</div>
							</div>
						</div>
						<!-- /.panel -->
					</div>
					<!-- /.col -->

					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
						<div class="panel bg-red-400">
							<div class="panel-body padding-15-20">
								<div class="clearfix">
								<c:set value="${contacts}" var="p"></c:set>
									<div class="pull-left">
										<div
											class="color-white font-size-26 font-roboto font-weight-600"
											data-toggle="counter" data-start="0" data-from="0"
											data-to="${p}" data-speed="500" data-refresh-interval="10"></div>
										<div class="display-block color-red-50 font-weight-600">
										</br>
											<a href="viewContact.do" style="color:#e1e9f0"><i class="ion-plus-round"></i> NEW CONTACTS</a>
										</div>
									</div>
									<div class="pull-right">
										<i class="font-size-36 color-red-100 ion-person-add"></i>
									</div>
								</div>
								<div class="margin-top-25 margin-bottom-5"></div>
								<div class="font-size-11 clearfix color-red-50 font-weight-600">

								</div>
							</div>
						</div>
						<!-- /.panel -->
					</div>
					<!-- /.col -->

					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
						<div class="panel bg-blue-400">
							<div class="panel-body padding-15-20">
								<div class="clearfix">
								<c:set value="${tasks}" var="q"></c:set>
									<div class="pull-left">
										<div
											class="color-white font-size-26 font-roboto font-weight-600"
											data-toggle="counter" data-start="0" data-from="0"
											data-to="${q}" data-speed="500" data-refresh-interval="10"></div>
										<div class="display-block color-blue-50 font-weight-600">
										</br>
											<a href="owner_tasks.do" style="color:#e1e9f0"><i class="ion-plus-round"></i> NEW TASK</a>
										</div>
									</div>
									<div class="pull-right">
										<i class="font-size-36 color-blue-100 fa fa-tasks"></i>
									</div>
								</div>
								<div class="margin-top-25 margin-bottom-5"></div>
								<div class="font-size-11 clearfix color-blue-50 font-weight-600">

								</div>
							</div>
						</div>
						<!-- /.panel -->
					</div>
					<!-- /.col -->

					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
						<div class="panel bg-blue-grey-400">
							<div class="panel-body padding-15-20">
								<div class="clearfix">
									<div class="pull-left">
										<div
											class="color-white font-size-26 font-roboto font-weight-600"
											data-toggle="counter" data-start="0" data-from="0"
											data-to="15" data-speed="500" data-refresh-interval="10"></div>
										<div class="display-block color-blue-grey-50 font-weight-600">
										</br>
											<a href="#" style="color:#e1e9f0"><i class="ion-plus-round"></i> NEW DOCUMENTS</a>
										</div>
									</div>
									<div class="pull-right">
										<i class="font-size-36 color-blue-grey-100 fa fa-file"></i>
									</div>
								</div>
								<div class=" margin-top-25 margin-bottom-5"></div>
							</div>
							<div
								class="font-size-11 clearfix color-blue-grey-50 font-weight-600">

							</div>
						</div>
					</div>
					<!-- /.panel -->
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->

			<div class="row">
			<div class="container-fluid">
				<div class="col-lg-12">
					<div class="panel">
						<div class="panel-title no-border bg-white">
							<div class="panel-head">
								<i class="ion-arrow-graph-up-right"></i> Deal Statistics
							</div>
							<!-- <div class="panel-tools">
								<a href="#" data-toggle="dropdown"><i class="ion-gear-a"></i></a>
								<ul class="dropdown-menu pull-right margin-right-10">
									<li><a href="#"><i class="ion-gear-a"></i> Settings </a></li>
									<li><a href="#"><i class="ion-ios-printer"></i> Print
									</a></li>
									<li><a href="#"><i class="ion-refresh"></i> Refresh </a></li>
									<li class="divider"></li>
									<li><a href="#" class="clearfix"><span
											class="pull-left">New Visitors</span> <span
											class="label bg-teal-500 pull-right">3</span></a></li>
									<li><a href="#" class="clearfix"><span
											class="pull-left">Total</span> <span
											class="label bg-red-500 pull-right">2</span></a></li>
								</ul>
								<a href="#" class="panel-refresh"><i class="ion-refresh"></i></a>
								<a href="#" class="panel-close"><i class="ion-close"></i></a>
							</div> -->
						</div>
						<div class="panel-body padding-top-5">
							<div class="row">
								<div class="col-lg-12">
									<div id="placeholder" class="flot-placeholder height-50" style="display:none"></div>
									<c:forEach items="${sessionScope.dealgraph }" var="i"
										varStatus="j">
										<input type="hidden" value="${i[0] }" name="hdydata" />
										<input type="hidden" value="${i[1] }" name="hdxdata" />
									</c:forEach>
									<div id="myDiv"  class="flot-placeholder height-500">
										<!-- Plotly chart will be drawn inside this DIV -->
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- /.panel -->
				</div>
				<!-- /.col -->


			</div>
			<!-- /.row -->


			<div class="row">


				<div class="col-lg-4 col-md-6 col-sm-12 col-xs-12">
					<div class="panel">
						<div class="panel-title">
							<div class="panel-head">
								<i class="ion-chatbox-working"></i> Messages
							</div>
							
						</div>
						<div class="panel-body no-border no-padding">
							<!--Pie Chart  -->
							
							
						</div>
					</div>
					<!-- /.panel -->
				</div>
				<!-- /.col -->

				<div class="col-lg-4 col-md-6 col-sm-12 col-xs-12">

					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<!-- panel -->
							<div class="panel">
								<div class="panel-title">
									<div class="panel-head color-blue-grey-600">
										<i class="ion-archive"></i> Server Usage
									</div>
									<div class="panel-tools">
										<a href="#" class="panel-collapse"><i
											class="ion-arrow-up-b"></i></a>
									</div>
								</div>
								<div class="panel-body no-padding bg-white">
									<div
										class="padding-top-25 padding-left-20 padding-right-20 display-block font-size-18 color-blue-grey-600">
										<div class="row">
											<div class="col-lg-12">
												<span class="display-block font-size-12 height-25">Total
													Space:</span> <span class="bold font-size-24"
													data-toggle="counter" data-start="0" data-from="0"
													data-to="125" data-speed="500" data-refresh-interval="10"></span>
												<span class="bold">GB</span>
											</div>
											<div class="col-lg-12">
												<div
													class="progress progress-animation progress-xs margin-top-10 margin-bottom-15">
													<div class="progress-bar bg-green-500" role="progressbar"
														aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"
														style="width: 0%;">
														<span class="sr-only">60% Complete</span>
													</div>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-lg-4 font-size-12">
												<span class="display-block font-size-12 height-25">current:</span>
												<span class="bold font-size-22" data-toggle="counter"
													data-start="0" data-from="0" data-to="416" data-speed="500"
													data-refresh-interval="10"></span> MB
											</div>
											<div class="col-lg-4 font-size-12">
												<span class="display-block font-size-12 height-25">avaiable:</span>
												<span class="bold font-size-22" data-toggle="counter"
													data-start="0" data-from="0" data-to="50362"
													data-speed="500" data-refresh-interval="10"></span> KB
											</div>
										</div>
									</div>
									<div id="rickshaw-chart-demo" class="rickshaw margin-top-40">
										<div id="rickshaw-legend"></div>
									</div>
									<div
										class="panel-footer padding-md bg-green-300 no-border rickshaw-footer">
										<a href="#"
											class="btn btn-dark color-blue-grey-500 bg-white bold pull-left">clear
											cache <i class="ion-trash-b margin-left-5"></i>
										</a> <a href="#"
											class="btn btn-dark color-white bg-green-600 bold pull-right">manage
											files <i class="ion-document-text margin-left-5"></i>
										</a>
									</div>
								</div>
							</div>
							<!-- /.panel -->
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.col -->

				<div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
					<div class="panel todo">
						<div class="panel-title bg-white no-border">
							<div class="panel-head">
								<i class="ion-android-folder"></i> Todo Projects
							</div>
							<div class="panel-tools">
								<a href="#"><i class="ion-plus"></i></a>
							</div>
						</div>
						<div class="panel-body bg-bg-white no-padding">
							<div class="padding-15-20">
								<input type="text" class="form-control input-lg border-grey-300"
									Placeholder="New project" />
							</div>
							<ul class="todo">
								<li>
									<div class="checkbox checkbox-theme">
										<input type="checkbox" id="checkbox" value="1"> <label
											for="checkbox"><span
											class="label bg-red-500 margin-right-5">important</span>Write
											to community page</label>
										<div class="pull-right hidden-xs">
											<a href="#" class="color-blue-grey-500"><i
												class="ion-edit"></i></a> <a href="#"
												class="color-blue-grey-500 margin-left-10"><i
												class="ion-trash-b"></i></a>
										</div>
									</div>
								</li>
								<li>
									<div class="checkbox checkbox-theme">
										<input type="checkbox" id="checkbox2" value="1"> <label
											for="checkbox2"><span
											class="label bg-green-400 margin-right-5">new</span>Create
											new widgets and use</label>
										<div class="pull-right hidden-xs">
											<a href="#" class="color-blue-grey-500"><i
												class="ion-edit"></i></a> <a href="#"
												class="color-blue-grey-500 margin-left-10"><i
												class="ion-trash-b"></i></a>
										</div>
									</div>
								</li>
								<li>
									<div class="checkbox checkbox-theme">
										<input type="checkbox" id="checkbox6" value="1"
											checked="checked"> <label for="checkbox6">Check
											forum posts</label>
										<div class="pull-right">
											<a href="#" class="color-blue-grey-500"
												data-toggle="dropdown"><i class="ion-gear-b"></i></a>
											<ul class="dropdown-menu pull-right">
												<li><a href="#"><i class="ion-edit"></i> Edit </a></li>
												<li><a href="#"><i class="ion-trash-b"></i> Remove
												</a></li>
												<li><a href="#"><i class="ion-refresh"></i> Refresh
												</a></li>
											</ul>
										</div>
									</div>
								</li>
								<li>
									<div class="checkbox checkbox-theme">
										<input type="checkbox" id="checkbox8" value="1"> <label
											for="checkbox8"><span
											class="label bg-orange-500 margin-right-5">hot</span>Import
											new forum threads</label>
									</div>
								</li>
								<li>
									<div class="checkbox checkbox-theme">
										<input type="checkbox" id="checkbox9" value="1"
											checked="checked"> <label for="checkbox9">Build
											new layout</label>
									</div>
								</li>
							</ul>
						</div>
						<div class="panel-footer bg-grey-50">
							<a href="#"
								class="btn btn-dark color-white bg-blue-500 bold pull-left">see
								all tasks <i class="ion-more margin-left-5"></i>
							</a>
							<div class="pull-right">
								<div class="btn-group">
									<a href="#" class="btn btn-sm btn-white"><i
										class="fa fa-chevron-left"></i></a> <a href="#"
										class="btn btn-sm btn-white"><i
										class="fa fa-chevron-right"></i></a>
								</div>
							</div>
						</div>
					</div>
					<!-- /.panel -->
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->
			</div>
		</div>
		<!-- /.container-fluid -->
	</div>
	<!-- /.rightside -->
	</div>
	<!-- /.wrapper -->
	<!-- END CONTENT -->

	<!-- BEGIN JAVASCRIPTS -->

	<jsp:include page="js_plugin.jsp"></jsp:include>
	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->

<!-- Mirrored from maniac.yakuzi.eu/ by HTTrack Website Copier/3.x [XR&CO'2013], Sun, 01 Jan 2017 05:30:13 GMT -->
</html>