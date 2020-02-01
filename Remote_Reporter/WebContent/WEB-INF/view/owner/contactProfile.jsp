<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<!-- BEGIN HEAD -->

<!-- Mirrored from maniac.yakuzi.eu/basic-tables.html by HTTrack Website Copier/3.x [XR&CO'2013], Sun, 01 Jan 2017 05:31:12 GMT -->
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta content="" name="description" />
<meta content="" name="author" />
<title>Maniac - Data Tables</title>
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
<!-- END PLUGIN STYLES -->
<!-- BEGIN THEME STYLES -->
<link href="assets/css/material.css" rel="stylesheet" />
<link href="assets/css/style.css" rel="stylesheet" />
<link href="assets/css/helpers.css" rel="stylesheet" />
<link href="assets/css/plugins.css" rel="stylesheet" />
<link href="assets/css/responsive.css" rel="stylesheet" />
<!-- END THEME STYLES -->
<style>
* {
	font-family: "Source Sans Pro", "Helvetica Neue", Helvetica, Arial,
		sans-serif;
}

.text-base {
	font-size: 14px
}

.nav-tabs>li {
	margin-bottom: 2px
}
</style>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body>
	<!-- BEGIN HEADER -->
	<jsp:include page="header.jsp"></jsp:include>
	<!-- END HEADER -->

	<div class="wrapper">
		<!-- BEGIN LEFTSIDE -->
		<jsp:include page="menu.jsp"></jsp:include>
		<!-- END LEFTSIDE -->

		<!-- BEGIN RIGHTSIDE -->
		<div class="rightside bg-grey-100">

			<c:forEach items="${sessionScope.cplist}" var="i">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-4">

							<div class="panel-group">
								<div class="panel" style="height: 400px">
									<div class="image"
										style="position: relative; overflow: hidden; height: 230px;">
										<img src="assets/img/profile.jpg" class="img-rounded"
											width="100%" height="230px">
									</div>
									<div class="panel-body" style="padding: 11px">

										<div class="col-md-10">
											<h4>
												<i class="fa fa-user" style="margin-right: 5px"> </i>${i.firstName}
												${i.lastName}
											</h4>
										</div>
										<div class="col-md-2" style="padding-top: 11px;">

											<div class="btn-group open">

												<button type="button"
													class="btn btn-default dropdown-toggle"
													data-toggle="dropdown" aria-expanded="true">
													<span class="caret"></span> <span class="sr-only">Toggle
														Dropdown</span>
												</button>
												<ul class="dropdown-menu" role="menu">
													<li><a href="contactEdit.do?id=${i.contactid}"
														data-toggle="modal" data-target="#ModalForm"><i
															class="fa fa-edit" style="margin-right: 5px"></i>Edit</a></li>

													<!-- modal form -->
													<jsp:include page="contactModal.jsp"></jsp:include>

													<!-- end of modal form -->
													<li class="divider" style="margin: 0px"></li>

													<li><a href="#"><i class="fa fa-money"
															style="margin-right: 5px"></i>Add Deal</a></li>
													<li class="divider" style="margin: 0px"></li>
													<li><a href="contactDelete.do?id=${i.contactid}"><i
															class="fa fa-trash-o" style="margin-right: 5px"></i>Delete</a></li>
												</ul>
											</div>

										</div>


									</div>
									<div class="panel-body"
										style="padding: 11px; margin: -32px 0px 0px 11px;">
										<h4>
											<i class="fa fa-graduation-cap" style="margin-right: 5px"></i>Owner
										</h4>
										<h5 class="text-muted">
											<i class="fa fa-envelope"
												style="margin-right: 10px; margin-left: 5px"></i>${i.email}</h5>
										<h5 class="text-muted">
											<i class="fa fa-phone"
												style="margin-right: 10px; margin-left: 5px"></i>${i.phone}</h5>
									</div>
								</div>

								<div class="panel panel-default" style="height: 100px">

									<div class="panel-body">
										<small class="text-muted text-base">Company Name</small>

										<div>
											<small class="text-base"><a href="#"
												class="btn btn-link"><h4>${i.ownerCompanyVo.companyName}</h4></a></small>
										</div>

									</div>
								</div>

								<div class="panel panel-default" style="height: 100px">

									<div class="panel-body">
										<small class="text-muted text-base">Tags</small>

										<div style="padding-top: 5px">
											<small class="text-base"><a href="#"
												class="btn btn-default btn-xs">${i.tags } <i
													class="fa fa-times"></i></a></small>

										</div>

									</div>
								</div>

								<div class="panel panel-default" style="height: auto">
									<div class="panel-body">
										<small class="text-muted text-base">Address</small>
										<div class="custom-color text-xs">
											<h5>${i.address}</h5>
										</div>

									</div>
								</div>
							</div>

						</div>

						<!--NOTE MODAL FORM START  -->

						<div class="modal fade" id="ContactNoteModalForm" tabindex="-1"
							role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"
							style="display: none;">
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
											action="addcontactNote.do" method="post"
											modelAttribute="ownerprofile">
											<f:input type="hidden" value="${i.contactid }"
												path="ownerContactVo.contactid" />
											<div class="form-group">
												<label for="subject" class="control-label col-lg-3">Subject</label>
												<div class="col-lg-8">
													<f:input class="form-control" data-bv-field="Subject"
														path="ContactNoteSubject" id="subject" />
												</div>
											</div>

											<div class="form-group">
												<label for="noteDesc" class="control-label col-lg-3">Description</label>
												<div class="col-lg-8">
													<f:textarea class="form-control"
														data-bv-field="description" path="ContactNoteDesc"
														id="noteDesc"></f:textarea>
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

						<div class="col-md-8">
							<div class="panel" style="height: auto">
								<div class="container-fluid">

									<ul class="nav nav-tabs">
										<!-- <li class="active"><a data-toggle="tab" href="#home" class="btn btn-default">Timeline</a></li> -->

										<li class="active"><a data-toggle="tab" href="#menu2"
											class="btn btn-default ">Deals</a></li>
										<li><a data-toggle="tab" href="#menu3"
											class="btn btn-default">Note</a></li>
										<li><a data-toggle="tab" href="#menu4"
											class="btn btn-default">Task</a></li>
									</ul>

									<div class="tab-content">

										<div id="menu2" class="tab-pane fade in active">
											<h4>Deals from ${i.firstName } ${i.lastName}</h4>
											<c:forEach items="${sessionScope.dealContactlist }"
												var="deal">


												<li class="list-group-item list-group-item"
													style="background-color: #eaeef0;"><input
													type="hidden" value="${deal.dealid }" name="id" />
													<div style="float: left">
														<h4>
															<a class="text-info"
																href="viewDealProfile.do?id=${deal.dealid}">${deal.dealName}</a>
														</h4>
													</div>
													<div style="float: right">
														<a href="#" onclick="fnedit(${deal.dealid })"
															data-toggle="modal" data-target="#ModalForm2"><i
															class="fa fa-edit"></i></a> <a
															href="deleteDeal.do?id=${deal.dealid }"><i
															class="fa fa-trash"></i></a>
													</div>
													<div class="clearfix"></div>
													<div style="margin-bottom: 7px">
														<span style="font-size: 15px;" class="text-muted"><b>${deal.dealValue }</b></span>
														<span style="border: 1px solid #d5d5d5; margin-left: 4px;"></span>
														<a class="text-info" href="#"
															style="font-size: 15px; margin-left: 4px;"><b>${deal.ownerContactVo.firstName}
																${deal.ownerContactVo.lastName}</b></a>
													</div>

													<div>
														<i class="fa fa-clock-o" style="margin-right: 5px"></i>Close
														Date : ${deal.closeDate }
													</div></li>


											</c:forEach>
										</div>

										<div id="menu3" class="tab-pane fade">
											<h5 class="text-muted text-center">you can save specific
												informaton about contact as a Note..</h5>
											<div class="col-md-4"></div>
											<div class="col-md-4"></div>
											<div class="col-md-4">
												<button type="submit" style="float: right"
													class="btn btn-dark bg-light-blue-300 color-white "
													data-toggle="modal" data-target="#ContactNoteModalForm">
													<i class="fa fa-plus-square" style="margin-right: 5px"></i>Add
													Note
												</button>
											</div>
											<div class="clearfix"></div>
											<c:forEach items="${sessionScope.noteContactlist}" var="note">
												<div style="margin-top: 18px;">
													<div class="col-md-11">
														<blockquote>
															<p>${note.contactNoteSubject }</p>
															<small><cite title="Source Title">${note.contactNoteDesc }</cite></small>
														</blockquote>
													</div>
													<div class="col-md-1" style="top: 10px">
														<a
															href="noteContactDelete.do?noteid=${note.contactNoteid }&id=${i.contactid}"><i
															class="fa fa-remove"></i></a>
													</div>
												</div>
											</c:forEach>

										</div>


										<div id="menu4" class="tab-pane fade">
											<h3>Add task related to deal</h3>
											<p>Eaque ipsa quae ab illo inventore veritatis et quasi
												architecto beatae vitae dicta sunt explicabo.</p>
										</div>

									</div>
								</div>
							</div>
						</div>


					</div>
					<!-- footer -->
					<jsp:include page="footer.jsp"></jsp:include>
					<!-- foooter -->
				</div>
			</c:forEach>


		</div>
		<!-- /.rightside -->

	</div>
	<!-- /.wrapper -->
	<!-- END CONTENT -->

	<!-- BEGIN JAVASCRIPTS -->
	<!-- BEGIN CORE PLUGINS -->
	<jsp:include page="js_plugin.jsp"></jsp:include>
	<!-- google map -->
	<script src="http://maps.google.com/maps/api/js?sensor=true"></script>
	<script src="assets/plugins/gmaps/prettify.js"></script>
	<script src="assets/plugins/gmaps/gmaps.js"></script>

	<!-- maniac -->
	<script src="assets/js/maniac.js" type="text/javascript"></script>
	<script type="text/javascript">
		maniac.loadgooglemap();
	</script>
	<!-- END CORE PLUGINS -->
</body>
<!-- END BODY -->

<!-- Mirrored from maniac.yakuzi.eu/basic-tables.html by HTTrack Website Copier/3.x [XR&CO'2013], Sun, 01 Jan 2017 05:31:12 GMT -->
</html>
<!-- <table>
		<c:forEach items="${sessionScope.cplist}" var="i">
		<tr>
		
		<td>${i.firstName}</td>
		<td>${i.lastName}</td>
		
		</tr>
		</c:forEach>
			</table>
		 -->