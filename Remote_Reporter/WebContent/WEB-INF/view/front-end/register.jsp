<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<!-- BEGIN HEAD -->

<!-- Mirrored from maniac.yakuzi.eu/register.html by HTTrack Website Copier/3.x [XR&CO'2013], Sun, 01 Jan 2017 05:31:31 GMT -->
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
	<meta content="" name="description"/>
	<meta content="" name="author"/>
	
	<title>EMA - Register</title>
	
	<!-- BEGIN CORE FRAMEWORK -->
	<link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="assets/plugins/ionicons/css/ionicons.min.css" rel="stylesheet" />
	<link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
	<!-- END CORE FRAMEWORK -->
	
	<!-- BEGIN PLUGIN STYLES -->
	<link href="assets/plugins/animate/animate.css" rel="stylesheet" />
	<link href="assets/plugins/bootstrapValidator/bootstrapValidator.min.css" rel="stylesheet" />
	<link href="assets/plugins/switchery/switchery.min.css" rel="stylesheet" />
	<!-- END PLUGIN STYLES -->
	
	<!-- BEGIN THEME STYLES -->
	<link href="assets/css/material.css" rel="stylesheet" />
	<link href="assets/css/style.css" rel="stylesheet" />
	<link href="assets/css/plugins.css" rel="stylesheet" />
	<link href="assets/css/helpers.css" rel="stylesheet" />
	<link href="assets/css/responsive.css" rel="stylesheet" />
	<!-- END THEME STYLES -->
	<style>
	body {
		width: 100%;
        height: auto;
        background-image: url('assets/img/bg11.jpg');
        background-size: cover;
         
    }
	</style>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body >
	<!-- BEGIN CONTENT -->
	<div class="wrapper animated fadeInDown">
		<div class="panel overflow-hidden" style="margin: 50px 437px 0px 437px">
			<div class="bg-teal-500 padding-top-25 no-padding-bottom font-size-20 color-white text-center text-uppercase">
				<i class="ion-person-add margin-right-5"></i> Create a new account
			</div>
			<form id="checkform" method="post" action="registerUser.do" modelAttribute="rvo">
				<div class="alert bg-teal-500 text-center color-white no-radius no-margin padding-top-15 padding-bottom-30 padding-left-20 padding-right-20">create your own private account by one click</div>
				<div class="box-body padding-md">
					<div class="row">
						<div class="form-group col-lg-6">
							<!-- <label for="firstname" class="control-label">Firstname</label> -->
							<input type="text" name="firstname" id="firstname" class="form-control input-lg" placeholder="Firstname" required="required" />
						</div>
						
						<div class="form-group col-lg-6">
							<!-- <label for="lastname" class="control-label">Lastname</label> -->
							<input type="text" name="lastname" id="lastname" class="form-control input-lg" placeholder="Lastname" required="required" />
						</div>
					</div>
					
					<div class="form-group">
						<!-- <label for="companyname" class="control-label">Company Name</label> -->
						<div class="input-group">
							<input type="text" style="margin-right: 267px;" name="companyname" id="username" class="form-control input-lg" placeholder="Comapny Name" required="required" />
						</div>
					</div>
					
					<div class="form-group">
						<!-- <label for="username" class="control-label">Username</label> -->
						<div class="input-group">
							<input type="text" style="margin-right: 267px;" name="username" id="username" class="form-control input-lg" placeholder="Email" required="required" />
							<!-- <span class="input-group-addon">.com</span> -->
						</div>
					</div>
										
					<div class="form-group">
					<!-- 	<label for="password" class="control-label">Password</label> -->
						<input type="password" name="password" id="password" class="form-control input-lg" placeholder="Password" required="required"/>
					</div>  
					
					<div class="form-group">
					<!-- 	<label for="repeat-password" class="control-label">Confirm Password</label> -->
						<input type="password" name="password1" id="repeat-password" class="form-control input-lg" placeholder="Re-type Password" required="required"/>
					</div>  
					
					<!-- <div class="form-group margin-top-20">
						<input type="checkbox" class="js-switch" id="checkbox" checked /><label for="checkbox" class="font-size-12 normal margin-left-10">I agree to the <a href="#">terms of use.</a></label>
					</div>   -->              
					
					<button type="submit" class="btn btn-dark  padding-10 btn-block color-white" style="background-color: #293c4e !important;opacity: 0.9;">Create Account</button>  
				</div>
			</form>
			<div class="panel-footer padding-md no-margin no-border bg-teal-500 text-center color-white">&copy; 2017 EMA </div>
		</div>
	</div>
	<!-- END CONTENT -->
		
	<!-- BEGIN JAVASCRIPTS -->
	
	<!-- BEGIN CORE PLUGINS -->
	<script src="assets/plugins/jquery-1.11.1.min.js" type="text/javascript"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="assets/plugins/bootstrap/js/holder.js"></script>
	<script src="assets/plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script>
	<script src="assets/js/core.js" type="text/javascript"></script>
	<!-- END CORE PLUGINS -->
	
	<!-- bootstrap validator -->
	<script src="assets/plugins/bootstrapValidator/bootstrapValidator.min.js" type="text/javascript"></script>
	
	<!-- switchery -->
	<script src="assets/plugins/switchery/switchery.min.js" type="text/javascript"></script>
	
	<!-- maniac -->
	<script src="assets/js/maniac.js" type="text/javascript"></script>
	<script type="text/javascript">
		maniac.loadvalidator();
		maniac.loadswitchery();
	</script>
	
	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->

<!-- Mirrored from maniac.yakuzi.eu/register.html by HTTrack Website Copier/3.x [XR&CO'2013], Sun, 01 Jan 2017 05:31:31 GMT -->
</html>