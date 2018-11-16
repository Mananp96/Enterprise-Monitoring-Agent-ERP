<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<!-- BEGIN HEAD -->

<!-- Mirrored from maniac.yakuzi.eu/basic-tables.html by HTTrack Website Copier/3.x [XR&CO'2013], Sun, 01 Jan 2017 05:31:12 GMT -->
<head>
<meta charset="UTF-8">
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
<!-- END PLUGIN STYLES -->
<!-- BEGIN THEME STYLES -->
<link href="assets/css/material.css" rel="stylesheet" />
<link href="assets/css/style.css" rel="stylesheet" />
<link href="assets/css/helpers.css" rel="stylesheet" />
<link href="assets/css/plugins.css" rel="stylesheet" />
<link href="assets/css/responsive.css" rel="stylesheet" />
<!-- END THEME STYLES -->
<style>
*{font-family: "Source Sans Pro","Helvetica Neue",Helvetica,Arial,sans-serif;}
	.text-base{font-size: 14px}
	.nav-tabs > li{margin-bottom: 2px}
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
						
			
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-4">
							<div class="panel-group">
								<div class="panel" style="height:400px">
									<div class="image" style="position:relative;overflow: hidden;height:230px;"><img src="assets/img/man.jpg" class="img-rounded" width="100%" height="230px"></div>
									<div class="panel-body" style="padding:11px">
										<div class="col-md-10"><h4 ><i class="fa fa-user" style="margin-right:5px"> </i> Manan Prajapati</h4></div>
										<div class="col-md-2" style="padding-top: 11px;">
											
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
											
											
									</div>
									<div class="panel-body" style="padding: 11px;margin: -32px 0px 0px 11px;"><h4><i class="fa fa-graduation-cap" style="margin-right:5px"></i>Owner</h4><h5 class="text-muted"><i class="fa fa-envelope" style="margin-right:10px;margin-left:5px" ></i>manan00740@gmail.com</h5><h5 class="text-muted" ><i class="fa fa-phone" style="margin-right:10px;margin-left:5px"></i>+91-9601440488</h5></div>
								</div>
								
								<div class="panel panel-default" style="height:100px">
									
									<div class="panel-body" ><small class="text-muted text-base">Company Name</small>
										
										<div>	<small class="text-base"><a href="#" class="btn btn-link"><h4>Pluto</h4></a></small></div>
								
									</div>
								</div>
								
								<div class="panel panel-default" style="height:100px">
									
									<div class="panel-body" ><small class="text-muted text-base">Tags</small>
										
										<div style="padding-top:5px">
										 	<small class="text-base"><a href="#" class="btn btn-default btn-xs">Contacts <i class="fa fa-times"></i></a></small>
											<small class="text-base"><a href="#" class="btn btn-default btn-xs">Officer <i class="fa fa-times"></i></a></small>
											<small class="text-base"><a href="#" class="btn btn-default btn-xs">IT <i class="fa fa-times"></i></a></small>
										</div>
								
									</div>
								</div>
								
								<div class="panel panel-default" style="height:auto">
									<div class="panel-body" ><small class="text-muted text-base">Address</small>
										<div class="custom-color text-xs"><h5>20,Umiyadham Society,<br>Naroda,<br>Ahmedabad</h5></div>
										
									</div>
								</div>
							</div>
						</div>	
								<div class="col-md-8">
									<div class="panel" style="height:740px">
										<div class="container-fluid">
  											
											  <ul class="nav nav-tabs">
											    <li class="active"><a data-toggle="tab" href="#home" class="btn btn-default">Timeline</a></li>
											    <li><a data-toggle="tab" href="#menu1"class="btn btn-default">Task</a></li>
											    <li><a data-toggle="tab" href="#menu2" class="btn btn-default">Deals</a></li>
											    <li><a data-toggle="tab" href="#menu3" class="btn btn-default">Note</a></li>
											  </ul>
											
											  <div class="tab-content">
											    <div id="home" class="tab-pane fade in active">
											      <div class="container-fluid">
				<div class="row">
                     <div class="col-lg-12">
                        <div class="timeline-centered" style="margin-left:44px">
							<article class="timeline-entry">
								<div class="timeline-entry-inner">
									<time class="timeline-time"><span>09:24 AM</span> <span>Today</span></time>
									<div class="timeline-icon bg-red-500 border-red-800">
										<i class="ion-chatbox-working"></i>
									</div>
									<div class="timeline-label">
										<h2><a href="#">Jill</a> <span>posted a status update</span></h2>
										<p>User Created </p>
									</div>
								</div>
							</article>
							
							<article class="timeline-entry">
								<div class="timeline-entry-inner">
									<time class="timeline-time"><span>07:30 PM</span> <span>Today</span></time>
									<div class="timeline-icon bg-teal-500 border-teal-800">
										<i class="ion-person-stalker"></i>
									</div>
									<div class="timeline-label">
										<h2><a href="#">Job Meeting</a></h2>
										<p>You have a meeting at <strong>Maniac Administration</strong> Today.</p>
									</div>
								</div>
							</article>
							
							<article class="timeline-entry">
								<div class="timeline-entry-inner">
								<time class="timeline-time"><span>05:08 PM</span> <span>Today</span></time>
									<div class="timeline-icon bg-red-500 border-red-800">
										<i class="ion-chatbox-working"></i>
									</div>
									<div class="timeline-label">
										<h2><a href="#">Randolph Kit</a> <span>posted a status update</span></h2>
										
										
									</div>
								</div>
							</article>
							
							<article class="timeline-entry">
								<div class="timeline-entry-inner">
									<time class="timeline-time"><span>04:12 AM</span> <span>Yesterday</span></time>
									<div class="timeline-icon bg-blue-500 border-blue-800">
										<i class="ion-location"></i>
									</div>
									
								</div>
							</article>
						</div>
					</div>
                </div><!-- /.row -->
				  </div>
											      
											    </div>
											    <div id="menu1" class="tab-pane fade">
											      <h3>Menu 1</h3>
											      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
											    </div>
											    <div id="menu2" class="tab-pane fade">
											      <h3>Menu 2</h3>
											      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
											    </div>
											    <div id="menu3" class="tab-pane fade">
											      <h3>Menu 3</h3>
											      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
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
			
          
        </div><!-- /.rightside -->
       
    </div>	<!-- /.wrapper -->
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