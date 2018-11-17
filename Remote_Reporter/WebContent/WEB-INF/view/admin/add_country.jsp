<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%> 
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
	
	<title>Maniac - Add Country</title>
	
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
				<h1 class="page-title">Add Country<small>Enter the Country</small></h1>
				<!-- BEGIN BREADCRUMB -->
				<ol class="breadcrumb">
					<li><a href="#"><i class="ion-home margin-right-5"></i> Dashboard</a></li>
					<li><a href="#">Country</a></li>
					<li class="active">add country</li>
				</ol>
				<!-- END BREADCRUMB -->
			</div>
			<!-- END PAGE HEADING -->
	<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
                      <div class="panel">
                            <div class="panel-title bg-transparent">
								<div class="panel-head">Add Country</div>
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
								<h3 class="color-grey-700 margin-top-30">Register Country</h3>
								<p class="text-light margin-bottom-30">Individual form controls automatically receive some global styling.</p>
							</div>
							
							<f:form role="form" class="form-horizontal" id="registerForm" action="save.do" method="post" modelAttribute="countryreg">
							<div class="row">
								<div class="col-lg-8 col-lg-offset-2">
										<div class="panel-body padding-bottom-40 padding-left-20 padding-right-20">
											  <div class="form-group">
												<label for="countryName" class="control-label col-lg-2">Country Name</label>
												<div class="col-lg-8">
													<f:input type="text" class="form-control" id="countryName" name="countryName" path="countryName"/>
												</div>
											  </div>
											  <div class="form-group">
												<label for="countryDesc" class="control-label col-lg-2">Description</label>
												<div class="col-lg-8">
												<f:input type="text" class="form-control" id="countryDesc" name="countryDesc" path="countryDesc"/>
													<!-- <textarea class="form-control" rows="5" id="country_desc" path="country_desc"/> -->
												</div>
											  </div>
											  <div class="form-group">
													<label for="countryCode" class="control-label col-lg-2">Country Code</label>
													<div class="col-lg-6">
														<f:input id="countryCode" type="text" class="form-control" name="countryCode" path="countryCode"/>
													</div>	
										      </div>
											  
										</div>
								</div>
							</div>
							<div class="text-center padding-top-20 padding-bottom-20 border-top-1 border-grey-100">
								<button type="submit" class="btn bg-orange-500 color-white btn-dark margin-right-10 padding-left-40 padding-right-40">Cancel</button>
								<button type="submit" class="btn bg-green-500 color-white btn-dark padding-left-40 padding-right-40">Save</button>
							</div>
							</f:form>
						</div>
					</div><!-- /.col -->
				</div><!-- /.row -->
				<!-- BEGIN FOOTER -->
					<jsp:include page="footer.jsp"></jsp:include>
				<!-- END FOOTER -->
				</div></div></div>
				
				<!-- BEGIN JAVASCRIPTS -->
				<jsp:include page="js_plugin.jsp"></jsp:include>
				<!-- END JAVASCRIPTS -->
				
					
		</body>