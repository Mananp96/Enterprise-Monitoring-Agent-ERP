<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
				<h1 class="page-title">Data Tables<small>small text goes here</small></h1>
				<!-- BEGIN BREADCRUMB -->
				<ol class="breadcrumb">
					<li><a href="#"><i class="ion-home margin-right-5"></i> Dashboard</a></li>
					<li><a href="#">Tables</a></li>
					<li class="active">Data Tables</li>
				</ol>
				<!-- END BREADCRUMB -->
			</div>
			<!-- END PAGE HEADING -->

            <div class="container-fluid">
					<div class="row">
						<div class="col-md-12">
                           <div class="panel no-border ">
                                <div class="panel-title bg-white no-border">
									<div class="panel-head">Data Table</div>
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
									<a href="#" class="panel-close" data-effect="fadeOutDown"><i class="ion-close"></i></a>
								</div>
								</div>
                                <div class="panel-body no-padding-top bg-white">
									<h3 class="color-grey-700">Basic example</h3>
									<p class="text-light margin-bottom-30">DataTables is a plug-in for the jQuery Javascript library. It is a highly flexible tool, based upon the foundations of progressive enhancement, and will add advanced interaction controls to any HTML table.</p>
													<table id="example2" class="table table-bordered table-hover">
														<thead>
															<tr>
																<th>Rendering engine</th>
																<th>Browser</th>
																<th>Platform(s)</th>
																<th>Engine version</th>
																<th>CSS grade</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td>Trident</td>
																<td>Internet
																	Explorer 4.0</td>
																<td>Win 95+</td>
																<td> 4</td>
																<td>X</td>
															</tr>
															<tr>
																<td>Trident</td>
																<td>Internet
																	Explorer 5.0</td>
																<td>Win 95+</td>
																<td>5</td>
																<td>C</td>
															</tr>
															<tr>
																<td>Trident</td>
																<td>Internet
																	Explorer 5.5</td>
																<td>Win 95+</td>
																<td>5.5</td>
																<td>A</td>
															</tr>
															<tr>
																<td>Trident</td>
																<td>Internet
																	Explorer 6</td>
																<td>Win 98+</td>
																<td>6</td>
																<td>A</td>
															</tr>
															<tr>
																<td>Trident</td>
																<td>Internet Explorer 7</td>
																<td>Win XP SP2+</td>
																<td>7</td>
																<td>A</td>
															</tr>
															<tr>
																<td>Trident</td>
																<td>AOL browser (AOL desktop)</td>
																<td>Win XP</td>
																<td>6</td>
																<td>A</td>
															</tr>
															<tr>
																<td>Gecko</td>
																<td>Firefox 1.0</td>
																<td>Win 98+ / OSX.2+</td>
																<td>1.7</td>
																<td>A</td>
															</tr>
															<tr>
																<td>Gecko</td>
																<td>Firefox 1.5</td>
																<td>Win 98+ / OSX.2+</td>
																<td>1.8</td>
																<td>A</td>
															</tr>
															<tr>
																<td>Gecko</td>
																<td>Firefox 2.0</td>
																<td>Win 98+ / OSX.2+</td>
																<td>1.8</td>
																<td>A</td>
															</tr>
															<tr>
																<td>Gecko</td>
																<td>Firefox 3.0</td>
																<td>Win 2k+ / OSX.3+</td>
																<td>1.9</td>
																<td>A</td>
															</tr>
															<tr>
																<td>Gecko</td>
																<td>Camino 1.0</td>
																<td>OSX.2+</td>
																<td>1.8</td>
																<td>A</td>
															</tr>
															<tr>
																<td>Gecko</td>
																<td>Camino 1.5</td>
																<td>OSX.3+</td>
																<td>1.8</td>
																<td>A</td>
															</tr>
															<tr>
																<td>Gecko</td>
																<td>Netscape 7.2</td>
																<td>Win 95+ / Mac OS 8.6-9.2</td>
																<td>1.7</td>
																<td>A</td>
															</tr>
															<tr>
																<td>Gecko</td>
																<td>Netscape Browser 8</td>
																<td>Win 98SE+</td>
																<td>1.7</td>
																<td>A</td>
															</tr>
															<tr>
																<td>Gecko</td>
																<td>Netscape Navigator 9</td>
																<td>Win 98+ / OSX.2+</td>
																<td>1.8</td>
																<td>A</td>
															</tr>
															<tr>
																<td>Gecko</td>
																<td>Mozilla 1.0</td>
																<td>Win 95+ / OSX.1+</td>
																<td>1</td>
																<td>A</td>
															</tr>
															<tr>
																<td>Gecko</td>
																<td>Mozilla 1.1</td>
																<td>Win 95+ / OSX.1+</td>
																<td>1.1</td>
																<td>A</td>
															</tr>
															<tr>
																<td>Gecko</td>
																<td>Mozilla 1.2</td>
																<td>Win 95+ / OSX.1+</td>
																<td>1.2</td>
																<td>A</td>
															</tr>
															<tr>
																<td>Gecko</td>
																<td>Mozilla 1.3</td>
																<td>Win 95+ / OSX.1+</td>
																<td>1.3</td>
																<td>A</td>
															</tr>
															<tr>
																<td>Gecko</td>
																<td>Mozilla 1.4</td>
																<td>Win 95+ / OSX.1+</td>
																<td>1.4</td>
																<td>A</td>
															</tr>
															<tr>
																<td>Gecko</td>
																<td>Mozilla 1.5</td>
																<td>Win 95+ / OSX.1+</td>
																<td>1.5</td>
																<td>A</td>
															</tr>
															<tr>
																<td>Gecko</td>
																<td>Mozilla 1.6</td>
																<td>Win 95+ / OSX.1+</td>
																<td>1.6</td>
																<td>A</td>
															</tr>
															<tr>
																<td>Gecko</td>
																<td>Mozilla 1.7</td>
																<td>Win 98+ / OSX.1+</td>
																<td>1.7</td>
																<td>A</td>
															</tr>
															<tr>
																<td>Gecko</td>
																<td>Mozilla 1.8</td>
																<td>Win 98+ / OSX.1+</td>
																<td>1.8</td>
																<td>A</td>
															</tr>
															<tr>
																<td>Gecko</td>
																<td>Seamonkey 1.1</td>
																<td>Win 98+ / OSX.2+</td>
																<td>1.8</td>
																<td>A</td>
															</tr>
															<tr>
																<td>Gecko</td>
																<td>Epiphany 2.20</td>
																<td>Gnome</td>
																<td>1.8</td>
																<td>A</td>
															</tr>
															<tr>
																<td>Webkit</td>
																<td>Safari 1.2</td>
																<td>OSX.3</td>
																<td>125.5</td>
																<td>A</td>
															</tr>
															<tr>
																<td>Webkit</td>
																<td>Safari 1.3</td>
																<td>OSX.3</td>
																<td>312.8</td>
																<td>A</td>
															</tr>
															<tr>
																<td>Webkit</td>
																<td>Safari 2.0</td>
																<td>OSX.4+</td>
																<td>419.3</td>
																<td>A</td>
															</tr>
															<tr>
																<td>Webkit</td>
																<td>Safari 3.0</td>
																<td>OSX.4+</td>
																<td>522.1</td>
																<td>A</td>
															</tr>
															<tr>
																<td>Webkit</td>
																<td>OmniWeb 5.5</td>
																<td>OSX.4+</td>
																<td>420</td>
																<td>A</td>
															</tr>
															<tr>
																<td>Webkit</td>
																<td>iPod Touch / iPhone</td>
																<td>iPod</td>
																<td>420.1</td>
																<td>A</td>
															</tr>
															<tr>
																<td>Webkit</td>
																<td>S60</td>
																<td>S60</td>
																<td>413</td>
																<td>A</td>
															</tr>
															<tr>
																<td>Presto</td>
																<td>Opera 7.0</td>
																<td>Win 95+ / OSX.1+</td>
																<td>-</td>
																<td>A</td>
															</tr>
															<tr>
																<td>Presto</td>
																<td>Opera 7.5</td>
																<td>Win 95+ / OSX.2+</td>
																<td>-</td>
																<td>A</td>
															</tr>
															<tr>
																<td>Presto</td>
																<td>Opera 8.0</td>
																<td>Win 95+ / OSX.2+</td>
																<td>-</td>
																<td>A</td>
															</tr>
															<tr>
																<td>Presto</td>
																<td>Opera 8.5</td>
																<td>Win 95+ / OSX.2+</td>
																<td>-</td>
																<td>A</td>
															</tr>
															<tr>
																<td>Presto</td>
																<td>Opera 9.0</td>
																<td>Win 95+ / OSX.3+</td>
																<td>-</td>
																<td>A</td>
															</tr>
															<tr>
																<td>Presto</td>
																<td>Opera 9.2</td>
																<td>Win 88+ / OSX.3+</td>
																<td>-</td>
																<td>A</td>
															</tr>
															<tr>
																<td>Presto</td>
																<td>Opera 9.5</td>
																<td>Win 88+ / OSX.3+</td>
																<td>-</td>
																<td>A</td>
															</tr>
															<tr>
																<td>Presto</td>
																<td>Opera for Wii</td>
																<td>Wii</td>
																<td>-</td>
																<td>A</td>
															</tr>
															<tr>
																<td>Presto</td>
																<td>Nokia N800</td>
																<td>N800</td>
																<td>-</td>
																<td>A</td>
															</tr>
															<tr>
																<td>Presto</td>
																<td>Nintendo DS browser</td>
																<td>Nintendo DS</td>
																<td>8.5</td>
																<td>C/A<sup>1</sup></td>
															</tr>
															<tr>
																<td>KHTML</td>
																<td>Konqureror 3.1</td>
																<td>KDE 3.1</td>
																<td>3.1</td>
																<td>C</td>
															</tr>
															<tr>
																<td>KHTML</td>
																<td>Konqureror 3.3</td>
																<td>KDE 3.3</td>
																<td>3.3</td>
																<td>A</td>
															</tr>
															<tr>
																<td>KHTML</td>
																<td>Konqureror 3.5</td>
																<td>KDE 3.5</td>
																<td>3.5</td>
																<td>A</td>
															</tr>
															<tr>
																<td>Tasman</td>
																<td>Internet Explorer 4.5</td>
																<td>Mac OS 8-9</td>
																<td>-</td>
																<td>X</td>
															</tr>
															<tr>
																<td>Tasman</td>
																<td>Internet Explorer 5.1</td>
																<td>Mac OS 7.6-9</td>
																<td>1</td>
																<td>C</td>
															</tr>
															<tr>
																<td>Tasman</td>
																<td>Internet Explorer 5.2</td>
																<td>Mac OS 8-X</td>
																<td>1</td>
																<td>C</td>
															</tr>
															<tr>
																<td>Misc</td>
																<td>NetFront 3.1</td>
																<td>Embedded devices</td>
																<td>-</td>
																<td>C</td>
															</tr>
															<tr>
																<td>Misc</td>
																<td>NetFront 3.4</td>
																<td>Embedded devices</td>
																<td>-</td>
																<td>A</td>
															</tr>
															<tr>
																<td>Misc</td>
																<td>Dillo 0.8</td>
																<td>Embedded devices</td>
																<td>-</td>
																<td>X</td>
															</tr>
															<tr>
																<td>Misc</td>
																<td>Links</td>
																<td>Text only</td>
																<td>-</td>
																<td>X</td>
															</tr>
															<tr>
																<td>Misc</td>
																<td>Lynx</td>
																<td>Text only</td>
																<td>-</td>
																<td>X</td>
															</tr>
															<tr>
																<td>Misc</td>
																<td>IE Mobile</td>
																<td>Windows Mobile 6</td>
																<td>-</td>
																<td>C</td>
															</tr>
															<tr>
																<td>Misc</td>
																<td>PSP browser</td>
																<td>PSP</td>
																<td>-</td>
																<td>C</td>
															</tr>
															<tr>
																<td>Other browsers</td>
																<td>All others</td>
																<td>-</td>
																<td>-</td>
																<td>U</td>
															</tr>
														</tbody>
														<tfoot>
															<tr>
																<th>Rendering engine</th>
																<th>Browser</th>
																<th>Platform(s)</th>
																<th>Engine version</th>
																<th>CSS grade</th>
															</tr>
														</tfoot>
													</table>
                                </div>
                            </div>
						</div><!-- /.col --> 
					</div><!-- /.row -->
					
					<div class="row">
                        <div class="col-lg-12">
							<div class="panel no-border ">
                                <div class="panel-title bg-white no-border">
									<div class="panel-head">Data Table</div>
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
									<h3 class="color-grey-700">With inputs</h3>
									<p class="text-light margin-bottom-30">Getting started with DataTables is as simple as including two files in your web-site, the CSS styling and the DataTables script itself. These two files are available in the maniac</p>
											<table id="example1" class="table table-bordered table-striped">
													<thead>
														<tr>
															<th>Rendering engine</th>
															<th>Browser</th>
															<th>Platform(s)</th>
															<th>Engine version</th>
															<th>CSS grade</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>Trident</td>
															<td>Internet
																Explorer 4.0</td>
															<td>Win 95+</td>
															<td> 4</td>
															<td>X</td>
														</tr>
														<tr>
															<td>Trident</td>
															<td>Internet
																Explorer 5.0</td>
															<td>Win 95+</td>
															<td>5</td>
															<td>C</td>
														</tr>
														<tr>
															<td>Trident</td>
															<td>Internet
																Explorer 5.5</td>
															<td>Win 95+</td>
															<td>5.5</td>
															<td>A</td>
														</tr>
														<tr>
															<td>Trident</td>
															<td>Internet
																Explorer 6</td>
															<td>Win 98+</td>
															<td>6</td>
															<td>A</td>
														</tr>
														<tr>
															<td>Trident</td>
															<td>Internet Explorer 7</td>
															<td>Win XP SP2+</td>
															<td>7</td>
															<td>A</td>
														</tr>
														<tr>
															<td>Trident</td>
															<td>AOL browser (AOL desktop)</td>
															<td>Win XP</td>
															<td>6</td>
															<td>A</td>
														</tr>
														<tr>
															<td>Gecko</td>
															<td>Firefox 1.0</td>
															<td>Win 98+ / OSX.2+</td>
															<td>1.7</td>
															<td>A</td>
														</tr>
														<tr>
															<td>Gecko</td>
															<td>Firefox 1.5</td>
															<td>Win 98+ / OSX.2+</td>
															<td>1.8</td>
															<td>A</td>
														</tr>
														<tr>
															<td>Gecko</td>
															<td>Firefox 2.0</td>
															<td>Win 98+ / OSX.2+</td>
															<td>1.8</td>
															<td>A</td>
														</tr>
														<tr>
															<td>Gecko</td>
															<td>Firefox 3.0</td>
															<td>Win 2k+ / OSX.3+</td>
															<td>1.9</td>
															<td>A</td>
														</tr>
														<tr>
															<td>Gecko</td>
															<td>Camino 1.0</td>
															<td>OSX.2+</td>
															<td>1.8</td>
															<td>A</td>
														</tr>
														<tr>
															<td>Gecko</td>
															<td>Camino 1.5</td>
															<td>OSX.3+</td>
															<td>1.8</td>
															<td>A</td>
														</tr>
														<tr>
															<td>Gecko</td>
															<td>Netscape 7.2</td>
															<td>Win 95+ / Mac OS 8.6-9.2</td>
															<td>1.7</td>
															<td>A</td>
														</tr>
														<tr>
															<td>Gecko</td>
															<td>Netscape Browser 8</td>
															<td>Win 98SE+</td>
															<td>1.7</td>
															<td>A</td>
														</tr>
														<tr>
															<td>Gecko</td>
															<td>Netscape Navigator 9</td>
															<td>Win 98+ / OSX.2+</td>
															<td>1.8</td>
															<td>A</td>
														</tr>
														<tr>
															<td>Gecko</td>
															<td>Mozilla 1.0</td>
															<td>Win 95+ / OSX.1+</td>
															<td>1</td>
															<td>A</td>
														</tr>
														<tr>
															<td>Gecko</td>
															<td>Mozilla 1.1</td>
															<td>Win 95+ / OSX.1+</td>
															<td>1.1</td>
															<td>A</td>
														</tr>
														<tr>
															<td>Gecko</td>
															<td>Mozilla 1.2</td>
															<td>Win 95+ / OSX.1+</td>
															<td>1.2</td>
															<td>A</td>
														</tr>
														<tr>
															<td>Gecko</td>
															<td>Mozilla 1.3</td>
															<td>Win 95+ / OSX.1+</td>
															<td>1.3</td>
															<td>A</td>
														</tr>
														<tr>
															<td>Gecko</td>
															<td>Mozilla 1.4</td>
															<td>Win 95+ / OSX.1+</td>
															<td>1.4</td>
															<td>A</td>
														</tr>
														<tr>
															<td>Gecko</td>
															<td>Mozilla 1.5</td>
															<td>Win 95+ / OSX.1+</td>
															<td>1.5</td>
															<td>A</td>
														</tr>
														<tr>
															<td>Gecko</td>
															<td>Mozilla 1.6</td>
															<td>Win 95+ / OSX.1+</td>
															<td>1.6</td>
															<td>A</td>
														</tr>
														<tr>
															<td>Gecko</td>
															<td>Mozilla 1.7</td>
															<td>Win 98+ / OSX.1+</td>
															<td>1.7</td>
															<td>A</td>
														</tr>
														<tr>
															<td>Gecko</td>
															<td>Mozilla 1.8</td>
															<td>Win 98+ / OSX.1+</td>
															<td>1.8</td>
															<td>A</td>
														</tr>
														<tr>
															<td>Gecko</td>
															<td>Seamonkey 1.1</td>
															<td>Win 98+ / OSX.2+</td>
															<td>1.8</td>
															<td>A</td>
														</tr>
														<tr>
															<td>Gecko</td>
															<td>Epiphany 2.20</td>
															<td>Gnome</td>
															<td>1.8</td>
															<td>A</td>
														</tr>
														<tr>
															<td>Webkit</td>
															<td>Safari 1.2</td>
															<td>OSX.3</td>
															<td>125.5</td>
															<td>A</td>
														</tr>
														<tr>
															<td>Webkit</td>
															<td>Safari 1.3</td>
															<td>OSX.3</td>
															<td>312.8</td>
															<td>A</td>
														</tr>
														<tr>
															<td>Webkit</td>
															<td>Safari 2.0</td>
															<td>OSX.4+</td>
															<td>419.3</td>
															<td>A</td>
														</tr>
														<tr>
															<td>Webkit</td>
															<td>Safari 3.0</td>
															<td>OSX.4+</td>
															<td>522.1</td>
															<td>A</td>
														</tr>
														<tr>
															<td>Webkit</td>
															<td>OmniWeb 5.5</td>
															<td>OSX.4+</td>
															<td>420</td>
															<td>A</td>
														</tr>
														<tr>
															<td>Webkit</td>
															<td>iPod Touch / iPhone</td>
															<td>iPod</td>
															<td>420.1</td>
															<td>A</td>
														</tr>
														<tr>
															<td>Webkit</td>
															<td>S60</td>
															<td>S60</td>
															<td>413</td>
															<td>A</td>
														</tr>
														<tr>
															<td>Presto</td>
															<td>Opera 7.0</td>
															<td>Win 95+ / OSX.1+</td>
															<td>-</td>
															<td>A</td>
														</tr>
														<tr>
															<td>Presto</td>
															<td>Opera 7.5</td>
															<td>Win 95+ / OSX.2+</td>
															<td>-</td>
															<td>A</td>
														</tr>
														<tr>
															<td>Presto</td>
															<td>Opera 8.0</td>
															<td>Win 95+ / OSX.2+</td>
															<td>-</td>
															<td>A</td>
														</tr>
														<tr>
															<td>Presto</td>
															<td>Opera 8.5</td>
															<td>Win 95+ / OSX.2+</td>
															<td>-</td>
															<td>A</td>
														</tr>
														<tr>
															<td>Presto</td>
															<td>Opera 9.0</td>
															<td>Win 95+ / OSX.3+</td>
															<td>-</td>
															<td>A</td>
														</tr>
														<tr>
															<td>Presto</td>
															<td>Opera 9.2</td>
															<td>Win 88+ / OSX.3+</td>
															<td>-</td>
															<td>A</td>
														</tr>
														<tr>
															<td>Presto</td>
															<td>Opera 9.5</td>
															<td>Win 88+ / OSX.3+</td>
															<td>-</td>
															<td>A</td>
														</tr>
														<tr>
															<td>Presto</td>
															<td>Opera for Wii</td>
															<td>Wii</td>
															<td>-</td>
															<td>A</td>
														</tr>
														<tr>
															<td>Presto</td>
															<td>Nokia N800</td>
															<td>N800</td>
															<td>-</td>
															<td>A</td>
														</tr>
														<tr>
															<td>Presto</td>
															<td>Nintendo DS browser</td>
															<td>Nintendo DS</td>
															<td>8.5</td>
															<td>C/A<sup>1</sup></td>
														</tr>
														<tr>
															<td>KHTML</td>
															<td>Konqureror 3.1</td>
															<td>KDE 3.1</td>
															<td>3.1</td>
															<td>C</td>
														</tr>
														<tr>
															<td>KHTML</td>
															<td>Konqureror 3.3</td>
															<td>KDE 3.3</td>
															<td>3.3</td>
															<td>A</td>
														</tr>
														<tr>
															<td>KHTML</td>
															<td>Konqureror 3.5</td>
															<td>KDE 3.5</td>
															<td>3.5</td>
															<td>A</td>
														</tr>
														<tr>
															<td>Tasman</td>
															<td>Internet Explorer 4.5</td>
															<td>Mac OS 8-9</td>
															<td>-</td>
															<td>X</td>
														</tr>
														<tr>
															<td>Tasman</td>
															<td>Internet Explorer 5.1</td>
															<td>Mac OS 7.6-9</td>
															<td>1</td>
															<td>C</td>
														</tr>
														<tr>
															<td>Tasman</td>
															<td>Internet Explorer 5.2</td>
															<td>Mac OS 8-X</td>
															<td>1</td>
															<td>C</td>
														</tr>
														<tr>
															<td>Misc</td>
															<td>NetFront 3.1</td>
															<td>Embedded devices</td>
															<td>-</td>
															<td>C</td>
														</tr>
														<tr>
															<td>Misc</td>
															<td>NetFront 3.4</td>
															<td>Embedded devices</td>
															<td>-</td>
															<td>A</td>
														</tr>
														<tr>
															<td>Misc</td>
															<td>Dillo 0.8</td>
															<td>Embedded devices</td>
															<td>-</td>
															<td>X</td>
														</tr>
														<tr>
															<td>Misc</td>
															<td>Links</td>
															<td>Text only</td>
															<td>-</td>
															<td>X</td>
														</tr>
														<tr>
															<td>Misc</td>
															<td>Lynx</td>
															<td>Text only</td>
															<td>-</td>
															<td>X</td>
														</tr>
														<tr>
															<td>Misc</td>
															<td>IE Mobile</td>
															<td>Windows Mobile 6</td>
															<td>-</td>
															<td>C</td>
														</tr>
														<tr>
															<td>Misc</td>
															<td>PSP browser</td>
															<td>PSP</td>
															<td>-</td>
															<td>C</td>
														</tr>
														<tr>
															<td>Other browsers</td>
															<td>All others</td>
															<td>-</td>
															<td>-</td>
															<td>U</td>
														</tr>
													</tbody>
													<tfoot>
														<tr>
															<th>Rendering engine</th>
															<th>Browser</th>
															<th>Platform(s)</th>
															<th>Engine version</th>
															<th>CSS grade</th>
														</tr>
													</tfoot>
												</table>
                            </div>
                        </div><!-- /.col -->
                    </div><!-- /. row -->
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
<!-- END BODY -->

<!-- Mirrored from maniac.yakuzi.eu/data-tables.html by HTTrack Website Copier/3.x [XR&CO'2013], Sun, 01 Jan 2017 05:31:14 GMT -->
</html>