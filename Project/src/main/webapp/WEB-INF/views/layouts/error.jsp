<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>Error</title>
    <meta name="author" content="wpfast" />
    <meta name="keywords" content="404 page, worker, css3, template, html5 template, wpfast" />
    <meta name="description" content="404 - Page Template" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <!-- Libs CSS -->
    <link type="text/css" media="all" href="<c:url value="/assets/err/boostrap-files/css/bootstrap.min.css" />" rel="stylesheet" />
    <!-- Template CSS -->
    <link type="text/css" media="all" href="<c:url value="/assets/err/css/style.css" />" rel="stylesheet" />
    <!-- Responsive CSS -->
    <link type="text/css" media="all" href="<c:url value="/assets/err/css/respons.css" />" rel="stylesheet" />

    <!-- Favicons -->
    <link rel="apple-touch-icon" sizes="144x144" href="<c:url value="/assets/err/img/favicons/favicon144x144.png" />" />
    <link rel="apple-touch-icon" sizes="114x114" href="<c:url value="/assets/err/img/favicons/favicon114x114.png" />" />
    <link rel="apple-touch-icon" sizes="72x72" href="<c:url value="/assets/err/img/favicons/favicon72x72.png" />" />
    <link rel="apple-touch-icon" href="<c:url value="/assets/err/img/favicons/favicon57x57.png" />" />
    <link rel="shortcut icon" href="<c:url value="/assets/err/img/favicons/favicon.png" />" />
    <!-- Google Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300italic,800italic,800,700italic,700,600italic,600,400italic,300' rel='stylesheet' type='text/css' />

</head>
<body>

           <div class="info">
                <h2>Not have access!</h2>
                <c:if test="${empty LoginInfo }">
                <p>${statusAuthorLogin }</p>
                <a href="http://localhost:8080/Weapon/dang-nhap" class="btn">Sign In</a>
                </c:if>
                <c:if test="${not empty LoginInfo }">
                <p>${statusAuthor}</p>
                <a href="http://localhost:8080/Weapon/" class="btn">Back To</a>
                </c:if>
                
                
            </div>

    <!-- Scripts -->
    <script src="<c:url value="/assets/err/js/jquery-3.3.1.min.js" />" type="text/javascript"></script>
    <script src="<c:url value="/assets/err/boostrap-files/js/bootstrap.min.js" />" type="text/javascript"></script>
    <script src="<c:url value="/assets/err/js/modernizr.custom.js" />" type="text/javascript"></script>
    <script src="<c:url value="/assets/err/js/scripts.js" />" type="text/javascript"></script>

</body>
</html>