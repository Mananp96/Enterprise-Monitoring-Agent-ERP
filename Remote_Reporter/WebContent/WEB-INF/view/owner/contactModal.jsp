<div class="modal fade" id="ModalForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
														  <div class="modal-dialog">
															<div class="modal-content">
															  <div class="modal-header">
																<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
																<h4 class="modal-title" id="myModalLabel"><i class="fa fa-edit"></i>Edit Contact</h4>
															  </div>
															  <div class="modal-body no-padding">
																
																<f:form class="form-horizontal padding-md" role="form" modelAttribute="ownerContact" action="update_contact.do">
																<c:forEach items="${sessionScope.editclist}" var="i">
																<fieldset>	
																<div class="panel-body padding-bottom-40 padding-left-20 padding-right-20">
																	  <div class="form-group">
																		<label for="firstname" class="control-label col-lg-2">Name</label>
																		<div class="col-lg-8">
																			<f:input class="form-control"  data-bv-field="username" type="text" placeholder="First Name" value="${i.firstName}" path="firstName"/>
																		<small style="display: none;" data-bv-validator="notEmpty" data-bv-validator-for="username" class="help-block">The username is required and can't be empty</small><small style="display: none;" data-bv-validator="stringLength" data-bv-validator-for="username" class="help-block">The username must be more than 6 and less than 30 characters long</small><small style="display: none;" data-bv-validator="regexp" data-bv-validator-for="username" class="help-block">The username can only consist of alphabetical, number, dot and underscore</small><small style="display: none;" data-bv-validator="different" data-bv-validator-for="username" class="help-block">The username and password can't be the same as each other</small></div>
																	  </div>
																	  <div class="form-group"> 
																	  	<label for="lastname" class="control-label col-lg-2">    </label>
																	       <div class="col-lg-8"> 
																	        	<f:input  class="form-control"  placeholder="Last Name" type="text" value="${i.lastName}" path="lastName"/>
																	         
																	       </div> 
																	  </div>
																	  
																	  <div class="form-group"> 
																	  	<label for="cname" class="control-label col-lg-2">Company</label>
																	       <div class="col-lg-8"> 
																	        	<f:input  class="form-control"  placeholder="Company Name" type="text" value="${i.companyName }" path="companyName"/>
																	         
																	       </div> 
																	  </div>
																	  
																	  <div class="form-group">
																		<label for="email" class="control-label col-lg-2">Email</label>
																		<div class="col-lg-8">
																			<f:input class="form-control" id="email" name="email" data-bv-field="email" type="text" placeholder="Email" value="${i.email }" path="email"/>
																		<small style="display: none;" data-bv-validator="notEmpty" data-bv-validator-for="email" class="help-block">The email address is required and can't be empty</small><small style="display: none;" data-bv-validator="emailAddress" data-bv-validator-for="email" class="help-block">The input is not a valid email address</small></div>
																	  </div>
																	  
																	  <div class="form-group"> 
																	       <label class="control-label col-lg-2">Phone</label> 
																	       <div class="col-lg-8"> 
																	        <f:input name="phone" class="form-control"  id="phone" placeholder="Phone Number" type="text" value="${i.phone }" path="phone"/> 
																	       </div> 
																      </div>
																      
																       <div class="form-group"> 
																	       <label class="control-label col-lg-2">Address</label> 
																	       <div class="col-lg-8"> 
																	        <f:input name="address" class="form-control"   placeholder="Address" type="text" value="${i.address }" path="address"/> 
																	       </div> 
																      </div>
																      
																      <div class="form-group"> 
																	       <label class="control-label col-lg-2">country</label> 
																	       <div class="col-lg-8"> 
																	        <f:select class="form-control" path="country_vo.id" >
																	        
																				<f:options items="${clist}" itemLabel="countryName" value="${i.countryName }" itemValue="id" ></f:options>
																		</f:select> 
																	       </div> 
																      </div>
																	  
																	  <div class="form-group"> 
																	  	<label for="tags" class="control-label col-lg-2">Tags</label>
																	       <div class="col-lg-8"> 
																	        	<f:input name="tags" class="form-control" id="tags" placeholder="Seperate Tags with commas" type="text" value="${i.tags }" path="tags"/>
																	         
																	       </div> 
																	  </div>
																	  
																	 
																</div>
																</fieldset>
																<div class="modal-footer">
																
																<button type="submit" class="btn btn-success" >Add</button>
															  </div>
															  </c:forEach>
																</f:form>
															  </div>
															  
															</div>
														  </div>
												</div>