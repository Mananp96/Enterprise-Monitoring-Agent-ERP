<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
    <%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%> 
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
<title>EMA - Task</title>
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
<style type="text/css">
	*{font-family: "Source Sans Pro","Helvetica Neue",Helvetica,Arial,sans-serif;}
	.panel > .panel-body{padding:5px}
	.list-group{margin-bottom: 0px;}
	#taskbg{background-color: #eaeef0;}
	
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
        	<!-- BEGIN PAGE HEADING -->
            <div class="page-head">
				<h1 class="page-title">Tasks<small>Add your task</small></h1>
				<!-- BEGIN BREADCRUMB -->
				<ol class="breadcrumb" style="top:-14px">
					<li><div class="panel-body">
								<button type="submit" class="btn btn-dark bg-light-blue-300 color-white btn-block" data-toggle="modal" data-target="#ModalForm" style="box-shadow:1px 2px 2px grey">Add  Task</button>
								<!-- Modal -->
								<div class="modal fade" id="ModalForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
								  <div class="modal-dialog">
									<div class="modal-content">
									  <div class="modal-header no-border">
										<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
										<h4 class="modal-title" id="myModalLabel"><i class="fa fa-edit"></i>Add Task</h4>
									  </div>
									  <div class="modal-body no-padding">
										
										<f:form class="form-horizontal padding-md" role="form" action="addTask.do" method="post" modelAttribute="addTask" enctype="multipart/form-data">
											
											<div class="form-group">
												<label for="taskName" class="control-label col-lg-3">Name</label>
												<div class="col-lg-8">
													<f:input class="form-control"  data-bv-field="taskName" placeholder="Task Name" path="taskName" id="taskName"/>
											    </div>
											</div>
											
											<div class="form-group">
												<label for="milestone" class="control-label col-lg-3">Category</label>
												<div class="col-lg-8">
													<f:select class="form-control" path="category" id="category">
														<f:option value="Call">Call</f:option>
														<f:option value="Email">Email</f:option>
														<f:option value="Followup">Follow_up</f:option>
														<f:option value="Meeting">Meeting</f:option>
														<f:option value="Milestone">Milestone</f:option>
														<f:option value="Send">Send</f:option>
														<f:option value="Tweet">Tweet</f:option>
														<f:option value="other">Other</f:option>
													</f:select>
											    </div>
											</div>
											
											<div class="form-group">
												<label for="milestone" class="control-label col-lg-3">Milestone</label>
												<div class="col-lg-8">
													<f:select class="form-control" path="milestone" id="milestone">
														<f:option value="Overdue">Overdue</f:option>
														<f:option value="Today">Today</f:option>
														<f:option value="Tomorrow">Tomorrow</f:option>
														<f:option value="Later">Later</f:option>
													</f:select>
											    </div>
											</div>
											
											
											 <div class="form-group">
												<label for="closeDate" class="control-label col-lg-3">Close Date</label>
												<div class="col-lg-8">
													<f:input class="form-control" id="closeDate" data-inputmask="'alias': 'date'" type="text" placeholder="Select Date" path="closeDate"/>
											    </div>
											</div> 
											<div class="form-group">
												<label for="time" class="control-label col-lg-3">Time</label>
												<div class="col-lg-8">
													<f:input path="taskTime" class="form-control" id="taskTime" />
												</div>
											</div>
											
											
											<div class="form-group">
												<label for="ownerName" class="control-label col-lg-3">Owner</label>
												<div class="col-lg-8">
													<f:select class="form-control" path="ownerCompanyVo.companyid">
														<f:options items="${sessionScope.olist}" itemLabel="firstName" itemValue="companyid" ></f:options>
													</f:select>
											    </div>
											</div>
											
											<div class="form-group">
												<label for="relatedTo" class="control-label col-lg-3">Related To</label>
												<div class="col-lg-8">
													<f:select class="form-control"  path="ownerContactVo.contactid" >
													<f:option value="">Select</f:option>
														<c:forEach items="${clist}" var="contact">
															<f:option value="${contact.contactid}">${contact.firstName} ${contact.lastName}</f:option>
														</c:forEach>
													</f:select>
											    </div>
											</div>
											
											<div class="form-group">
												<label for="status" class="control-label col-lg-3">Status</label>
												<div class="col-lg-8">
													<f:select class="form-control" path="taskStatus" id="taskStatus">
														<f:option value="New">New</f:option>
														<f:option value="In-Progress">In-Progress</f:option>
														<f:option value="Completed">Completed</f:option>
														<f:option value="Closed">Closed</f:option>
														
													</f:select>
											    </div>
											</div>
											<div class="form-group">
												<label for="Priority" class="control-label col-lg-3">Priority</label>
												<div class="col-lg-8">
													<f:select class="form-control" path="taskPriority" id="">
														<f:option value="Low">Low</f:option>
														<f:option value="Medium">Medium</f:option>
														<f:option value="High">High</f:option>
													</f:select>
											    </div>
											</div>
											
											
											<div class="form-group">
												<label for="Tags" class="control-label col-lg-3">Tags</label>
												<div class="col-lg-8">
													<f:input class="form-control"  data-bv-field="tags" type="text" placeholder="Seperate tags with commmas" path="tags" id="tags"/>
											    </div>
											</div>
											
											<div class="form-group">
												<label for="description" class="control-label col-lg-3">Description</label>
												<div class="col-lg-8">
													<f:textarea class="form-control" rows="5" path="taskDesc" id="taskDesc"></f:textarea>
											    </div>
											</div>
											
											<div class="form-group">
												<label for="description" class="control-label col-lg-3">Attachment</label>
												<div class="col-lg-8">
														<input type="file" name="file">
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
                            </div></li>
					
				</ol>
				<!-- END BREADCRUMB -->
			</div>
			<!-- END PAGE HEADING -->
				
				<!-- edit task form start -->
					
            <div class="container-fluid"  style="height:auto">
								<div class="modal fade" id="ModalForm2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
								  <div class="modal-dialog">
									<div class="modal-content">
									  <div class="modal-header no-border">
										<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
										<h4 class="modal-title" id="myModalLabel"><i class="fa fa-edit"></i>Edit Task</h4>
									  </div>
									  <div class="modal-body no-padding">
										
										<f:form class="form-horizontal padding-md" role="form" action="updateTask.do" method="post" modelAttribute="addTask" >
											<div id="id"></div>
											<div class="form-group">
												<label for="taskName" class="control-label col-lg-3">Name</label>
												<div class="col-lg-8">
													<f:input class="form-control"  data-bv-field="taskName" placeholder="Task Name" path="taskName" id="taskName1"/>
											    </div>
											</div>
											
											<div class="form-group">
												<label for="milestone" class="control-label col-lg-3">Category</label>
												<div class="col-lg-8">
													<f:select class="form-control" path="category" id="category1">
														<f:option value="Call">Call</f:option>
														<f:option value="Email">Email</f:option>
														<f:option value="Followup">Follow_up</f:option>
														<f:option value="Meeting">Meeting</f:option>
														<f:option value="Milestone">Milestone</f:option>
														<f:option value="Send">Send</f:option>
														<f:option value="Tweet">Tweet</f:option>
														<f:option value="other">Other</f:option>
													</f:select>
											    </div>
											</div>
											
											<div class="form-group">
												<label for="milestone" class="control-label col-lg-3">Milestone</label>
												<div class="col-lg-8">
													<f:select class="form-control" path="milestone" id="milestone1">
														<f:option value="Overdue">Overdue</f:option>
														<f:option value="Today">Today</f:option>
														<f:option value="Tomorrow">Tomorrow</f:option>
														<f:option value="Later">Later</f:option>
													</f:select>
											    </div>
											</div>
											
											
											<div class="form-group">
												<label for="closeDate" class="control-label col-lg-3">Close Date</label>
												<div class="col-lg-8">
													<f:input class="form-control" id="closeDate1" data-inputmask="'alias': 'date'" type="text" placeholder="Select Date" path="closeDate"/>
											    </div>
											</div> 
											
											<div class="form-group">
												<label for="time" class="control-label col-lg-3">Time</label>
												<div class="col-lg-8">
													<f:input path="taskTime" class="form-control" id="taskTime1" />
												</div>
											</div>
											
											
											<div class="form-group">
												<label for="ownerName" class="control-label col-lg-3">Owner</label>
												<div class="col-lg-8">
												  <f:select class="form-control" id="ownerName1" path="ownerCompanyVo.companyid" >
													
														<c:forEach items="${olist}" var="owner">
															<f:option value="${owner.companyid}">${owner.firstName} ${owner.lastName}</f:option>
														</c:forEach>
													</f:select>
											    </div>
											</div>
											
											<div class="form-group">
												<label for="relatedTo" class="control-label col-lg-3">Related To</label>
												<div class="col-lg-8">
														<f:select class="form-control" path="ownerContactVo.contactid" id="contactName1">
														<f:options items="${sessionScope.clist}" itemLabel="firstName" itemValue="contactid" ></f:options>
													</f:select>

											    </div>
											</div>
											
											<div class="form-group">
												<label for="status" class="control-label col-lg-3">Status</label>
												<div class="col-lg-8">
													<f:select class="form-control" path="taskStatus" id="taskStatus1">
														<f:option value="New">New</f:option>
														<f:option value="In-Progress">In-Progress</f:option>
														<f:option value="Completed">Completed</f:option>
														<f:option value="Closed">Closed</f:option>
														
													</f:select>
											    </div>
											</div>
											<div class="form-group">
												<label for="Priority" class="control-label col-lg-3">Priority</label>
												<div class="col-lg-8">
													<f:select class="form-control" path="taskPriority" id="taskPriority1">
														<f:option value="Low">Low</f:option>
														<f:option value="Medium">Medium</f:option>
														<f:option value="High">High</f:option>
													</f:select>
											    </div>
											</div>
											
											
											<div class="form-group">
												<label for="Tags" class="control-label col-lg-3">Tags</label>
												<div class="col-lg-8">
													<f:input class="form-control"  data-bv-field="tags" type="text" placeholder="Seperate tags with commmas" path="tags" id="tags1"/>
											    </div>
											</div>
											
											<div class="form-group">
												<label for="description" class="control-label col-lg-3">Description</label>
												<div class="col-lg-8">
													<f:textarea class="form-control" rows="5" path="taskDesc" id="taskDesc1"></f:textarea>
											    </div>
											</div>
											
											<div class="form-group">
												<label for="description" class="control-label col-lg-3">Attachment</label>
												<div class="col-lg-8">
														<input type="file" name="file">
											    </div>
											</div>
											
										<div class="modal-footer">
											
											<button type="submit" class="btn btn-success">Update</button>
									  	</div>
										</f:form>
									  </div>
									  
									</div>
								  </div>
								</div>
								
			<!-- edit task form end -->
			
           
					<div class="tasks" style="height:500px;">
						<div class="panel panel-default col-xs-3" style="height:500px;padding-right: 0px;padding-left:0px">
							<div class="panel-heading">Overdue</div>
							<div class="panel-body">
								<c:forEach items="${sessionScope.tlist}" var="i">
											<ul class="list-group list-group-sortable-connected">
											 
											<c:if test="${i.milestone eq 'Overdue'}" >
												<li  id="taskbg" class="list-group-item list-group-item" >
													<input type="hidden" value="${i.taskid }" name="id"/>
													<div style="float: left"><h4>${i.taskName}</h4></div><div style="float: right"><a href="#" onclick="fnedit(${i.taskid })" data-toggle="modal" data-target="#ModalForm2"><i class="fa fa-edit"></i></a>  <a href="deletetask.do?id=${i.taskid }"><i class="fa fa-trash"></i></a></div>
													<div class="clearfix"></div>
													<div style="margin-bottom: 7px">
														<span style="font-size:15px;" class="text-muted"><b>${i.taskPriority }</b></span>
														<span style="border:1px solid #d5d5d5;margin-left:4px;" ></span>
														<a class="text-info" href="contactProfile.do?id=${i.ownerContactVo.contactid }" style="font-size:15px;margin-left:4px;"><b>${i.ownerContactVo.firstName } ${i.ownerContactVo.lastName}</b></a>
													</div>
												
													<div><i class="fa fa-clock-o" style="margin-right:5px"></i>Close Date : ${i.closeDate }</div> 
												</li>
												
												
												</c:if>										
											</ul>
										</c:forEach>
							</div>
						</div>
						
						<div class="panel panel-default col-xs-3" style="height:500px;padding-right: 0px;padding-left:0px">
							<div class="panel-heading">Today</div>
							<div class="panel-body">
							
								<c:forEach items="${sessionScope.tlist}" var="i">
											<ul class="list-group list-group-sortable-connected">
											 
											<c:if test="${i.milestone eq 'Today'}" >
												<li id="taskbg" class="list-group-item list-group-item" >
													<input type="hidden" value="${i.taskid }" name="id"/>
													<div style="float: left"><h4>${i.taskName}</h4></div><div style="float: right"><a href="#" onclick="fnedit(${i.taskid })" data-toggle="modal" data-target="#ModalForm2" ><i class="fa fa-edit"></i></a>  <a href="deletetask.do?id=${i.taskid }"><i class="fa fa-trash"></i></a></div>
													<div class="clearfix"></div>
													<div style="margin-bottom: 7px">
														<span style="font-size:15px;" class="text-muted"><b>${i.taskPriority }</b></span>
														<span style="border:1px solid #d5d5d5;margin-left:4px;" ></span>
														<a class="text-info" href="contactProfile.do?id=${i.ownerContactVo.contactid }" style="font-size:15px;margin-left:4px;"><b>${i.ownerContactVo.firstName } ${i.ownerContactVo.lastName} </b></a>
													</div>
												
													<div><i class="fa fa-clock-o" style="margin-right:5px"></i>Close Date : ${i.closeDate }</div>
												</li>
												
												
												</c:if>										
											</ul>
										</c:forEach>
							</div>
						</div>
						
						<div class="panel panel-default col-xs-3"style="height:500px; padding-right: 0px;padding-left:0px" >
							<div class="panel-heading">Tomorrow</div>
							<div class="panel-body">
								<c:forEach items="${sessionScope.tlist}" var="i">
											<ul class="list-group list-group-sortable-connected">
											 
											<c:if test="${i.milestone eq 'Tomorrow'}" >
												<li id="taskbg" class="list-group-item list-group-item" >
													<input type="hidden" value="${i.taskid }" name="id"/>
													<div style="float: left"><h4>${i.taskName}</h4></div><div style="float: right"><a href="#" onclick="fnedit(${i.taskid })" data-toggle="modal" data-target="#ModalForm2"><i class="fa fa-edit"></i></a>  <a href="deletetask.do?id=${i.taskid }"><i class="fa fa-trash"></i></a></div>
													<div class="clearfix"></div>
													<div style="margin-bottom: 7px">
														<span style="font-size:15px;" class="text-muted"><b>${i.taskPriority }</b></span>
														<span style="border:1px solid #d5d5d5;margin-left:4px;" ></span>
														<a class="text-info" href="contactProfile.do?id=${i.ownerContactVo.contactid }" style="font-size:15px;margin-left:4px;"><b>${i.ownerContactVo.firstName } ${i.ownerContactVo.lastName}</b></a>
													</div>
												
													<div><i class="fa fa-clock-o" style="margin-right:5px"></i>Close Date : ${i.closeDate }</div>
												</li>
												
												
												</c:if>										
											</ul>
										</c:forEach>
							</div>
						</div>
						
						<div class="panel panel-default col-xs-3" style="height:500px;padding-right: 0px;padding-left:0px">
							<div class="panel-heading">Later</div>
							<div class="panel-body">
								<c:forEach items="${sessionScope.tlist}" var="i">
											<ul class="list-group list-group-sortable-connected">
											 
											<c:if test="${i.milestone eq 'Later'}" >
												<li id="taskbg" class="list-group-item list-group-item" >
													<input type="hidden" value="${i.taskid }" name="id"/>
													<div style="float: left"><h4>${i.taskName}</h4></div><div style="float: right"><a href="#" onclick="fnedit(${i.taskid })" data-toggle="modal" data-target="#ModalForm2"><i class="fa fa-edit"></i></a>  <a href="deletetask.do?id=${i.taskid }"><i class="fa fa-trash"></i></a></div>
													<div class="clearfix"></div>
													<div style="margin-bottom: 7px">
														<span style="font-size:15px;" class="text-muted"><b>${i.taskPriority }</b></span>
														<span style="border:1px solid #d5d5d5;margin-left:4px;" ></span>
														<a class="text-info" href="contactProfile.do?id=${i.ownerContactVo.contactid }" style="font-size:15px;margin-left:4px;"><b>${i.ownerContactVo.firstName } ${i.ownerContactVo.lastName}</b></a>
													</div>
												<div><i class="fa fa-clock-o" style="margin-right:5px"></i>Close Date : ${i.closeDate }</div> 
												</li>
												
												
												</c:if>										
											</ul>
										</c:forEach>
							</div>
						</div>
					</div>
					
				<!-- BEGIN FOOTER -->
				<jsp:include page="footer.jsp"></jsp:include>
				<!-- END FOOTER -->
            </div><!-- /.container-fluid -->
        </div><!-- /.rightside -->
    </div><!-- /.wrapper -->
	<!-- END CONTENT -->
		
