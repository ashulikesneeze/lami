<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html>
<head>
  <meta charset="utf-8">
  	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script src="//code.jquery.com/jquery-3.4.1.min.js"></script>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
  	<style>
  		*{ 
		padding: 0; margin: 0; list-style: none; text-decoration: none; color: #000;
		}
		/* 공통 */
		.container{
			width: 1190px; margin: 0 auto; padding: 0 30px; box-sizing: border-box;
		}
		.container-fluid{
			min-width: 1190px;
		}
		
		.contents-box{
			min-height: 2000px;  padding: 20px 30px;
		}
		.contents-box::after{
			clear: both; content: ''; display: block;
		}
		
		.contents-l-box2{
			height: 700px; 
		}
		
		.contents-l-box2 .group-news{
			border: 1px solid #dae1e6; 
			height: 260px; box-sizing: border-box; position: relative;
			overflow: hidden;
		}
		.contents-l-box2 .group-news .rows{
			display: flex;
		}
		.contents-l-box2 .group-news .rows .thumb-box{
			height: 65px; width: 100%; position: relative; border: 1px solid red; margin-left: 10px; margin-bottom: 10px;
		}
		.contents-l-box2 .group-news .rows .thumb-box .thumb{
			padding: 23px 0 22px; display: block; text-align: center;
		}
		.contents-l-box2 .group-news .rows .thumb-box .popup-wrap{
			position: absolute; left: 0; right: 0; top: 0; bottom: 0;
			background-color: #f7f9fa; font-size: 0;
			padding: 19px 0 18px; text-align: center;
			display: none;
		}
		.contents-l-box2 .group-news .rows .thumb-box:hover .popup-wrap{
			display: block;
		}
		.contents-l-box2 .group-news .rows .thumb-box .popup-wrap .btn-popup{
			display:inline-block ; padding: 7px 8px 5px; background: #fff;
			border: 1px solid #dae1e6; 
			font-size: 12px; line-height: 16px; color: #505050;
		}
		.contents-l-box2 .group-news .rows .thumb-box .popup-wrap .btn-popup:last-child{
			margin-left: -1px;
		}
			
  	</style>
  
