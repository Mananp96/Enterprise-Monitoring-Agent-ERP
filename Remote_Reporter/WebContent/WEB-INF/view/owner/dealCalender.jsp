<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<!-- BEGIN HEAD -->

<!-- Mirrored from maniac.yakuzi.eu/calendar.html by HTTrack Website Copier/3.x [XR&CO'2013], Sun, 01 Jan 2017 05:31:21 GMT -->
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
	<meta content="" name="description"/>
	<meta content="" name="author"/>
	
	<title>Maniac - Calendar</title>
	
	<!-- BEGIN CORE FRAMEWORK -->
	<link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="assets/plugins/ionicons/css/ionicons.min.css" rel="stylesheet" />
	<link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
	<!-- END CORE FRAMEWORK -->
	
	<!-- BEGIN PLUGIN STYLES -->
	<link href="assets/plugins/fullcalendar/fullcalendar.css" rel="stylesheet" />
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
<body class="fixed-header fixed-leftside">
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
            <div class="page-head bg-grey-50" style="height:100px">
				<h1 class="page-title col-lg-8 ">Task Calendar<small>your small text goes here</small></h1>
				<div class="container col-lg-4">
					<a href="taskCalender.do" ><button  type="submit" class="btn btn-dark bg-light-blue-300 color-white" style="width:40%">Task Calendar</button></a>
					<a href="dealCalender.do" ><button  type="submit" class="btn btn-dark bg-light-blue-300 color-white" style="width:40%" data-toggle="modal" data-target="#calendar2">Deal Calendar</button></br><i class="fa fa-caret-down" style="margin-left:225px;margin-top: -4px;"></i></a>
				
				</div> 
			
				
				
			
			</div>
			
			
			<!-- END PAGE HEADING -->
			<div class="container-fluid" id="taskCalendar">
				<div class="row">
					 <div class="col-lg-3">
							<div class="panel no-shadow no-radius bg-light-blue-500">
								<div class="panel-title no-border bg-light-blue-500">
									<div class="panel-head color-white"><i class="ion-arrow-move"></i>  Draggable Events</div>
								</div>
                                <div class="panel-body bg-grey-100">
									
                                    <h5 class="color-grey-600">Drag & Drop Event</h5>
									<hr class="border-grey-300"></hr>
									<div id='external-events'>                                        
										<div class='external-event bg-light-blue-500'>My Event 1</div>
										<div class='external-event bg-light-blue-400'>My Event 2</div>
										<div class='external-event bg-pink-500'>My Event 3</div>
										<div class='external-event bg-blue-grey-800'>My Event 4</div>
										<div class='external-event bg-red-500'>My Event 5</div>
										
										<div class="checkbox checkbox-theme margin-top-30">
											<input type="checkbox" id="drop-remove">
											<label for="drop-remove">remove after drop</label>
										</div>
                                    </div>
								</div>
								<div class="panel-footer no-padding bg-grey-100">
									<a href="#" class="btn btn-dark padding-15-20 no-radius bg-grey-200 color-grey-500 btn-block" data-toggle="modal" data-target="#myModal">create new event</a> 
                                </div>
								
								<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
								  <div class="modal-dialog">
									<div class="modal-content">
									  <div class="modal-header no-border">
										<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
										<h4 class="modal-title" id="myModalLabel"><i class="ion-calendar"></i> Create Deal Event</h4>
									  </div>
									  <div class="modal-body no-padding">
											
											<div class="padding-md">                                 
												<div class="btn-inline">
													<input type="text" id="new-event" class="form-control input-lg padding-right-35" placeholder="Event Name"></br>
													
													 <button class="btn btn-link no-shadow bg-transparent padding-top-10 padding-right-10" type="button" data-toggle="dropdown"><i class="fa fa-caret-down"></i></button> 
												
													<ul id="color-chooser" class="dropdown-menu pull-right">
															<li><a class="btn-dark bg-blue-grey-700 color-white" href="#">Default</a></li>
															<li><a class="btn-dark bg-red-500 color-white" href="#">High</a></li>
															<li><a class="btn-dark bg-light-blue-500 color-white" href="#">Medium</a></li>
															<li><a class="btn-dark bg-green-500 color-white" href="#">Low</a></li>
															
															<!-- <li><a class="btn-dark bg-indigo-500 color-white" href="#">Indigo 500</a></li>
															<li><a class="btn-dark bg-deep-orange-500 color-white" href="#">Deep Orange 500</a></li>
															<li><a class="btn-dark bg-pink-500 color-white" href="#">Pink 500</a></li>
															<li><a class="btn-dark bg-teal-500 color-white" href="#">Teal 500</a></li> -->
													 </ul>
												 </div>
											</div>
									 </div>
									  <div class="modal-footer">
										<button type="button" class="btn btn-dark bg-orange-500 color-white pull-left"  data-dismiss="modal">Cancel</button>
										<button type="button" class="btn btn-dark bg-green-500 color-white pull-right" id="add-new-event" data-dismiss="modal">Create event</button>
									  </div>
									</div>
								  </div>
								</div><!-- /.modal -->
								
                            </div><!-- /.panel -->
							
							<!-- /.panel -->
					</div><!-- /.col -->
					<div class="col-lg-9">
					
					
					
					
					
					
					
					
					
					
					
					
					
									<!-- <div class="panel" style="height:820px">
										<div class="container-fluid">
  											
											  <ul class="nav nav-tabs">
											   
											    <li class="active"><a data-toggle="tab" href="#menu1" class="btn btn-default">Task</a></li>
											    <li><a data-toggle="tab" href="#menu2" class="btn btn-default">Deals</a></li>
											    
											  </ul>
											
											  <div class="tab-content">
						
											    <div id="menu1" class="tab-pane fade active in">
											      <h3>Task Calender</h3>
						<div id="calendar" class="calendarclass"></div>
											    </div>
											    <div id="menu2" class="tab-pane fade">
											      <h3>Deal Calender</h3>
						<div id="calendar2" class="calendarclass"></div>
											    </div>
											   
											  </div>
											</div>
									</div> -->
								
					
					<div id="calendar" class="calendarclass"></div>
					
					
					
					
					
					
					
					
					
					
					
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
	
	<script src="assets/plugins/jquery-ui/jquery-ui-1.10.4.min.js" type="text/javascript"></script>
	
	<!-- fullcalendar -->
	<script src="assets/plugins/fullcalendar/fullcalendar.min.js" type="text/javascript"></script>
	
	<!-- maniac -->
	<script src="assets/js/maniac.js" type="text/javascript"></script>
	<script type="text/javascript">
		maniac.loadfullcalendar();
	</script>
	
	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->

<!-- Mirrored from maniac.yakuzi.eu/calendar.html by HTTrack Website Copier/3.x [XR&CO'2013], Sun, 01 Jan 2017 05:31:26 GMT -->
</html>