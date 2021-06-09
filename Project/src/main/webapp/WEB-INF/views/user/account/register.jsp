<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  

<head>

<title>Registration</title>
</head>
<body>
<div class="row">
<div id="sidebar" class="span3">


			  

	</div>
	<div class="span9">
    <ul class="breadcrumb">
		<li><a href="index.html">Home</a> <span class="divider">/</span></li>
		<li class="active">Login</li>
    </ul>
	<h3> User ${statusLogin }</h3>	
	<hr class="soft"/>
	
	<div class="row">
		<div class="span4">
			<div class="well">
			<h5>Registration</h5><br/>
			<form:form action="dang-ky" method="POST" modelAttribute="user">
			  <div class="control-group">
				<label class="control-label" for="inputEmail">E-mail</label>
				<div class="controls">
				  <form:input type="email" placeholder="Enter Email" class="span3" path="user" />  
				</div>
				<label class="control-label" for="inputEmail">Password</label>
				<div class="controls">
				  <form:input type="password" class="span3" placeholder="Enter Password" path="password" />
				</div>
				<label class="control-label" for="inputEmail">Name</label>
				<div class="controls">
				  <form:input type="text" class="span3" placeholder="Enter Name" path="displayname" />
				</div>
				<label class="control-label" for="inputEmail">Address</label>
				<div class="controls">
				  <form:input type="text" class="span3" placeholder="Enter Address" path="address" />
				</div>
			  </div>
			  <div class="controls">
			  <button type="submit" class="btn btn-success">Registration</button>
			  </div>
			</form:form>
		</div>
		</div>
		<div class="span1"> &nbsp;</div>
		<div class="span4">
			<div class="well">
			<h5>Sign In </h5></br>
			<form:form action="dang-nhap" method="POST" modelAttribute="user">
			  <div class="control-group">
				<label class="control-label" for="inputEmail">Account</label>
				<div class="controls">
				  <form:input type="email" placeholder="Enter Email" class="span3" path="user" />
				</div>
			  </div>
			  <div class="control-group">
				<label class="control-label" for="inputPassword">Password</label>
				<div class="controls">
				  <form:input type="password" class="span3" placeholder="Enter password" path="password" />
				</div>
			  </div>
			  <div class="control-group">
				<div class="controls">
				  <button type="submit" class="btn btn-primary">Sign In</button> <a href="#">Forgot password</a>
				</div>
			  </div>
			</form:form>
		</div>
		</div>
	</div>	
	
</div>
</div>
</body>
