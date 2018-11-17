<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<!-- BEGIN HEAD -->

<!-- Mirrored from maniac.yakuzi.eu/form-validation.html by HTTrack Website Copier/3.x [XR&CO'2013], Sun, 01 Jan 2017 05:31:04 GMT -->
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
	<meta content="" name="description"/>
	<meta content="" name="author"/>
	
	<title>Maniac - Form Validation</title>
	
	<!-- BEGIN CORE FRAMEWORK -->
	<link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="assets/plugins/ionicons/css/ionicons.min.css" rel="stylesheet" />
	<link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
	<!-- END CORE FRAMEWORK -->
	
	<!-- BEGIN PLUGIN STYLES -->
	<link href="assets/plugins/bootstrapValidator/bootstrapValidator.min.css" rel="stylesheet" />
	<!-- END PLUGIN STYLES -->
	
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
<body class="fixed-header">
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
            <div class="page-head">
				<h1 class="page-title">Form Validation<small>small text goes here</small></h1>
				<!-- BEGIN BREADCRUMB -->
				<ol class="breadcrumb">
					<li><a href="#"><i class="ion-home margin-right-5"></i> Dashboard</a></li>
					<li><a href="#">Forms</a></li>
					<li class="active">Form Validation</li>
				</ol>
				<!-- END BREADCRUMB -->
			</div>
			<!-- END PAGE HEADING -->

            <div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
                      <div class="panel">
                            <div class="panel-title bg-transparent">
								<div class="panel-head">Form Validation</div>
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
                                    </ul>
									<a href="#" class="panel-refresh"><i class="ion-refresh"></i></a>
									<a href="#" class="panel-close"><i class="ion-close"></i></a>
								</div>
							</div>
							<div class="text-center padding-left-20 padding-right-20 margin-bottom-20 border-bottom-1 border-grey-100">
								<h3 class="color-grey-700 margin-top-30">Registration Form</h3>
								<p class="text-light margin-bottom-30">Individual form controls automatically receive some global styling.</p>
							</div>
							<form role="form" class="form-horizontal" id="registerForm">
							<div class="row">
								<div class="col-lg-8 col-lg-offset-2">
										<div class="panel-body padding-bottom-40 padding-left-20 padding-right-20">
											  <div class="form-group">
												<label for="username" class="control-label col-lg-2">Username</label>
												<div class="col-lg-8">
													<input type="text" class="form-control" id="username" name="username">
												</div>
											  </div>
											  <div class="form-group">
												<label for="email" class="control-label col-lg-2">Email address</label>
												<div class="col-lg-8">
													<input type="text" class="form-control" id="email" name="email">
												</div>
											  </div>
											  <div class="form-group">
													<label for="password" class="control-label col-lg-2">Password</label>
													<div class="col-lg-6">
														<input id="password" type="password" class="form-control" name="password" value="Sample Password">
													</div>	
										      </div>
											  <div class="form-group">
													<label for="repeat-password" class="control-label col-lg-2">Repeat Password</label>
													<div class="col-lg-6">
														<input id="repeat-password" type="password" class="form-control" name="confirmPassword" value="Sample Password">
													</div>
											  </div>
											  <div class="form-group">
												<label for="phone" class="control-label col-lg-2">Phone</label>
												<div class="col-lg-4">
													<input id="phone" type="text" class="form-control" name="phoneNumber">
												</div>
											  </div>
										</div>
								</div>
							</div>
							<div class="text-center padding-top-20 padding-bottom-20 border-top-1 border-grey-100">
								<button type="submit" class="btn bg-orange-500 color-white btn-dark margin-right-10 padding-left-40 padding-right-40">Cancel</button>
								<button type="submit" class="btn bg-green-500 color-white btn-dark padding-left-40 padding-right-40">Register</button>
							</div>
							</form>
						</div>
					</div><!-- /.col -->
				</div><!-- /.row -->
				
				<div class="row">
					<div class="col-lg-6">
                      <div class="panel">
                            <div class="panel-title bg-transparent">
								<div class="panel-head">Form Validation</div>
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
                                    </ul>
									<a href="#" class="panel-refresh"><i class="ion-refresh"></i></a>
									<a href="#" class="panel-close"><i class="ion-close"></i></a>
								</div>
							</div>
							<div class="text-center padding-left-20 padding-right-20 margin-bottom-20 border-bottom-1 border-grey-100">
								<h3 class="color-grey-700 margin-top-30">Contact Form</h3>
								<p class="text-light margin-bottom-40">Individual form controls automatically receive some global styling.</p>
							</div>
							<div class="row">
								<div class="col-lg-8 col-lg-offset-2">
									<form role="form" id="contactForm">
										<div class="panel-body padding-bottom-40 padding-left-20 padding-right-20 ">
											<div class="form-group">
												<label for="name" class="control-label">Name</label>
												<input type="text" class="form-control" name="name">
											</div>
											<div class="form-group">
												<label for="email-address" class="control-label">Email address</label>
												<input type="text" class="form-control" id="email-address" name="email">
											</div>
											<div class="form-group">
												<label for="website" class="control-label">Website</label>
												<input type="text" class="form-control" name="website" id="website">
										    </div>
											<div class="form-group">
												<label for="message" class="control-label">Message</label>
												<textarea class="form-control" name="Contactmessage" rows="6" id="message"></textarea>
											</div>
											 
											<div class="text-center margin-top-20 padding-top-20 border-top-1 border-grey-100">
											  <button type="submit" class="btn bg-green-500 color-white btn-dark btn-block">Send message</button>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div><!-- /.col -->
					<div class="col-lg-6">
                      <div class="panel">
                            <div class="panel-title bg-transparent">
								<div class="panel-head">Form Validation</div>
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
                                    </ul>
									<a href="#" class="panel-refresh"><i class="ion-refresh"></i></a>
									<a href="#" class="panel-close"><i class="ion-close"></i></a>
								</div>
							</div>
							<div class="text-center padding-left-20 padding-right-20 margin-bottom-20 border-bottom-1 border-grey-100">
								<h3 class="color-grey-700 margin-top-30">Simple Validation</h3>
								<p class="text-light margin-bottom-40">Individual form controls automatically receive some global styling.</p>
							</div>
							<div class="row">
								<div class="col-lg-8 col-lg-offset-2">
									<form role="form" id="ExpressionValidator">
										<div class="panel-body padding-bottom-40 padding-left-20 padding-right-20 ">
											<div class="form-group">
												<label for="email" class="control-label">Email</label>
												<input type="text" class="form-control" name="email">
											</div>
											<div class="form-group">
												<label for="website" class="control-label">Website</label>
												<input type="text" class="form-control" name="website" id="website">
										    </div>
											<div class="form-group">
												<label for="phonenumber" class="control-label">Phone number</label>
												<input type="text" class="form-control" name="website" id="phonenumber">
										    </div>
											<div class="form-group">
												<label for="phonenumber" class="control-label">Hex color</label>
												<input type="text" class="form-control" name="color">
										    </div>
											<div class="form-group">
												<label for="phonenumber" class="control-label">Zip code</label>
												<input type="text" class="form-control" name="zipCode">
										    </div>
											
											<div class="text-center margin-top-20 padding-top-20 border-top-1 border-grey-100">
											  <button type="submit" class="btn bg-orange-500 color-white btn-dark margin-right-10 padding-left-40 padding-right-40">Cancel</button>
											  <button type="submit" class="btn bg-green-500 color-white btn-dark padding-left-40 padding-right-40">Submit</button>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
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
	
	<!-- bootstrap validator -->
	<script src="assets/plugins/bootstrapValidator/bootstrapValidator.min.js" type="text/javascript"></script>
	
	<!-- maniac -->
	<script src="assets/js/maniac.js" type="text/javascript"></script>
	<script type="text/javascript">
		maniac.loadvalidator();
	</script>
	
	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->

<!-- Mirrored from maniac.yakuzi.eu/form-validation.html by HTTrack Website Copier/3.x [XR&CO'2013], Sun, 01 Jan 2017 05:31:04 GMT -->
</html>