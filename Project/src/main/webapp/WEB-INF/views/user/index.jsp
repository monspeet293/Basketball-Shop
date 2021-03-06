<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>  
<title>Home</title>
<link href="<c:url value="assets/user/ico/favicon.png"/>"
	rel="shortcut icon">
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
					<div class="thumbnail">
						<img
							src="<c:url value="/assets/user/img/design3.JPG"/>"
							alt="bootstrap ecommerce templates">
						<div class="caption">
							<h4>
								
							</h4>
						</div>
					</div>
				</li>
				<li style="border: 0">&nbsp;</li>
				<li>
					<div class="thumbnail">
						<img
							src="<c:url value="/assets/user/img/design2.JPG"/>"
							alt="shopping cart template">
						<div class="caption">
							<h4>
								
								
							</h4>
						</div>
					</div>
				</li>
				<li style="border: 0">&nbsp;</li>
				<li>
					<div class="thumbnail">
						<img
							src="<c:url value="/assets/user/img/ptitclb.jpg"/>"
							alt="bootstrap template">
						<div class="caption">
							<h4>
								
							</h4>
						</div>
					</div>
				</li>
			</ul>

		</div>
		<div class="span9">
			<div class="well np">
				<div id="myCarousel" class="carousel slide homCar">
					<div class="carousel-inner">
					<c:forEach var="item" items="${slides }" varStatus="index">
					<c:if test="${index.first }">
					<div class="item active">
					</c:if>
					<c:if test="${not index.first }">
					<div class="item">	
					</c:if>
					<img style="width: 100%"
								src="<c:url value="/assets/user/img/slide/${item.img }"/>"
								alt="bootstrap ecommerce templates">
							<div class="carousel-caption">
								<h4>${item.caption }</h4>
								<p>
									<span>${item.content }</span>
								</p>
							</div> 
							</div>
					</c:forEach>
						
					</div>
					<a class="left carousel-control" href="#myCarousel"
						data-slide="prev">&lsaquo;</a> <a class="right carousel-control"
						href="#myCarousel" data-slide="next">&rsaquo;</a>
				</div>
			</div>
			<!--
New Products
-->
			<div class="well well-small">
			<h3>New Product</h3>
			<hr class="soften" />
			<div class="row-fluid">
				<div id="newProductCar" class="carousel slide">
					<div class="carousel-inner">
					<c:if test="${ products.size() > 0 }">
						<div class="item active">
							<ul class="thumbnails">
							<c:forEach var="item" items="${ products }" varStatus="loop">
								<li class="span3">
									<div class="thumbnail">
										<a class="zoomTool" href="<c:url value="/product-details/${item.id }"/>"
											title="add to cart"><span class="icon-search"></span>
											Choose</a> <a href="product_details.html"><img
											src="<c:url value="/assets/user/img/${ item.img }"/>" alt=""></a>
									</div>
								</li>
								<c:if test="${ (loop.index + 1) % 4 == 0 || (loop.index + 1)  == products.size() }">
										</ul>
									</div>
									<c:if test="${ (loop.index + 1) < products.size() }">
										<div class="item">
											<ul class="thumbnails">
									</c:if>
								</c:if>
							</c:forEach>
					</c:if>
						
					</div>
					<a class="left carousel-control" href="#newProductCar"
						data-slide="prev">&lsaquo;</a> <a class="right carousel-control"
						href="#newProductCar" data-slide="next">&rsaquo;</a>
				</div>
			</div>
			
		</div>
			<!--
	Featured Products
	-->
			<div class="well well-small">
				<h3>
					<a class="btn btn-mini pull-right" href="#"
						title="View more">VIew More<span class="icon-plus"></span></a>
					Featured Products
				</h3>
				<hr class="soften" />
				<div class="row-fluid">
				<c:if test="${ products.size() > 0  }">
				<ul class="thumbnails">
				<c:forEach var="item" items="${products }" varStatus="loop">
				<li class="span4">
							<div class="thumbnail">
								<a class="zoomTool" href="<c:url value="/product-details/${item.id }"/>"
									title="add to cart"><span class="icon-search"></span> Choose
									</a> <a href="chitietsanpham/${item.id}"><img
									src="<c:url value="/assets/user/img/${item.img}"/>" alt=""></a>
								<div class="caption">
									<h5>${item.name}</h5>
									<h4>
										<a class="defaultBtn" href="#"
											title="Click to view"><span class="icon-zoom-in"></span></a>
										<a class="btn btn-primary" href="<c:url value="/AddCart/${item.id }"/>" title="add to cart"><span
											class="icon-plus"></span></a> <span class="pull-right">${item.price } $</span>
									</h4>
								</div>
							</div>
						</li>						
				<c:if test="${(loop.index+1)%3 == 0||(loop.index+1) == products.size() }">
				</ul>
				<c:if test="${loop.index+1 < products.size()}">
				<ul class="thumbnails"></c:if>
				</c:if>
				</c:forEach>
				</c:if>	
				
				
				</div>
			</div>

			
		</div>
	</div>
<script type="text/javascript">

</script>
</body>
