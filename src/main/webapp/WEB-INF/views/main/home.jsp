<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <style>
  /* Make the image fully responsive */
  .carousel-inner img {
    width: 70%;
    height: 35%;
  }
  
  .container{
  width: 1190px; , margin: 0 auto; padding: 0 30px; box-sizing: border-box; }
  
  .container-fluid{ min-width: 1190px; }
  
  .products-box{ min-height: 500px; padding: 20px 30px;
  }

  
  .products-box .group-title{
  padding: 22px 0 16px; font-size: 14px; line-height: 18px; float: left; }
  
    
  .products-box .link-images::before{
  content: ''; display: inline-block; width: 200px; height: 175px;
  background-size: 444px 439px; margin: -6px 1px 0 0; vertical-align: top;
  }
    
  .products-box .link-images::after{
 content: ''; display: inline-block; width: 200px; height: 175px;
  background-size: 444px 439px; margin: -6px 1px 0 0; vertical-align: top;
  }
  
  </style>
</head>
	<body>
		
		<div id="demo" class="carousel slide" data-ride="carousel" style="display:none">
		
			  <!-- Indicators -->
			  <ul class="carousel-indicators">
			    <li data-target="#demo" data-slide-to="0" class="active"></li>
			    <li data-target="#demo" data-slide-to="1"></li>
			    <li data-target="#demo" data-slide-to="2"></li>
			  </ul>
				  
			  <!-- The slideshow -->
			  <div class="carousel-inner">
			    <div class="carousel-item active">
			      <img src="<%=request.getContextPath()%>/img/2022/03/04/29522d85-7628-48c7-8acb-077469df2d5b_IMG_20211231_215247.jpg" alt="angel" width="500" height="300">
			    </div>
			    <div class="carousel-item">
			      <img src="<%=request.getContextPath()%>/img/2022/03/04/22f83975-c710-4a96-a0d7-6220520c7d60_20210619_170537_HDR.jpg" alt="Pint with Daddy" width="500" height="300">
			    </div>
			    <div class="carousel-item">
			      <img src="<%=request.getContextPath()%>/img/2022/03/04/69ae7518-4379-440e-97e7-879eb742c75c_IMG_20210321_120807.jpg" alt="resemblences" width="500" height="300">
			    </div>
			  </div>
			  
			  <!-- Left and right controls -->
			  <a class="carousel-control-prev" href="#demo" data-slide="prev">
			    <span class="carousel-control-prev-icon"></span>
			  </a>
			  <a class="carousel-control-next" href="#demo" data-slide="next">
			    <span class="carousel-control-next-icon"></span>
			  </a>
		</div>
	
		<div class = "products-box container">
			<div class = "group-title after">
				<div class="group-title">
					<a href="#" class="link-image"></a>
				</div>
			</div>
		
		</div>
		
	</body>
</html>
