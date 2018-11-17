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
	
	<title>Maniac - contacts</title>
	
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
				<h1 class="page-title">Documents<small>small text goes here</small></h1>
				<!-- BEGIN BREADCRUMB -->

				<!-- END BREADCRUMB -->
			</div>
			<!-- END PAGE HEADING -->
	 <div class="container-fluid">
            <div class="row">
                        <div class="col-lg-12">
							<div class="panel no-border ">
                                <div class="panel-title bg-white no-border">
									<div class="panel-head" >All Files</div>
									
									<div class="clearfix"></div>
                                
                                <div class="panel-body no-padding-left no-padding-right col-md-2" style="margin-right: -89px;">
                                    <dl>
                                        <dt><a href="folder.do?flag=deal"><img src="assets/img/folder.ico" style="width:20%"/></a></dt>
                                        <dd>Deals</dd>
                                        
                                        
                                    </dl>
                                </div>
                                <div class="panel-body no-padding-left no-padding-right col-md-2">
                                    <dl>
                                		<dt><a href="folder.do?flag=task"><img src="assets/img/folder.ico" style="width:20%"/></a></dt>
                                        <dd style="font-size:15px">Tasks</dd>
                                        
                                     </dl>
                                 </div>       
                                	<div class="col-md-8"></div>		<!-- <tr>
                                				<a href="folder.do?flag=deal"><td><img src="assets/img/folder.ico" style="width:5%"/>Deals</td></a>
 												<a href="folder.do?flag=task"><td><img src="assets/img/folder.ico" style="width:5%"/>Tasks</td></a>                               				
                                			</tr>
                                		
									 -->
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