<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
    <%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%> 
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<!-- BEGIN HEAD -->

<!-- Mirrored from maniac.yakuzi.eu/data-tables.html by HTTrack Website Copier/3.x [XR&CO'2013], Sun, 01 Jan 2017 05:31:12 GMT -->
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
	<meta content="" name="description"/>
	<meta content="" name="author"/>
	
	<title>Maniac - Data Tables</title>
	
	<!-- BEGIN CORE FRAMEWORK -->
	<link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="assets/plugins/ionicons/css/ionicons.min.css" rel="stylesheet" />
	<link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
	<!-- END CORE FRAMEWORK -->
	
	<!-- BEGIN PLUGIN STYLES -->
	<link href="assets/plugins/animate/animate.css" rel="stylesheet" />
	<link href="assets/plugins/datatables/dataTables.bootstrap.css" rel="stylesheet" />
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
			<!-- BEGIN PAGE HEADING -->
            <div class="page-head">
				<h1 class="page-title">Employee Data<small>small text goes here</small></h1>
				<!-- BEGIN BREADCRUMB -->
				<ol class="breadcrumb">
					<li><a href="#"><i class="ion-home margin-right-5"></i> Dashboard</a></li>
					<li><a href="#">manage account</a></li>
					<li class="active">view employee</li>
				</ol>
				<!-- END BREADCRUMB -->
			</div>
			<!-- END PAGE HEADING -->
	 <div class="container-fluid">
            <div class="row">
                        <div class="col-lg-12">
							<div class="panel no-border ">
                                <div class="panel-title bg-white no-border">
									<div class="panel-head">Employee Data</div>
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
									<a href="#" class="panel-close" data-effect="fadeOutUp"><i class="ion-close"></i></a>
								</div>
								</div>
                                <div class="panel-body no-padding-top bg-white">
									<h3 class="color-grey-700">Employee Data</h3>
									
											<table id="example1" class="table table-bordered table-striped">
													<thead>
														<tr>
															<th>Company Name</th>
															<th>Email id</th>
															<th>password</th>
															<th>Name</th>
															
															<th>Department Name</th>
															<th>position</th>
															
															
														</tr>
													</thead>
													<tbody>
														
															<tr>
															
																<td>Pluto</td>
																<td>manan00740@gmail.com</td>	  
																<td>manan00740</td>
																<td>Manan Prajapati</td>
																<td>Software Development</td>
																<td>Project Manager</td>
																
																
															</tr>
														
										
													</tbody>
													<tfoot>
														<tr>
															<th>Company Name</th>
															<th>Email id</th>
															<th>password</th>
															<th>Name</th>
															
															<th>Department Name</th>
															<th>position</th>
															
														</tr>
													</tfoot>
												</table>
                            </div>
                        </div><!-- /.col -->
                    </div><!-- /. row -->
                    </div>
				<!-- BEGIN FOOTER -->
					<jsp:include page="footer.jsp"></jsp:include>
				<!-- END FOOTER -->
					</div>
					</div>
					</div>
					<!-- BEGIN JAVASCRIPTS -->
	
	<!-- BEGIN CORE PLUGINS -->
	<script src="assets/plugins/jquery-1.11.1.min.js" type="text/javascript"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="assets/plugins/bootstrap/js/holder.js"></script>
	<script src="assets/plugins/pace/pace.min.js" type="text/javascript"></script>
	<script src="assets/plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script>
	<script src="assets/js/core.js" type="text/javascript"></script>
	<!-- END CORE PLUGINS -->
	
	<!-- datatables -->
	<script src="assets/plugins/datatables/jquery.dataTables.js" type="text/javascript"></script>
	<script src="assets/plugins/datatables/dataTables.bootstrap.js" type="text/javascript"></script>
	
	<!-- maniac -->
	<script src="assets/js/maniac.js" type="text/javascript"></script>
	<script type="text/javascript">
		maniac.loaddatatables();
	</script>
	
	<!-- END JAVASCRIPTS -->
					</body>