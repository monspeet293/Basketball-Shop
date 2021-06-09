
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>  

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title><decorator:title default="WeaponShop" /></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<!-- Bootstrap styles -->
<link href="<c:url value="/assets/user/css/bootstrap.css" />"
	rel="stylesheet" />
	
<!-- Customize styles -->
<link href="<c:url value="/assets/user/style.css"/>" rel="stylesheet" />
<!-- font awesome styles -->
<link
	href="<c:url value="assets/user/font-awesome/css/font-awesome.css"/>"
	rel="stylesheet">

<!-- Favicons -->
<link href="<c:url value="assets/user/ico/favicon.png"/>"
	rel="shortcut icon">

	<decorator:head/>
</head>
<body>
	<!-- 
	Upper Header Section 
-->
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="topNav">
			<div class="container">
				<div class="alignR">
					<div class="pull-left">
						<a href="<c:url value="/trang-chu"/>"> PTIT</a>
						<a class="logo" href="<c:url value="/trang-chu"/>"><span>PTIT</span> <img width="50px"
					src="<c:url value="/assets/user/img/logo.png"/>"
					alt="weapon shop"> </a>
					</div>
					<a  class="menu " href="<c:url value="/trang-chu"/>"></span>
						Home</a> 
						<c:if test="${not empty LoginInfo }">
						<a class="menu" href="#"><span class="icon-user"></span>${LoginInfo.displayname }</a>
						<a class="menu" href="<c:url value="/dang-xuat"/>"><span class="icon-edit"></span>Sign Out</a>
						</c:if>
						<c:if test="${empty LoginInfo }">
						<a class="menu" id="dk"href="<c:url value="/dang-ky"/>"></span>Registration</a>
						</c:if>
						  <a class="menu" href="contact.html"></span>
						Support</a>
								<ul class="nav pull-right">
						<c:if test="${empty LoginInfo }">
						<a class="menu" href="<c:url value="/dang-nhap"/>">
									Sign In </a>
									
						</c:if>
						<c:if test="${not empty LoginInfo }">
						<li class="menu"><a href="#">${LoginInfo.displayname }<b class="caret"></b></a></li>
						</c:if>
							
						</ul >
						 <a class="menu" href="<c:url value="/gio-hang"/>"></span> Cart [${ TotalQuantyCart }] </a>
				</div>
			</div>
		</div>
	</div>

	<!--
Lower Header Section 
-->
	<div class="container">
		<div id="gototop"></div>
		<%@include file="/WEB-INF/views/layouts/user/header.jsp" %>
		<decorator:body/>
		
	</div>
	<!-- /container -->
<%@include file="/WEB-INF/views/layouts/user/footer.jsp" %>
	
	<a href="#" class="gotop"><i class="icon-double-angle-up"></i></a>
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="<c:url value="/assets/user/js/jquery.js" />"></script>
	<script src="<c:url value="/assets/user/js/bootstrap.min.js" />"></script>
	<script
		src="<c:url value="/assets/user/js/jquery.easing-1.3.min.js" />"></script>
	<script
		src="<c:url value="/assets/user/js/jquery.scrollTo-1.4.3.1-min.js" />"></script>
	<script src="<c:url value="/assets/user/js/shop.js" />"></script>
	<decorator:getProperty property="page.script"></decorator:getProperty>
	<script>
	console.log("re render")
		const pathName = window.location.pathname.split("/")[2];
		const menu = document.querySelectorAll('.menu');
		if(pathName === "trang-chu") document.querySelectorAll('.menu')[0].className = "active"
		if(pathName === "dang-ky") document.querySelectorAll('.menu')[1].className = "active"
		if(pathName === "contact.html") document.querySelectorAll('.menu')[2].className = "active"
		if(pathName === "gio-hang") document.querySelectorAll('.menu')[4].className = "active"
			if(pathName === "dang-nhap") document.querySelectorAll('.menu')[3].className = "active"
		
	</script>
</body>
</html>