<!-- BEGIN CORE PLUGINS -->
	<script src="assets/plugins/jquery-1.11.1.min.js" type="text/javascript"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="assets/plugins/bootstrap/js/holder.js"></script>
	<script src="assets/plugins/pace/pace.min.js" type="text/javascript"></script>
	<script src="assets/plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script>
	<script src="assets/js/core.js" type="text/javascript"></script>
	<!-- END CORE PLUGINS -->
	
	<!-- input mask -->
    <script src="assets/plugins/input-mask/jquery.inputmask.js" type="text/javascript"></script>
    <script src="assets/plugins/input-mask/jquery.inputmask.date.extensions.js" type="text/javascript"></script>
    <script src="assets/plugins/input-mask/jquery.inputmask.numeric.extensions.js" type="text/javascript"></script>
	
	<!-- switchery -->
    <script src="assets/plugins/switchery/switchery.min.js" type="text/javascript"></script>
	
	<!-- datepicker -->
    <script src="assets/plugins/datepicker/js/bootstrap-datepicker.js" type="text/javascript"></script>
	
	<!-- colorpicker -->
    <script src="assets/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js" type="text/javascript"></script>
	
	<!-- bootstrap select -->
    <script src="assets/plugins/bootstrap-select/js/bootstrap-select.min.js" type="text/javascript"></script>
	
	<!-- iCheck -->
    <script src="assets/plugins/iCheck/icheck.min.js" type="text/javascript"></script>
	
	<!-- maniac -->
	<script src="assets/js/maniac.js" type="text/javascript"></script>
	
	<!-- dashboard -->
	<script type="text/javascript">
		maniac.loadicheck();
		maniac.loadinputmask();
		maniac.loadswitchery();
		maniac.loadcolorpicker();
		maniac.loaddatepicker();
		maniac.loadbsselect();
	</script> 	
	<script src="assets/js/jquery.min.js"></script>
	<script type="text/javascript">
	function fnedit(x)  {

		$.ajax({
			url : "${pageContext.request.contextPath}/editTask.do",
			method : "GET",
			data : {
				id : Number(x)
			}

	}).done(function(response) {
		
		var jsonObj = JSON.parse(response);
		
		for(i =  0 ; i<jsonObj.length ; i++){
		
			$("#id").append('<input type="hidden"  name="id" value="'+jsonObj[i].id+'"/>');
			$("#taskName1").val(jsonObj[i].taskName);
			$("#category1").val(jsonObj[i].category);
			$("#milestone1").val(jsonObj[i].milestone);
			$("#closeDate1").val(jsonObj[i].closeDate);
			$("#taskTime1").val(jsonObj[i].taskTime);
			$("#ownerName1").val(jsonObj[i].ownerName);
			$("#contactName1").val(jsonObj[i].contactName);
			$("#taskStatus1").val(jsonObj[i].taskStatus);
			$("#taskPriority1").val(jsonObj[i].taskPriority);
			$("#tags1").val(jsonObj[i].tags);
			$("#taskDesc1").val(jsonObj[i].taskDesc);
		}
		
	});
}
</script>

	
</body>
<!-- END BODY -->

<!-- Mirrored from maniac.yakuzi.eu/basic-tables.html by HTTrack Website Copier/3.x [XR&CO'2013], Sun, 01 Jan 2017 05:31:12 GMT -->
</html>