<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  

<head>

<title>Pay</title>
</head>
<body>
<div class="row">

	<div class="span9">
    <ul class="breadcrumb">
		<li><a href="index.html">Home</a> <span class="divider">/</span></li>
		<li class="active">Login</li>
    </ul>
	<h3> User</h3>	
	<hr class="soft"/>
	
	<div class="row">
		<div class="span4" style="
    width: 100%;
">
			<div class="well">
			<br/>
			<form:form action="checkout" method="post" modelAttribute="bills" class="form-horizontal">
			<h3>Pay </h3>
		<div class="control-group">
			<label class="control-label">Full Name<sup>*</sup></label>
			<div class="controls">
			  <form:input type="text" placeholder="Nhập họ tên" class="span3" path="displayname" />
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Email<sup>*</sup></label>
			<div class="controls">
			  <form:input type="email" placeholder="Nhập Email" class="span3" path="user" />
			</div>
		</div>
		 <div class="control-group">
			<label class="control-label">Phone<sup>*</sup></label>
			<div class="controls">
			  <form:input type="text" placeholder="Nhập số điện thoại" class="span3" path="phone" />
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Address <sup>*</sup></label>
			<div class="controls">
			  <form:textarea path="address" rows="5" col="30"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Note <sup>*</sup></label>
			<div class="controls">
			  <form:textarea path="note" rows="5" col="30"/>
			</div>
		</div>
	<div class="control-group">
		<div class="controls">
		 <input type="submit" name="submitAccount" value="Order" class="btn btn-primary">
		</div>
	</div>
	</form:form>
	
		</div>
		</div>
		<div class="span1"> &nbsp;</div>
		
	
	
</div>
</div>
</body>
