<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>   
<head>
<title>Cart</title>
</head>
<body>
<div class="row">
	<div class="span12">
    <ul class="breadcrumb">
		<li><a href="index.html">Homes</a> <span class="divider">/</span></li>
		<li class="active">Cart</li>
    </ul>
	<div class="well well-small">
	<span class="badge badge-success">${statuscheckout }</span>

		<h1>Cart <small class="pull-right"> ${ TotalQuantyCart } product in my cart </small></h1>
	<hr class="soften"/>	

	<table class="table table-bordered table-condensed">
              <thead>
                <tr>
                  <th>Picture</th>
                  <th>Name</th>
                  <th>Price ($)</th>
                  <th>Number </th>
                
                  <th>Remove </th>
                  <th>Total</th>
				</tr>
              </thead>
              <tbody>

				<c:forEach var="item" items="${ Cart }">
					<tr>
	                  <td><img width="100" src="<c:url value="/assets/user/img/${ item.value.product.img }"/>" alt=""></td>
	                  <td>${ item.value.product.title }</td>
	                  <td> <fmt:formatNumber type = "number" 
         maxFractionDigits = "3" value = " ${ item.value.product.price }" /> </td>
	                  <td>
						<input type="number" min="0" max="1000" class="span1" style="max-width:34px" placeholder="1" id="quanty-cart-${item.key }" size="16" type="text" value="${ item.value.quanty }">
						<button data-id="${ item.key }" class="btn btn-mini btn-success edit-cart" type="button">
	                  		<span class="icon-edit"></span>
	                  	</button>
					  </td>
	                  <td>
	                  	<a href="<c:url value="/DeleteCart/${ item.key }"/>" class="btn btn-mini btn-danger" type="button">
	                  		<span class="icon-remove"></span>
	                  	</a>
	                  </td>
	                  <td><fmt:formatNumber type = "number" 
         maxFractionDigits = "3" value = " ${ item.value.totalPrice }" />  </td>
         
	                </tr>
				</c:forEach>

				</tbody>
			
	<!-- 			<td> 
	 		<form class="form-inline">
				  <label style="min-width:159px"> VOUCHERS Code: </label> 
				<input type="text" class="input-medium" placeholder="CODE">
				<p id="demo"></p>
				<button type="submit" data-id="${ TotalPriceCart }"class="shopBtn" id="btn"> ADD</button>
				
				</form>
				</td>-->
            </table><br/>
	<a href="<c:url value="/trang-chu"/>" class="shopBtn btn-large"><span class="icon-arrow-left"></span> Back to Products </a>
	<c:choose>
	<c:when test="${TotalQuantyCart==null || TotalQuantyCart==0  }"><a href="#" id="fail"class="btn btn-danger pull-right">Empty Cart <span class="icon-arrow-up"></span></a></c:when>
	<c:when test="${TotalQuantyCart!=0 }">
		<c:if test="${not empty LoginInfo }">
			<a href="<c:url value="/checkout"/>" class="shopBtn btn-large pull-right">Pay <span class="icon-arrow-right"></span></a>
		</c:if>
		
		<c:if test="${ empty LoginInfo }">
			<a href="<c:url value="/dang-nhap"/>" class="shopBtn btn-large pull-right">Pay <span class="icon-arrow-right"></span></a>
		</c:if>
	</c:when>
	
	</c:choose>


</div>
</div>
</div>

</body> 