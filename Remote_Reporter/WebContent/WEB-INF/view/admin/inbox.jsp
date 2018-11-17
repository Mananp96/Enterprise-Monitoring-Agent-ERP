<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<!-- BEGIN HEAD -->

<!-- Mirrored from maniac.yakuzi.eu/inbox.html by HTTrack Website Copier/3.x [XR&CO'2013], Sun, 01 Jan 2017 05:31:01 GMT -->
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
	<meta content="" name="description"/>
	<meta content="" name="author"/>
	
	<title>Maniac- Inbox</title>
	
	<!-- BEGIN CORE FRAMEWORK -->
	<link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="assets/plugins/ionicons/css/ionicons.min.css" rel="stylesheet" />
	<link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
	<!-- END CORE FRAMEWORK -->
	
	<!-- BEGIN THEME STYLES -->
	<link href="assets/css/material.css" rel="stylesheet" />
	<link href="assets/css/style.css" rel="stylesheet" />
	<link href="assets/css/plugins.css" rel="stylesheet" />
	<link href="assets/css/helpers.css" rel="stylesheet" />
	<link href="assets/css/responsive.css" rel="stylesheet" />
	<!-- END THEME STYLES -->
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="fixed-leftside">
	<!-- BEGIN HEADER -->
	<jsp:include page="header.jsp"></jsp:include>
	<!-- END HEADER -->
		 
	<div class="wrapper">
		<!-- BEGIN LEFTSIDE -->
        <jsp:include page="menu.jsp"></jsp:include>
		<!-- END LEFTSIDE -->

		<!-- BEGIN RIGHTSIDE -->
        <div class="rightside bg-white">
			<!-- BEGIN PAGE HEADING -->
            <div class="page-head bg-grey-100 margin-bottom-20">
				<h1 class="page-title">Mailbox<small>read your messages at here</small></h1>
				<!-- BEGIN BREADCRUMB -->
				<ol class="breadcrumb">
					<li><a href="#"><i class="ion-home margin-right-5"></i> Dashboard</a></li>
					<li class="active">Inbox</li>
				</ol>
				<!-- END BREADCRUMB -->
			</div>
			<!-- END PAGE HEADING -->

            <div class="container-fluid">
				 <div class="mailbox row">
						
						<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12"> 
							<a href="#" class="btn btn-block bg-green-500 color-white padding-sm"><span class="bold">compose</span> <i class="ion-compose margin-left-10"></i></a>
							<ul class="nav nav-pills nav-stacked margin-top-20">
								<li class="active"><a href="#" class="bg-blue-400"><i class="ion-email"></i> Inbox <span class="label bg-blue-800 padding-10 label-rounded pull-right">15</span></a></li>
								<li><a href="#" class="bg-"><i class="ion-paper-airplane"></i> Sent mail</a></li>
                                <li><a href="#"><i class="ion-trash-b"></i> Draft <span class="label bg-light-blue-400 padding-10 label-rounded pull-right">4</span></a></li>
                                <li><a href="#"><i class="ion-ios-star"></i> Important</a></li>
								<li><a href="#"><i class="ion-android-folder"></i> Spam</a></li>
                            </ul>
							
							<div class="margin-top-40 margin-bottom-30">
								<h5>Tags</h5>
								<ul class="list-unstyled">
									<li><a href="#" class="padding-sm display-block bg-grey-50 border-radius-3 margin-bottom-5 color-grey-700"><i class="ion-record color-green-500 margin-right-5 font-size-10"></i> Business</a></li>
									<li><a href="#" class="padding-sm display-block bg-grey-50 border-radius-3 margin-bottom-5 color-grey-700"><i class="ion-record color-green-500 margin-right-5 font-size-10"></i> Global</a></li>
									<li><a href="#" class="padding-sm display-block bg-grey-50 border-radius-3 margin-bottom-5 color-grey-700"><i class="ion-record color-red-500 margin-right-5 font-size-10"></i> Maniac</a></li>
									<li><a href="#" class="padding-sm display-block bg-grey-50 border-radius-3 margin-bottom-5 color-grey-700"><i class="ion-record color-orange-500 margin-right-5 font-size-10"></i> Social</a></li>
									<li><a href="#" class="padding-sm display-block bg-grey-50 border-radius-3 margin-bottom-5 color-grey-700"><i class="ion-record color-grey-500 margin-right-5 font-size-10"></i> Client</a></li>
								</ul>
							</div>
                         </div>
										
						<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12" > 
							<div class="panel no-shadow no-margin no-radius">
								<div class="panel-title no-padding-top no-padding-left no-padding-right bg-white no-radius">
									<div class="panel-head font-size-20">Inbox</div>
									<div class="panel-tools">
										<a href="#" data-toggle="dropdown"><i class="ion-gear-a"></i></a>  
										<ul class="dropdown-menu pull-right margin-right-10">
											<li>
												<a href="#"><i class="ion-gear-a"></i> Settings </a>
											</li>
											<li>
												<a href="#"><i class="ion-ios-printer"></i> Print </a>
											</li>
											<li>
												<a href="#"><i class="ion-refresh"></i> Refresh </a>
											</li>
											<li class="divider"></li>
											<li>
												<a href="#" class="clearfix"><span class="pull-left">New Mails</span> <span class="label bg-teal-500 pull-right">3</span></a>
											</li>
											<li>
												<a href="#" class="clearfix"><span class="pull-left">Total</span> <span class="label bg-red-500 pull-right">2</span></a>
											</li>
										</ul>
										<a href="#" class="panel-refresh"><i class="ion-refresh"></i></a>
										<a href="#"><i class="ion-plus"></i></a>
									</div>
								</div>
                                <div class="panel-body no-padding"> 
											<div class="padding-xs no-margin clearfix">
												<div class="pull-left">
														<div class="btn-group">
															<button type="button" class="btn btn-white no-radius dropdown-toggle" data-toggle="dropdown">Actions <i class="fa fa-caret-down"></i></button>
															<ul class="dropdown-menu">
																<li><a href="#">Mark as read</a></li>
																<li><a href="#">Mark as unread</a></li>
																<li><a href="#">Delete</a></li>
															</ul>
														</div>
														<button type="button" class="btn btn-white no-radius"><i class="fa fa-check"></i></button>
														<button type="button" class="btn btn-white no-radius"><i class="fa fa-trash-o"></i></button>
														<button type="button" class="btn btn-white no-radius"><i class="fa fa-times"></i></button>
												</div>
												 <div class="btn-inline hidden-xs pull-right">
													<input class="form-control bg-white no-border padding-right-25 no-shadow" placeholder="Search message..."/>
													<button class="btn btn-link no-shadow bg-transparent no-padding"><i class="ion-search"></i></button>
												</div>
											</div>
											
                                            <div class="table-responsive">
                                                <table class="table table-striped no-border table-hover no-margin">
                                                    <tr class="unread">
                                                        <td class="small"><div class="checkbox checkbox-theme no-margin"><input type="checkbox" id="checkbox"><label for="checkbox" class="no-padding"></label></div></td>
                                                        <td class="small"><i class="ion-ios-star color-orange-500"></i></td>
                                                        <td class="name">Randolph Kit</td>
                                                        <td class="subject"><a href="#">Lorem ipsum dolor sit amet, consectetuer adipiscing elit</a></td>
                                                        <td class="time"><i class="fa fa-paperclip"></i> 11:00 AM</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="small"><div class="checkbox checkbox-theme no-margin"><input type="checkbox" id="checkbox2"><label for="checkbox2" class="no-padding"></label></div></td>
                                                        <td class="small"><i class="ion-android-star-outline color-orange-500"></i></td>
                                                        <td class="name">Twitter</td>
                                                        <td class="subject"><a href="#">Morbi nec nunc condimentum, egestas </a></td>
                                                        <td class="time">10:30 PM</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="small"><div class="checkbox checkbox-theme no-margin"><input type="checkbox" id="checkbox3"><label for="checkbox3" class="no-padding"></label></div></td>
                                                        <td class="small"><i class="ion-android-star-outline color-orange-500"></i></td>
                                                        <td class="name">Jean Grey</td>
                                                        <td class="subject"><a href="#">uis non malesuada est, quis congue nibh</a></td>
                                                        <td class="time">10:13 AM</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="small"><div class="checkbox checkbox-theme no-margin"><input type="checkbox" id="checkbox4"><label for="checkbox4" class="no-padding"></label></div></td>
                                                        <td class="small"><i class="ion-android-star-outline color-orange-500"></i></td>
                                                        <td class="name">Twitter</td>
                                                        <td class="subject"><a href="#">Lorem ipsum dolor sit amet</a></td>
                                                        <td class="time">07:34 AM</td>
                                                    </tr>
                                                    <tr class="unread">
                                                        <td class="small"><div class="checkbox checkbox-theme no-margin"><input type="checkbox" id="checkbox5"><label for="checkbox5" class="no-padding"></label></div></td>
                                                        <td class="small"><i class="ion-ios-star color-orange-500"></i></td>
                                                        <td class="name">Barry Allen</td>
                                                        <td class="subject"><a href="#">Is non malesuada est</a></td>
                                                        <td class="time">10:31 AM</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="small"><div class="checkbox checkbox-theme no-margin"><input type="checkbox" id="checkbox6"><label for="checkbox6" class="no-padding"></label></div></td>
                                                        <td class="small"><i class="ion-ios-star color-orange-500"></i></td>
                                                        <td class="name">Jill Doe</td>
                                                        <td class="subject"><a href="#">Morbi nec nunc condimentum...</a></td>
                                                        <td class="time">11:50 PM</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="small"><div class="checkbox checkbox-theme no-margin"><input type="checkbox" id="checkbox7"><label for="checkbox7" class="no-padding"></label></div></td>
                                                        <td class="small"><i class="ion-ios-star color-orange-500"></i></td>
                                                        <td class="name">Jeremy Doe</td>
                                                        <td class="subject"><a href="#">Morbi nec nunc condimentum, egestas </a></td>
                                                        <td class="time"><i class="fa fa-paperclip"></i> 10:30 PM</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="small"><div class="checkbox checkbox-theme no-margin"><input type="checkbox" id="checkbox8"><label for="checkbox8" class="no-padding"></label></div></td>
                                                        <td class="small"><i class="ion-android-star-outline color-orange-500"></i></td>
                                                        <td class="name">Jill Doe</td>
                                                        <td class="subject"><a href="#">uis non malesuada est, quis congue nibh</a></td>
                                                        <td class="time">10:13 AM</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="small"><div class="checkbox checkbox-theme no-margin"><input type="checkbox" id="checkbox9"><label for="checkbox9" class="no-padding"></label></div></td>
                                                        <td class="small"><i class="ion-ios-star-half color-orange-500"></i></td>
                                                        <td class="name">Jeremy Doe</td>
                                                        <td class="subject"><a href="#">Lorem ipsum dolor sit amet</a></td>
                                                        <td class="time"><i class="fa fa-paperclip"></i> 07:34 AM</td>
                                                    </tr>
													 <tr class="unread">
                                                        <td class="small"><div class="checkbox checkbox-theme no-margin"><input type="checkbox" id="checkbox10"><label for="checkbox10" class="no-padding"></label></div></td>
                                                        <td class="small"><i class="ion-android-star-outline color-orange-500"></i></td>
                                                        <td class="name">Jeremy Doe</td>
                                                        <td class="subject"><a href="#">Lorem ipsum dolor sit amet</a></td>
                                                        <td class="time">07:34 AM</td>
                                                    </tr>  <tr>
                                                        <td class="small"><div class="checkbox checkbox-theme no-margin"><input type="checkbox" id="checkbox11"><label for="checkbox11" class="no-padding"></label></div></td>
                                                        <td class="small"><i class="ion-android-star-outline color-orange-500"></i></td>
                                                        <td class="name">Jeremy Doe</td>
                                                        <td class="subject"><a href="#">Morbi nec nunc condimentum, egestas </a></td>
                                                        <td class="time">10:30 PM</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="small"><div class="checkbox checkbox-theme no-margin"><input type="checkbox" id="checkbox12"><label for="checkbox12" class="no-padding"></label></div></td>
                                                        <td class="small"><i class="ion-android-star-outline color-orange-500"></i></td>
                                                        <td class="name">Jill Doe</td>
                                                        <td class="subject"><a href="#">uis non malesuada est, quis congue nibh</a></td>
                                                        <td class="time">10:13 AM</td>
                                                    </tr>
													 <tr>
                                                        <td class="small"><div class="checkbox checkbox-theme no-margin"><input type="checkbox" id="checkbox13"><label for="checkbox13" class="no-padding"></label></div></td>
                                                        <td class="small"><i class="ion-android-star-outline color-orange-500"></i></td>
                                                        <td class="name">Jeremy Doe</td>
                                                        <td class="subject"><a href="#">Morbi nec nunc condimentum, egestas </a></td>
                                                        <td class="time">10:30 PM</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="small"><div class="checkbox checkbox-theme no-margin"><input type="checkbox" id="checkbox14"><label for="checkbox14" class="no-padding"></label></div></td>
                                                        <td class="small"><i class="ion-android-star-outline color-orange-500"></i></td>
                                                        <td class="name">Jill Doe</td>
                                                        <td class="subject"><a href="#">uis non malesuada est, quis congue nibh</a></td>
                                                        <td class="time">10:13 AM</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="small"><div class="checkbox checkbox-theme no-margin"><input type="checkbox" id="checkbox15"><label for="checkbox15" class="no-padding"></label></div></td>
                                                        <td class="small"><i class="ion-android-star-outline color-orange-500"></i></td>
                                                        <td class="name">Jeremy Doe</td>
                                                        <td class="subject"><a href="#">Lorem ipsum dolor sit amet</a></td>
                                                        <td class="time">07:34 AM</td>
                                                    </tr>
                                                </table>
                                            </div><!-- /.table-responsive -->
                                </div>
								<div class="panel-footer padding-top-20 padding-bottom-20 no-padding-left no-padding-right bg-white no-radius">
									<ul class="pagination pull-left no-margin">
										<li><a href="#">&laquo;</a></li>
										<li><a href="#">1</a></li>
										<li><a href="#">2</a></li>
										<li><a href="#">3</a></li>
										<li><a href="#">4</a></li>
										<li><a href="#">5</a></li>
										<li><a href="#">&raquo;</a></li>
									</ul>
												
									<div class="pull-right">
										<span class="margin-right-10 hidden-xs"><span class="bold">1-30</span> of 543</span>
										<button class="btn btn-default bg-white"><i class="fa fa-chevron-left"></i></button>
										<button class="btn btn-default bg-white"><i class="fa fa-chevron-right"></i></button>
									</div>
                                </div>
                            </div><!-- /.panel -->
						</div><!-- /.col -->
					</div><!-- /.row -->
				<!-- BEGIN FOOTER -->
				<jsp:include page="footer.jsp"></jsp:include>
				<!-- END FOOTER -->
            </div><!-- /.container-fluid -->
        </div><!-- /.rightside -->
    </div><!-- /.wrapper -->
	<!-- END CONTENT -->
			
	<!-- BEGIN JAVASCRIPTS -->
	
	<!-- BEGIN CORE PLUGINS -->
	<script src="assets/plugins/jquery-1.11.1.min.js" type="text/javascript"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="assets/plugins/bootstrap/js/holder.js"></script>
	<script src="assets/plugins/pace/pace.min.js" type="text/javascript"></script>
	<script src="assets/plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script>
	<script src="assets/js/core.js" type="text/javascript"></script>
	<!-- END CORE PLUGINS -->
	
	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->

<!-- Mirrored from maniac.yakuzi.eu/inbox.html by HTTrack Website Copier/3.x [XR&CO'2013], Sun, 01 Jan 2017 05:31:01 GMT -->
</html>