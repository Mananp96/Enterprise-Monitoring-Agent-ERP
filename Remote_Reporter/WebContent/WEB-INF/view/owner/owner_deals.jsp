<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
    <%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html>

<html lang="en">
<!-- BEGIN HEAD -->

<!-- Mirrored from maniac.yakuzi.eu/basic-tables.html by HTTrack Website Copier/3.x [XR&CO'2013], Sun, 01 Jan 2017 05:31:12 GMT -->
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
<meta content="" name="description"/>
<meta content="" name="author"/>
<title>Maniac - Deals</title>
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

<!-- BEGIN DRAG AND DROP STYLES -->
<style>
*{font-family: "Source Sans Pro","Helvetica Neue",Helvetica,Arial,sans-serif;}
a{color:#337ab7}
    body { background-color:#fafafa;}
        .table-sortable {
            position: relative;
        }
        .table-sortable .sortable-placeholder {
            height: 37px;
        }
        .table-sortable .sortable-placeholder:after {
            position: absolute;
            z-index: 10;
            content: " ";
            height: 37px;
            background: #f9f9f9;
            left: 0;
            right: 0;
        }
        .panel > .panel-body{padding:0px}
        .list-group{margin-bottom: 0px}
        .list-group-item:first-child {
   			border-top-left-radius: 0px;
    		border-top-right-radius: 0px;
		}
		.list-group-item:last-child {
		    margin-bottom: 0;
		    border-bottom-right-radius: 0px;
		    border-bottom-left-radius: 0px;
		}
        
	</style>
<!-- END DRAG AND DROP STYLES -->


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
        <div class="rightside bg-grey-100" style="height:auto">
        	<!-- BEGIN PAGE HEADING -->
            <div class="page-head">
				<h1 class="page-title">Deals<small class="text-muted"></small></h1>
				<!-- BEGIN BREADCRUMB -->
				<ol class="breadcrumb" style="top:-14px">
					<li><div class="panel-body">
								<a href="#" class="btn btn-dark bg-light-blue-300 color-white btn-block" data-toggle="modal" data-target="#ModalForm" style="box-shadow:1px 2px 2px grey">Add New Deal</a>
								<!-- Modal -->
								<div class="modal fade" id="ModalForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
								  <div class="modal-dialog">
									<div class="modal-content">
									  <div class="modal-header no-border">
										<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
										<h4 class="modal-title" id="myModalLabel"><i class="fa fa-edit"></i>Add Deal</h4>
									  </div>
									  <div class="modal-body no-padding">
										
										<f:form class="form-horizontal padding-md" role="form" action="addDeal.do" method="post" modelAttribute="addDeal" enctype="multipart/form-data">
											
											
											<div class="form-group">
												<label for="dealName" class="control-label col-lg-3">Name</label>
												<div class="col-lg-8">
													<f:input class="form-control"  data-bv-field="dealName" placeholder="Deal Name" path="dealName" id="dealName"/>
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
												<label for="value" class="control-label col-lg-3">Value</label>
												<div class="col-lg-8">
													<f:input class="form-control"  data-bv-field="dealValue" type="text" placeholder="Deal Value" path="dealValue" id="dealValue"/>
											    </div>
											</div>
											
											<div class="form-group">
												<label for="milestone" class="control-label col-lg-3">Milestone</label>
												<div class="col-lg-8">
													<f:select class="form-control" path="milestone" id="milestone">
														<f:option value="New">New</f:option>
														<f:option value="Prospect">Prospect</f:option>
														<f:option value="Proposal">Proposal</f:option>
														<f:option value="won">Won</f:option>
														<f:option value="lost">Lost</f:option>
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
												<label for="relatedTo" class="control-label col-lg-3">Related To</label>
												<div class="col-lg-8">
														<f:select class="form-control" path="ownerContactVo.contactid">
														<f:options items="${sessionScope.clist}" itemLabel="firstName" itemValue="contactid" ></f:options>
													</f:select>

											    </div>
											</div>
											
											<div class="form-group">
												<label for="Tags" class="control-label col-lg-3">Tags</label>
												<div class="col-lg-8">
													<f:input class="form-control" id="tags" data-bv-field="tags" type="text" placeholder="Seperate tags with commmas" path="tags"/>
											    </div>
											</div>
											
											<div class="form-group">
												<label for="description" class="control-label col-lg-3">Description</label>
												<div class="col-lg-8">
													<f:textarea class="form-control" rows="5" path="dealDesc" id="dealDesc" ></f:textarea>
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
				
			
            <div class="container-fluid"  style="height:auto">
           	
            	<!-- begin edit deal modal form  -->
            			<div class="modal fade" id="ModalForm2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
								  <div class="modal-dialog">
									<div class="modal-content">
									  <div class="modal-header no-border">
										<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
										<h4 class="modal-title" id="myModalLabel"><i class="fa fa-edit"></i>Edit Deal</h4>
									  </div>
									  <div class="modal-body no-padding">
										
										<f:form class="form-horizontal padding-md" role="form" action="updateDeal.do" method="post" modelAttribute="addDeal"  enctype="multipart/form-data">
											<%-- <f:input type="hidden" id="id" path="id"/> --%>
											<div id="id"></div>
											<div class="form-group">
												<label for="dealName1" class="control-label col-lg-3">Name</label>
												<div class="col-lg-8">
													<f:input class="form-control"  data-bv-field="dealName" id="dealName1" placeholder="Deal Name" path="dealName" />
											    </div>
											</div>
											
											<div class="form-group">
												<label for="ownerName" class="control-label col-lg-3">Owner</label>
												<div class="col-lg-8">
													<f:select class="form-control" id="ownerName" path="ownerCompanyVo.companyid" >
													<f:option value="">Select</f:option>
														<c:forEach items="${olist}" var="owner">
															<f:option value="${owner.companyid}">${owner.firstName} ${owner.lastName}</f:option>
														</c:forEach>
													</f:select>
											    </div>
											</div>
											
											<div class="form-group">
												<label for="value" class="control-label col-lg-3">Value</label>
												<div class="col-lg-8">
													<f:input class="form-control"  data-bv-field="dealValue" type="text" placeholder="Deal Value" path="dealValue" id="dealValue1"/>
											    </div>
											</div>
											
											<div class="form-group">
												<label for="milestone1" class="control-label col-lg-3">Milestone</label>
												<div class="col-lg-8">
										<f:select class="form-control" path="milestone" id="milestone1">
														<f:option value="New">New</f:option>
														<f:option value="Prospect">Prospect</f:option>
														<f:option value="Proposal">Proposal</f:option>
														<f:option value="won">Won</f:option>
														<f:option value="lost">Lost</f:option>
													</f:select>
											    </div>
											</div>
											
											<div class="form-group">
												<label for="closeDate1" class="control-label col-lg-3">Close Date</label>
												<div class="col-lg-8">
													<f:input class="form-control" id="closeDate1" data-inputmask="'alias': 'date'" type="text" placeholder="Select Date" path="closeDate" />
											    </div>
											</div>
											
											<div class="form-group">
												<label for="relatedTo" class="control-label col-lg-3">Related To</label>
												<div class="col-lg-8">
													<f:select class="form-control" id="contactName1" path="ownerContactVo.contactid" >
													<f:option value="">Select</f:option>
														<c:forEach items="${clist}" var="contact">
															<f:option value="${contact.contactid}">${contact.firstName} ${contact.lastName}</f:option>
														</c:forEach>
													</f:select>
											    </div>
											</div>
											
											<div class="form-group">
												<label for="Tags1" class="control-label col-lg-3">Tags</label>
												<div class="col-lg-8">
													<f:input class="form-control"  data-bv-field="tags1" type="text" placeholder="Seperate tags with commmas" path="tags" id="tags1"/>
											    </div>
											</div>
											
											<div class="form-group">
												<label for="description" class="control-label col-lg-3">Description</label>
												<div class="col-lg-8">
													<f:textarea class="form-control" rows="5" path="dealDesc" id="dealDesc1"></f:textarea>
											    </div>
											</div>
											
											<div class="form-group">
												<label for="description" class="control-label col-lg-3">Attachment</label>
												<div class="col-lg-8">
														<input type="file" name="file" />
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
            	<!-- end edit deal modal form  -->
          
            	
					<div class="tab-content" style="width:100%">
						 <div class="tab-pane fade in active" id="demos">
						 	<div class="row">	
					
						<div class="panel panel-default col-xs-2 border-1 border-grey-500" style="height:auto;padding-right: 0px;padding-left:0px;width:20%;">
							<div class="panel-heading">
								<div class="panel-title">New</div>
							</div>
							
							<div class="panel-body" >
								
									 
										
										<c:forEach items="${sessionScope.dlist}" var="i">
											<ul class="list-group list-group-sortable-connected">
											 
											<c:if test="${i.milestone eq 'New'}" >
												<li class="list-group-item list-group-item" style="background-color:#b0bec5;">
													<input type="hidden" value="${i.dealid }" name="id"/>
													<div style="float: left"><a class="text-info" href="viewDealProfile.do?id=${i.dealid }"><h4>${i.dealName}</h4></a></div><div style="float: right"><a href="#" onclick="fnedit(${i.dealid })" data-toggle="modal" data-target="#ModalForm2" ><i class="fa fa-edit"></i></a>  <a href="deleteDeal.do?id=${i.dealid }"><i class="fa fa-trash"></i></a></div>
													<div class="clearfix"></div>
													<div style="margin-bottom: 7px">
														<span style="font-size:15px;" class="text-muted"><b>${i.dealValue }</b></span>
														<span style="border:1px solid #d5d5d5;margin-left:4px;" ></span>
														 <a class="text-info" href="contactProfile.do?id=${i.ownerContactVo.contactid }" style="font-size:15px;margin-left:4px;"><b>${i.ownerContactVo.firstName} ${i.ownerContactVo.lastName}</b></a> 
													</div>
												
													<div><i class="fa fa-clock-o" style="margin-right:5px"></i>Close Date : ${i.closeDate }</div>
												</li>
												
												
												</c:if>										
											</ul>
										</c:forEach>
 									
 										
									
							</div>
						</div>
						
						<div class="panel panel-default col-xs-2 border-1 border-grey-500" style="height:auto;padding-right: 0px;padding-left:0px;width:20%">
							<div class="panel-heading">
								<div class="panel-title">Prospect</div>
							</div>
							<div class="panel-body">
							 	
										
										<c:forEach items="${sessionScope.dlist}" var="j">
											<ul class="list-group list-group-sortable-connected">
											<c:if test="${j.milestone eq 'Prospect'}">
												<li class="list-group-item list-group-item" style="background-color:#ffcc80";>
												
													<div style="float: left"><a class="text-info" href="viewDealProfile.do?id=${j.dealid }"><h4>${j.dealName}</h4></a></div><div style="float: right"><a href="#" onclick="fnedit(${j.dealid })" data-toggle="modal" data-target="#ModalForm2"><i class="fa fa-edit"></i></a>  <a href="deleteDeal.do?id=${j.dealid }"><i class="fa fa-trash"></i></a></div>
													<div class="clearfix"></div>
													<div style="margin-bottom: 7px">
														<span style="font-size:15px;" class="text-muted"><b>${j.dealValue }</b></span>
														<span style="border:1px solid #d5d5d5;margin-left:4px;" ></span>
														 <a class="text-info" href="contactProfile.do?id=${j.ownerContactVo.contactid }" style="font-size:15px;margin-left:4px;"><b>${j.ownerContactVo.firstName } ${j.ownerContactVo.lastName}</b></a> 
													</div>
													<div><i class="fa fa-clock-o" style="margin-right:5px"></i>Close Date : ${j.closeDate }</div>
														
												</li>
												
												</c:if>
											</ul>
										</c:forEach> 
										
									
									
							</div>
						</div>
						
						<div class="panel panel-default col-xs-2 border-1 border-grey-500"style="height:auto;padding-right: 0px;padding-left:0px;width:20%" >
							<div class="panel-heading">
								<div class="panel-title">Proposal</div>
							</div>
							<div class="panel-body">
								
										<c:forEach items="${sessionScope.dlist}" var="k">
											
											 <ul class="list-group list-group-sortable-connected">
											<c:if test="${k.milestone eq 'Proposal'}" >
												<li class="list-group-item list-group-item" style="background-color:#80cbc4;">
												
													<div style="float:left"><a class="text-info" href="viewDealProfile.do?id=${k.dealid }"><h4>${k.dealName}</h4></a></div><div style="float: right"><a href="#" onclick="fnedit(${k.dealid })" data-toggle="modal" data-target="#ModalForm2"><i class="fa fa-edit"></i></a>  <a href="deleteDeal.do?id=${k.dealid }"><i class="fa fa-trash"></i></a></div>
													<div class="clearfix"></div>
													<div style="margin-bottom: 7px">
														<span style="font-size:15px;" class="text-muted"><b>${k.dealValue }</b></span>
														<span style="border:1px solid #d5d5d5;margin-left:4px;" ></span>
														<a class="text-info" href="contactProfile.do?id=${k.ownerContactVo.contactid }" style="font-size:15px;margin-left:4px;"><b>${k.ownerContactVo.firstName} ${k.ownerContactVo.lastName}</b></a>
													</div>
													<div><i class="fa fa-clock-o" style="margin-right:5px"></i>Close Date : ${k.closeDate }</div>
												
												</li>
												</c:if>										
											</ul>
										</c:forEach>
										
							</div>
						</div>
						
						<div class="panel panel-default col-xs-2 border-1 border-grey-500" style="height:auto;padding-right: 0px;padding-left:0px;width:20%">
							<div class="panel-heading">
								<div class="panel-title">Won</div>
							</div>
							<div class="panel-body">
							
								<c:forEach items="${sessionScope.dlist}" var="l">
											<ul class="list-group list-group-sortable-connected">
											 
											<c:if test="${l.milestone eq 'won'}" >
												<li class="list-group-item list-group-item" style="background-color:#81c784;">
												
													<div style="float:left"><a class="text-info" href="viewDealProfile.do?id=${l.dealid }"><h4>${l.dealName}</h4></a></div><div style="float:right"><a href="#" onclick="fnedit(${l.dealid })" data-toggle="modal" data-target="#ModalForm2"><i class="fa fa-edit"></i></a>  <a href="deleteDeal.do?id=${l.dealid }"><i class="fa fa-trash"></i></a></div>
													<div class="clearfix"></div>
													<div style="margin-bottom: 7px">
														<span style="font-size:15px;" class="text-muted"><b>${l.dealValue }</b></span>
														<span style="border:1px solid #d5d5d5;margin-left:4px;" ></span>
														<a class="text-info" href="contactProfile.do?id=${l.ownerContactVo.contactid }" style="font-size:15px;margin-left:4px;"><b>${l.ownerContactVo.firstName } ${l.ownerContactVo.lastName}</b></a> 
													</div>
													<div><i class="fa fa-clock-o" style="margin-right:5px"></i>Close Date : ${l.closeDate }</div>
												</li>
												</c:if>										
											</ul>
								</c:forEach>
								
							</div>
						</div>
						
						<div class="panel panel-default col-xs-2 border-1 border-grey-500" style="height:auto;padding-right: 0px;padding-left:0px;width:20%">
							<div class="panel-heading">
								<div class="panel-title">Lost</div>
							</div>
							<div class="panel-body">
						
								<c:forEach items="${sessionScope.dlist}" var="m">
											
												<ul class="list-group list-group-sortable-connected"> 
											<c:if test="${m.milestone eq 'lost'}" >
												<li class="list-group-item list-group-item" style="background-color:#ff7043">
													<div style="float: left"><h4><a class="text-info" href="viewDealProfile.do?id=${m.dealid }" data-toggle="tooltip" title="" data-original-title="Deal Name">${m.dealName}</a></h4></div><div style="float: right"><a href="#" onclick="fnedit(${m.dealid })" data-toggle="modal" data-target="#ModalForm2"><i class="fa fa-edit"></i></a>  <a href="deleteDeal.do?id=${m.dealid }"><i class="fa fa-trash"></i></a></div>
													<div class="clearfix"></div>
													<div style="margin-bottom: 7px">
														<span style="font-size:15px;" class="text-muted" data-toggle="tooltip" title="" data-original-title="Deal Value"><b>${m.dealValue }</b></span>
														<span style="border:1px solid #d5d5d5;margin-left:4px;" ></span>
														 <a class="text-info" href="contactProfile.do?id=${m.ownerContactVo.contactid }" style="font-size:15px;margin-left:4px;" data-toggle="tooltip" title="" data-original-title="Related To"><b>${m.ownerContactVo.firstName } ${m.ownerContactVo.lastName}</b></a> 
													</div>
													<div><i class="fa fa-clock-o" style="margin-right:5px"></i>Close Date : ${m.closeDate }</div>
												</li>
											</c:if>										
											</ul>
								</c:forEach>
								
							</div>
						</div>
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
    <!-- Latest compiled and minified JavaScript -->
 	<script src="assets/js/jquery.sortable.js"></script>
	<script>
		$(function() {
            $('.thumbnail-sortable').sortable({
                placeholderClass: 'col-sm-6 col-md-4'
            });
            $('.table-sortable tbody').sortable({
                handle: 'span'
            });
            $('.list-group-sortable').sortable({
                placeholderClass: 'list-group-item'
            });
            $('.list-group-sortable-exclude').sortable({
                placeholderClass: 'list-group-item',
                items: ':not(.disabled)'
            });
            $('.list-group-sortable-handles').sortable({
                placeholderClass: 'list-group-item',
                handle: 'span'
            });
            $('.list-group-sortable-connected').sortable({
                placeholderClass: 'list-group-item',
                connectWith: '.connected'
            });
		});
	</script>
	<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-36251023-1']);
  _gaq.push(['_setDomainName', 'jqueryscript.net']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>

	
	<script type="text/javascript">
function fnedit(x)  {

	$.ajax({
		url : "${pageContext.request.contextPath}/editDeal.do",
		method : "GET",
		data : {
			id : Number(x)
		}

	}).done(function(response) {
		
		var jsonObj = JSON.parse(response);
		
		 for(i =  0 ; i<jsonObj.length ; i++){
		
			$("#id").append('<input type="hidden"  name="id" value="'+jsonObj[i].id+'"/>');
			$("#dealName1").val(jsonObj[i].dealName);
			$("#ownerName").val(jsonObj[i].ownerName);
			$("#dealValue1").val(jsonObj[i].dealValue);
			$("#milestone1").val(jsonObj[i].milestone);
			$("#closeDate1").val(jsonObj[i].closeDate);
			$("#contactName1").val(jsonObj[i].contactName);
			$("#tags1").val(jsonObj[i].tags);
			$("#dealDesc1").val(jsonObj[i].dealDesc);
		}
		
	});
}
</script>

<!--START AJAX Query for Contact get  -->
<!-- <script>
	function contactGet(x) {

		alert(x);
		removeAllState();
		var http_request = new XMLHttpRequest();
		http_request.onreadystatechange = function()

		{
			if (http_request.readyState == 4) {
			var jsonObj = JSON.parse(http_request.responseText);
				for (var i = 0; i < jsonObj.length; i++) {
					var create = document.createElement("option");
					create.value = jsonObj[i].sid;
					create.text = jsonObj[i].sn;
				}
			}
		}
		console.log(x);
		http_request.open("get", "owner_deals.do?contact="+x, true);
		http_request.send();
	}
	function removeAllState()
	{
		var removeState=document.login.stateid.options.length;
		for(i=removeState ; i>0 ; i-- )
		{
			document.login.stateid.remove(i);
		}
	}

</script> -->
	<!-- END AJAX Query for Contact get -->
</body>
<!-- END BODY -->

<!-- Mirrored from maniac.yakuzi.eu/basic-tables.html by HTTrack Website Copier/3.x [XR&CO'2013], Sun, 01 Jan 2017 05:31:12 GMT -->
</html>