</head>
	<body>
		
		<div id="demo" class="carousel slide" data-ride="carousel">
		
			  <!-- Indicators -->
			  <ul class="carousel-indicators">
			    <li data-target="#demo" data-slide-to="0" class="active"></li>
			    <li data-target="#demo" data-slide-to="1"></li>
			    <li data-target="#demo" data-slide-to="2"></li>
			  </ul>
				  
			  <!-- The slideshow -->
			  <div class="carousel-inner">
			    <div class="carousel-item active">
			      <img src="<%=request.getContextPath()%>/img/Lami/1st Bday/1622528603295.jpg" alt="angel" width="500" height="300">
			    </div>
			    <div class="carousel-item">
			      <img src="<%=request.getContextPath()%>/img/Lami/Daycare/2021.10/img_20211001165658066.jpg" alt="Pint with Daddy" width="500" height="300">
			    </div>
			    <div class="carousel-item">
			      <img src="<%=request.getContextPath()%>/img/Lami/Daycare/2021.5/img_20210503135006882.jpg" alt="resemblences" width="500" height="300">
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
		
		
		<div class="contents-box ">
			<div class="contents-l-box2">
				<div class="group-news">
					<div class="line to-right1"></div>
					<div class="line to-right2"></div>
					<div class="line to-right3"></div>
					<div class="line to-bottom1"></div>
					<div class="line to-bottom2"></div>
					<div class="line to-bottom3"></div>
					<div class="line to-bottom4"></div>
					<div class="line to-bottom5"></div>
				</div>
				<div class="rows">
					<div class="thumb-box">
						<a href="#" class="thumb">
							<img height="50" width="50" src="<%=request.getContextPath()%>/img//Lami/Lami with Daddy/home-part1/1597316726671.jpg" alt="Lami with Daddy">
						</a>
						<div class="popup-wrap">
							<a href="#" class="btn-popup">앨범보기</a>
						</div>
					</div>
					<div class="thumb-box">
						<a href="#" class="thumb">
							<img height="50" width="50" src="<%=request.getContextPath()%>/img//Lami/Lami with Daddy/home-part1/1597316726671.jpg" alt="Lami with Daddy">
						</a>
						<div class="popup-wrap">
							<a href="#" class="btn-popup">앨범보기</a>
						</div>
					</div>
					<div class="thumb-box">
						<a href="#" class="thumb">
							<img height="50" width="50" src="<%=request.getContextPath()%>/img//Lami/Lami with Daddy/home-part1/1597316726671.jpg" alt="Lami with Daddy">
						</a>
						<div class="popup-wrap">
							<a href="#" class="btn-popup">앨범보기</a>
						</div>
					</div>
					<div class="thumb-box">
						<a href="#" class="thumb">
							<img height="50" width="50" src="<%=request.getContextPath()%>/img//Lami/Lami with Daddy/home-part1/1597316726671.jpg" alt="Lami with Daddy">
						</a>
						<div class="popup-wrap">
							<a href="#" class="btn-popup">앨범보기</a>
						</div>
					</div>
					<div class="thumb-box">
						<a href="#" class="thumb">
							<img height="50" width="50" src="<%=request.getContextPath()%>/img//Lami/Lami with Daddy/home-part1/1597316726671.jpg" alt="Lami with Daddy">
						</a>
						<div class="popup-wrap">
							<a href="#" class="btn-popup">앨범보기</a>
						</div>
					</div>		
				</div>
						<div class="rows">
					<div class="thumb-box">
						<a href="#" class="thumb">
							<img height="50" width="50" src="<%=request.getContextPath()%>/img//Lami/Lami with Daddy/home-part1/1597316726671.jpg" alt="Lami with Daddy">
						</a>
						<div class="popup-wrap">
							<a href="#" class="btn-popup">앨범보기</a>
						</div>
					</div>
					<div class="thumb-box">
						<a href="#" class="thumb">
							<img height="50" width="50" src="<%=request.getContextPath()%>/img//Lami/Lami with Daddy/home-part1/1597316726671.jpg" alt="Lami with Daddy">
						</a>
						<div class="popup-wrap">
							<a href="#" class="btn-popup">앨범보기</a>
						</div>
					</div>
					<div class="thumb-box">
						<a href="#" class="thumb">
							<img height="50" width="50" src="<%=request.getContextPath()%>/img//Lami/Lami with Daddy/home-part1/1597316726671.jpg" alt="Lami with Daddy">
						</a>
						<div class="popup-wrap">
							<a href="#" class="btn-popup">앨범보기</a>
						</div>
					</div>
					<div class="thumb-box">
						<a href="#" class="thumb">
							<img height="50" width="50" src="<%=request.getContextPath()%>/img//Lami/Lami with Daddy/home-part1/1597316726671.jpg" alt="Lami with Daddy">
						</a>
						<div class="popup-wrap">
							<a href="#" class="btn-popup">앨범보기</a>
						</div>
					</div>
					<div class="thumb-box">
						<a href="#" class="thumb">
							<img height="50" width="50" src="<%=request.getContextPath()%>/img//Lami/Lami with Daddy/home-part1/1597316726671.jpg" alt="Lami with Daddy">
						</a>
						<div class="popup-wrap">
							<a href="#" class="btn-popup">앨범보기</a>
						</div>
					</div>		
				</div>
						<div class="rows">
					<div class="thumb-box">
						<a href="#" class="thumb">
							<img height="50" width="50" src="<%=request.getContextPath()%>/img//Lami/Lami with Daddy/home-part1/1597316726671.jpg" alt="Lami with Daddy">
						</a>
						<div class="popup-wrap">
							<a href="#" class="btn-popup">앨범보기</a>
						</div>
					</div>
					<div class="thumb-box">
						<a href="#" class="thumb">
							<img height="50" width="50" src="<%=request.getContextPath()%>/img//Lami/Lami with Daddy/home-part1/1597316726671.jpg" alt="Lami with Daddy">
						</a>
						<div class="popup-wrap">
							<a href="#" class="btn-popup">앨범보기</a>
						</div>
					</div>
					<div class="thumb-box">
						<a href="#" class="thumb">
							<img height="50" width="50" src="<%=request.getContextPath()%>/img//Lami/Lami with Daddy/home-part1/1597316726671.jpg" alt="Lami with Daddy">
						</a>
						<div class="popup-wrap">
							<a href="#" class="btn-popup">앨범보기</a>
						</div>
					</div>
					<div class="thumb-box">
						<a href="#" class="thumb">
							<img height="50" width="50" src="<%=request.getContextPath()%>/img//Lami/Lami with Daddy/home-part1/1597316726671.jpg" alt="Lami with Daddy">
						</a>
						<div class="popup-wrap">
							<a href="#" class="btn-popup">앨범보기</a>
						</div>
					</div>
					<div class="thumb-box">
						<a href="#" class="thumb">
							<img height="50" width="50" src="<%=request.getContextPath()%>/img//Lami/Lami with Daddy/home-part1/1597316726671.jpg" alt="Lami with Daddy">
						</a>
						<div class="popup-wrap">
							<a href="#" class="btn-popup">앨범보기</a>
						</div>
					</div>		
				</div>
						<div class="rows">
					<div class="thumb-box">
						<a href="#" class="thumb">
							<img height="50" width="50" src="<%=request.getContextPath()%>/img//Lami/Lami with Daddy/home-part1/1597316726671.jpg" alt="Lami with Daddy">
						</a>
						<div class="popup-wrap">
							<a href="#" class="btn-popup">앨범보기</a>
						</div>
					</div>
					<div class="thumb-box">
						<a href="#" class="thumb">
							<img height="50" width="50" src="<%=request.getContextPath()%>/img//Lami/Lami with Daddy/home-part1/1597316726671.jpg" alt="Lami with Daddy">
						</a>
						<div class="popup-wrap">
							<a href="#" class="btn-popup">앨범보기</a>
						</div>
					</div>
					<div class="thumb-box">
						<a href="#" class="thumb">
							<img height="50" width="50" src="<%=request.getContextPath()%>/img//Lami/Lami with Daddy/home-part1/1597316726671.jpg" alt="Lami with Daddy">
						</a>
						<div class="popup-wrap">
							<a href="#" class="btn-popup">앨범보기</a>
						</div>
					</div>
					<div class="thumb-box">
						<a href="#" class="thumb">
							<img height="50" width="50" src="<%=request.getContextPath()%>/img//Lami/Lami with Daddy/home-part1/1597316726671.jpg" alt="Lami with Daddy">
						</a>
						<div class="popup-wrap">
							<a href="#" class="btn-popup">앨범보기</a>
						</div>
					</div>
					<div class="thumb-box">
						<a href="#" class="thumb">
							<img height="50" width="50" src="<%=request.getContextPath()%>/img//Lami/Lami with Daddy/home-part1/1597316726671.jpg" alt="Lami with Daddy">
						</a>
						<div class="popup-wrap">
							<a href="#" class="btn-popup">앨범보기</a>
						</div>
					</div>		
				</div>
			</div>
		</div>
	</body>
</html>
