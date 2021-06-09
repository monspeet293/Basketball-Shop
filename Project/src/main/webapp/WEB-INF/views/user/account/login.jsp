<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>

<title>Login</title>
</head>
<body>
	<div class="row">
		<div id="sidebar" class="span3">
			<div class="well well-small">
				<ul class="nav nav-list">
					<c:forEach var="item" items="${ categories }">
						<li><a href='<c:url value="/product/${item.id }" />'><span
								class="icon-chevron-right"></span>${ item.name }</a></li>
					</c:forEach>

					<li><a class="totalInCart" href="<c:url value="/gio-hang"/>"><strong>Total
								Amount <span class="badge badge-success pull-right"
								style="line-height: 18px;">${ TotalPriceCart } $</span>
						</strong></a></li>
				</ul>
			</div>

			
			

			
			

		</div>
		<div class="span9">
			<ul class="breadcrumb">
				<li><a href="index.html">Home</a> <span class="divider">/</span></li>
				<li class="active">Login</li>
			</ul>
			<h3>User</h3>
			<hr class="soft" />

			<div class="row">
				<div class="span1">&nbsp;</div>
				<div class="span4">
					<div class="well">
						<h5>Sign In</h5>
						</br>
						<form:form action="dang-nhap" method="POST" modelAttribute="user" >
							 
							<c:if test="${not empty statusLogin }"><div class="alert alert-danger">
								<a href="#" class="close" data-dismiss="alert"
									aria-label="close">&times;</a> <strong>${statusLogin }</strong>
							</div></c:if>
							<div class="control-group">
								<label class="control-label" for="inputEmail">Account</label>
								<div class="controls">
									<form:input type="email" placeholder="Enter Email" class="span3"
										path="user" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputPassword">Password</label>
								<div class="controls">
									<form:input type="password" class="span3"
										placeholder="Enter password" path="password" />
								</div>
							</div>
							<div class="control-group">
								<div class="controls">
									<button type="submit" class="btn btn-primary">Sign In</button>
									<a href="#">Forgot password</a>
								</div>
							</div>
						</form:form>
					</div>
				</div>
			</div>

		</div>
	</div>
</body>
