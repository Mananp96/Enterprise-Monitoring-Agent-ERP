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
	
	<title>EMA-contacts</title>
	
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
	<style>
*{font-family: "Source Sans Pro","Helvetica Neue",Helvetica,Arial,sans-serif;}
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
				<h1 class="page-title">Contacts<small>small text goes here</small></h1>
				<!-- BEGIN BREADCRUMB -->
				<ol class="breadcrumb" style="top: -14px;">
					<div class="panel-body">
								<button type="submit" class="btn btn-dark bg-light-blue-300 color-white btn-block" data-toggle="modal" data-target="#ModalForm" style="box-shadow:1px 2px 2px grey"> Add Contact</button>
								<!-- Modal -->
								<div class="modal fade" id="ModalForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
								  <div class="modal-dialog">
									<div class="modal-content">
									  <div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
										<h4 class="modal-title" id="myModalLabel"><i class="fa fa-edit"></i>New Contact</h4>
									  </div>
									  <div class="modal-body no-padding">
										
										<f:form class="form-horizontal padding-md" role="form" modelAttribute="ownerContact" action="add_contact.do">
										<fieldset>	
										<div class="panel-body padding-bottom-40 padding-left-20 padding-right-20">
											  <div class="form-group">
												<label for="firstname" class="control-label col-lg-2">Name</label>
												<div class="col-lg-8">
													<f:input class="form-control"  data-bv-field="username" type="text" placeholder="First Name" path="firstName"/>
												<small style="display: none;" data-bv-validator="notEmpty" data-bv-validator-for="username" class="help-block">The username is required and can't be empty</small><small style="display: none;" data-bv-validator="stringLength" data-bv-validator-for="username" class="help-block">The username must be more than 6 and less than 30 characters long</small><small style="display: none;" data-bv-validator="regexp" data-bv-validator-for="username" class="help-block">The username can only consist of alphabetical, number, dot and underscore</small><small style="display: none;" data-bv-validator="different" data-bv-validator-for="username" class="help-block">The username and password can't be the same as each other</small></div>
											  </div>
											  <div class="form-group"> 
											  	<label for="lastname" class="control-label col-lg-2">    </label>
											       <div class="col-lg-8"> 
											        	<f:input  class="form-control"  placeholder="Last Name" type="text" path="lastName"/>
											         
											       </div> 
											  </div>
											  
											  <div class="form-group"> 
											  	<label for="cname" class="control-label col-lg-2">Company</label>
											       <div class="col-lg-8"> 
											        	<f:select class="form-control" path="ownerCompanyVo.companyid">
													
														<f:options items="${sessionScope.olist}" itemLabel="companyName" itemValue="companyid" ></f:options>
													</f:select>
											         
											       </div> 
											  </div>
											  
											  <div class="form-group">
												<label for="email" class="control-label col-lg-2">Email</label>
												<div class="col-lg-8">
													<f:input class="form-control" id="email" name="email" data-bv-field="email" type="text" placeholder="Email" path="email"/>
												<small style="display: none;" data-bv-validator="notEmpty" data-bv-validator-for="email" class="help-block">The email address is required and can't be empty</small><small style="display: none;" data-bv-validator="emailAddress" data-bv-validator-for="email" class="help-block">The input is not a valid email address</small></div>
											  </div>
											  
											  <div class="form-group"> 
											       <label class="control-label col-lg-2">Phone</label> 
											       <div class="col-lg-8"> 
											        <f:input name="phone" class="form-control"  id="phone" placeholder="Phone Number" type="text" path="phone"/> 
											       </div> 
										      </div>
										      
										       <div class="form-group"> 
											       <label class="control-label col-lg-2">Address</label> 
											       <div class="col-lg-8"> 
											        <f:input name="address" class="form-control"   placeholder="Address" type="text" path="address"/> 
											       </div> 
										      </div>
										      
										      <div class="form-group"> 
											       <label class="control-label col-lg-2">country</label> 
											       <div class="col-lg-8"> 
											        <f:select class="form-control" path="country_vo.countryid" >
											        
														<f:options items="${clist}" itemLabel="countryName" itemValue="countryid" ></f:options>
												</f:select> 
											       </div> 
										      </div>
											  
											  <div class="form-group"> 
											  	<label for="tags" class="control-label col-lg-2">Tags</label>
											       <div class="col-lg-8"> 
											        	<f:input name="tags" class="form-control" id="tags" placeholder="Seperate Tags with commas" type="text" path="tags"/>
											         
											       </div> 
											  </div>
											  
											 
										</div>
										</fieldset>
										<div class="modal-footer">
										
										<button type="submit" class="btn btn-success" >Add</button>
									  </div>
										</f:form>
									  </div>
									  
									</div>
								  </div>
								</div>
                            </div>
				</ol>
				<!-- END BREADCRUMB -->
			</div>
			<!-- END PAGE HEADING -->
	 <div class="container-fluid">
            <div class="row">
                        <div class="col-lg-12">
							<div class="panel no-border ">
                                <div class="panel-title bg-white no-border">
									<div class="panel-head">Contacts</div>
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
									<h3 class="color-grey-700"></h3>
									
										<style>
										tr:hover
										{
										cursor: pointer;
										}
										</style>
											<div class="table-responsive">
										<table id="example1" class="table table-hover table-striped">
											<thead>
												<tr>
												<th class="vertical-middle width-60"><div class="checkbox checkbox-theme no-margin"><input id="checkbox" type="checkbox"><label for="checkbox" class="no-padding"></label></div></th>
													
													<th class="vertical-middle">Name</th>
													<th class="vertical-middle">Company</th>
													<th class="vertical-middle">Tags</th>
													<th class="vertical-middle">Phone</th>
													
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${sessionScope.list}" var="i">
															<tr>
																<td class="vertical-middle"><div class="checkbox checkbox-theme no-margin"><input id="checkbox${i.firstName} ${i.lastName}" type="checkbox"><label for="checkbox${i.firstName} ${i.lastName}" class="no-padding"></label></div></td>
																
															    <td onclick="document.location='contactProfile.do?id=${i.contactid}';return true;" style="cursor: hand; ">${i.firstName} ${i.lastName}</td>	  	
																<td onclick="document.location='contactProfile.do?id=${i.contactid}';return true;" style="cursor: hand; ">${i.ownerCompanyVo.companyName}</td>	  
																<td onclick="document.location='contactProfile.do?id=${i.contactid}';return true;" style="cursor: hand; ">${i.tags}</td>
																<td onclick="document.location='contactProfile.do?id=${i.contactid}';return true;" style="cursor: hand; ">${i.phone}</td>
															</tr>
														</c:forEach>
											</tbody>
										</table>	
									</div>
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