<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta content="" name="description" />
<meta content="" name="author" />

<title>Deal Profile</title>

<!-- BEGIN CORE FRAMEWORK -->
<link href="assets/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" />
<link href="assets/plugins/ionicons/css/ionicons.min.css"
	rel="stylesheet" />
<link href="assets/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" />
<!-- END CORE FRAMEWORK -->

<!-- BEGIN THEME STYLES -->
<link href="assets/css/material.css" rel="stylesheet" />
<link href="assets/css/style.css" rel="stylesheet" />
<link href="assets/css/helpers.css" rel="stylesheet" />
<link href="assets/css/plugins.css" rel="stylesheet" />
<link href="assets/css/responsive.css" rel="stylesheet" />
<!-- END THEME STYLES -->
<style type="text/css">
* {
	font-family: "Source Sans Pro", "Helvetica Neue", Helvetica, Arial,
		sans-serif;
}
</style>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="fixed-header">
	<!-- BEGIN HEADER -->
	<jsp:include page="header.jsp"></jsp:include>
	<!-- END HEADER -->

	<div class="wrapper">
		<!-- BEGIN LEFTSIDE -->
		<jsp:include page="menu.jsp"></jsp:include>
		<!-- END LEFTSIDE -->

		<!-- BEGIN RIGHTSIDE -->
		<div class="rightside bg-grey-50">
			<!-- BEGIN PAGE HEADING -->

			<div class="container-fluid">
				<c:forEach items="${sessionScope.dealprofile }" var="deal">
					<div class="row">
						<div class="col-md-4">
							<div class="panel-group">
								<div class="panel" style="height: auto">


									<div class="panel-body" style="padding: 11px">
										<div class="col-md-10">
											<blockquote
												style="padding: 9px 18px; margin: -5px -26px 20px; font-size: 17.5px; border-left: 5px solid #92afc880;">
												<p style="font-size: 25px">${deal.dealName}</p>
												<small>${deal.dealDesc}</small>
											</blockquote>

										</div>
										<!-- <div class="col-md-2" style="padding-top: 11px;">
											
											<div class="btn-group open">
                                           
                                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
                                                <span class="caret"></span>
                                                <span class="sr-only">Toggle Dropdown</span>
                                            </button>
                                            <ul class="dropdown-menu" role="menu">
                                                <li><a href="#"><i class="fa fa-edit" style="margin-right:5px"></i>Edit</a></li>
                                                <li class="divider" style="margin: 0px"></li>
                                                <li><a href="#"><i class="fa fa-tasks" style="margin-right:5px"></i>Add Task</a></li>
                                                <li><a href="#"><i class="fa fa-money" style="margin-right:5px"></i>Add Deal</a></li>
												<li class="divider" style="margin: 0px"></li>
                                                <li><a href="#"><i class="fa fa-trash-o" style="margin-right:5px"></i>Delete</a></li>
                                            </ul>
                                        </div>	
												
											</div>
											
											 -->
									</div>
									<div class="panel-body"
										style="padding: 11px; margin: -32px 0px 0px 11px;">
										<dl class="dl-horizontal"
											style="margin-left: 15px; margin-top: 41px;">
											<dt
												style="font-size: 15px; text-align: left; width: 90px; font-weight: 694">Deal
												Value</dt>
											<dd style="margin-left: 108px; font-size: 15px">${deal.dealValue}</dd>

											<dt
												style="font-size: 15px; text-align: left; width: 90px; font-weight: 694">Milestone</dt>
											<dd style="margin-left: 108px; font-size: 15px">${deal.milestone}</dd>

											<dt
												style="font-size: 15px; text-align: left; width: 90px; font-weight: 694">Created
												Date</dt>
											<dd style="margin-left: 108px; font-size: 15px">${deal.dealDate}</dd>

											<dt
												style="font-size: 15px; text-align: left; width: 90px; font-weight: 694">Close
												Date</dt>
											<dd style="margin-left: 108px; font-size: 15px">${deal.closeDate }</dd>

										</dl>
									</div>
								</div>

								<div class="panel panel-default" style="height: 100px">

									<div class="panel-body">
										<small class="text text-base" style="font-size: 15px">Related
											To</small>

										<div>
											<small class="text-base"><a
												href="contactProfile.do?id=${i.ownerContactVo.contactid }"
												class="btn btn-link"><h4>${deal.ownerContactVo.firstName}
														${deal.ownerContactVo.lastName }</h4></a></small>
										</div>

									</div>
								</div>

								<div class="panel panel-default" style="height: 100px">

									<div class="panel-body">
										<small class="text text-base" style="font-size: 15px">Tags</small>

										<div style="padding-top: 5px">

											<small class="text-base"><a href="#"
												class="btn btn-default btn-xs">${deal.tags}<i
													class="fa fa-times"></i></a></small>

										</div>

									</div>
								</div>

								<div class="panel panel-default" style="height: auto">
									<div class="panel-body">
										<small class="text text-base" style="font-size: 15px">Owner</small>
										<div class="custom-color text-xs">
											<h5>Manan</h5>
										</div>

									</div>
								</div>
							</div>
						</div>
						<div class="col-md-8">
							<div class="panel" style="height: 740px">
								<div class="container-fluid">

									<ul class="nav nav-tabs">

										<li class="active"><a data-toggle="tab" href="#menu1"
											class="btn btn-default">Task</a></li>

										<li><a data-toggle="tab" href="#menu2"
											class="btn btn-default">Note</a></li>
									</ul>

									

										<!--NOTE MODAL FORM START  -->

										<div class="modal fade" id="#DealNoteModalForm"
											tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
											aria-hidden="true" style="display: none;">
											<div class="modal-dialog">
												<div class="modal-content">
													<div class="modal-header no-border">
														<button type="button" class="close" data-dismiss="modal">
															<span aria-hidden="true">×</span><span class="sr-only">Close</span>
														</button>
														<h4 class="modal-title" id="myModalLabel">
															<i class="fa fa-edit"></i> Add Note
														</h4>
													</div>
													<div class="modal-body no-padding">

														<f:form class="form-horizontal padding-md" role="form"
															action="adddealNote.do" method="post"
															modelAttribute="dealprofile">
															<f:input type="hidden" value="${deal.dealid }" path="delvo.dealid" /> 
															<div class="form-group">
																<label for="subject" class="control-label col-lg-3">Subject</label>
																<div class="col-lg-8">
																	<f:input class="form-control" data-bv-field="Subject" path="dealNoteSubject" id="dealNoteSubject" />
																</div>
															</div>

															<div class="form-group">
																<label for="noteDesc" class="control-label col-lg-3">Description</label>
																<div class="col-lg-8">
																	<f:textarea class="form-control" data-bv-field="description" path="dealNoteDesc" id="dealNoteDesc"></f:textarea>
																</div>
															</div>

															<div class="modal-footer">
																<button type="submit" class="btn btn-success">Add</button>
															</div>
														</f:form>
													</div>

												</div>
											</div>
										</div>

										<!--NOTE MODAL FORM END  -->

										<div id="menu2" class="tab-pane fade">
											<h5 class="text-muted text-center">you can save specific
												informaton about deal as a Note..</h5>
											<div class="col-md-4"></div>
											<div class="col-md-4"></div>
											<div class="col-md-4">
												<button type="submit" style="float: right"
													class="btn btn-dark bg-light-blue-300 color-white "
													data-toggle="modal" data-target="#DealNoteModalForm">
													<i class="fa fa-plus-square" style="margin-right: 5px"></i>Add
													Note
												</button>
											</div>
											<div class="clearfix"></div>
											<c:forEach items="${sessionScope.noteDeallist}" var="note">
												<div style="margin-top: 18px;">
													<div class="col-md-11">
														<blockquote>
															<p>${note.dealNoteSubject }</p>
															<small><cite title="Source Title">${note.dealNoteDesc }</cite></small>
														</blockquote>
													</div>
													<div class="col-md-1" style="top: 10px">
														<a href="#"><i class="fa fa-remove"></i></a>
													</div>
												</div>
											</c:forEach>

										</div>


									</div>
								</div>
							</div>
						</div>


					</div>
					<!-- footer -->

					<jsp:include page="footer.jsp"></jsp:include>

					<!-- foooter -->
				</c:forEach>
			</div>


			<!-- END PAGE HEADING -->
			<div class="container-fluid"></div>
			<!-- /.container-fluid -->
		</div>
		<!-- /.rightside -->
	</div>
	<!-- /.wrapper -->
	<!-- END CONTENT -->

	<!-- BEGIN JAVASCRIPTS -->
	<!-- BEGIN CORE PLUGINS -->
	<script src="assets/plugins/jquery-1.11.1.min.js"
		type="text/javascript"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js"
		type="text/javascript"></script>
	<script src="assets/plugins/bootstrap/js/holder.js"></script>
	<script src="assets/plugins/pace/pace.min.js" type="text/javascript"></script>
	<script src="assets/plugins/slimScroll/jquery.slimscroll.min.js"
		type="text/javascript"></script>
	<script src="assets/js/core.js" type="text/javascript"></script>
	<!-- END CORE PLUGINS -->
	<!-- maniac -->
	<script src="assets/js/maniac.js" type="text/javascript"></script>
	<!-- sliders -->
	<script type="text/javascript">
</script>
</body>
<!-- END BODY -->

<!-- Mirrored from maniac.yakuzi.eu/blank.html by HTTrack Website Copier/3.x [XR&CO'2013], Sun, 01 Jan 2017 05:31:31 GMT -->
</html>
</body>
</html>