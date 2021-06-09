<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<head>
<meta charset="utf-8">
<title>Product-Details</title>
<style>
.product-content {
	overflow-x: hidden;
}
</style>
</head>
<body>
	<!-- 
Body Section 
-->
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
								style="line-height: 18px;">${ TotalPriceCart } $
</span>
						</strong></a></li>
				</ul>
			</div>

			

			 <br> <br>
			<ul class="nav nav-list promowrapper">
				<li>
					
				</li>
				<li style="border: 0">&nbsp;</li>
				<li>
					
				</li>	
				<li style="border: 0">&nbsp;</li>
				<li>
					
				</li>
			</ul>

		</div>
		<div class="span9">
			<ul class="breadcrumb">
				<li><a href="index.html">Home</a> <span class="divider">/</span></li>
				<li><a href="products.html">Product</a> <span class="divider">/</span></li>
				<li class="active">Info Product</li>
			</ul>
			<div class="well well-small">
				<div class="row-fluid">
					<div class="span5">
						<div id="myCarousel" class="carousel slide cntr">
							<div class="carousel-inner">
								<div class="item active">
									<a href="#"> <img
										src="<c:url value="/assets/user/img/${product.img }"/>" alt=""
										style="width: 100%"></a>
								</div>
							</div>
							<a class="left carousel-control" href="#myCarousel"
								data-slide="prev">‹</a> <a class="right carousel-control"
								href="#myCarousel" data-slide="next">›</a>
						</div>
					</div>
					<div class="span7">
						<h3>${product.name }</h3>
						<hr class="soft" />

						<form class="form-horizontal qtyFrm" method="get" action="<c:url value="/AddCart/${product.id }"/>">
							<div class="control-group">
								<label class="control-label"><span>Price: <fmt:formatNumber type = "number" 
         maxFractionDigits = "3" value = "  ${product.price }" /></span></label>
							</div>
							<p>${product.title }
							<p>
								<button type="submit" class="shopBtn">
									<span class=" icon-shopping-cart"></span> Buy It
								</button>
						</form>
					</div>
				</div>
				<hr class="softn clr" />


				<ul id="productDetail" class="nav nav-tabs">
					<li class="active"><a href="#home" data-toggle="tab">Product
							Details</a></li>
					<li class=""><a href="#profile" data-toggle="tab">Related
							Products </a></li>
				</ul>
				<div id="myTabContent" class="tab-content tabWrapper">
					<div class="tab-pane fade active in" id="home">
						${product.details }</div>
					<div class="tab-pane fade" id="profile">
					<c:set var="countList" value="${productByIdCate.size()}" />
					<c:if test="${productByIdCate.size()>5 }">
					<c:set var="countList" value="5" />
					</c:if>

						<c:forEach var="item" items ="${productByIdCate }" begin="1" end="${countList }" varStatus="loop">
							<div class="row-fluid">
								<div class="span2">
									<img src="<c:url value="/assets/user/img/${item.img }"/>" alt="">
								</div>
								<div class="span6">
									<h5>${item.name }</h5>
									<p>${item.title }</p>
								</div>
								<div class="span4 alignR">
									<form class="form-horizontal qtyFrm">
										<h3>£<fmt:formatNumber type = "number" 
         maxFractionDigits = "3" value = "  ${product.price }" /></h3>
										<div class="btn-group">
											<a href="product_details.html" class="defaultBtn"><span
												class=" icon-shopping-cart"></span> Buy It</a> <a
												href="product_details.html" class="shopBtn">VIEW</a>
										</div>
									</form>
								</div>
							</div>
							<hr class="soft">
						</c:forEach>



					</div>

				</div>
			</div>
		</div>
		<!-- Body wrapper -->
</body>
