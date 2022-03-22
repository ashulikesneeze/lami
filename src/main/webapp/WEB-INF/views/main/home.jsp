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
 		.album{
			width : 1200px; margin: 0 auto;
 		}
 		.rows{
 			display: flex;
 		}
 		.thumb-box{
 			width : 100%; padding : 10px; position: relative;
 		}
 		.thumb{
 			display: block; height: 100px; border : 1px solid red; 
 		}
 		.thumb > img {
 			width : 100%; height : 100%; object-fit: cover;
 		}
 		.thumb-box > .popup-wrap{
 			/* 앨범 보기를 키우고 싶으면 line-height를 높이면 됨*/
 			position: absolute; line-height: 20px; top: calc(50% - 10px);
 			text-align: center; background: white; left: 11px; right : 11px;
 		}
 		.btn-popup{
 			color : black; display: block;
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
		
		
		<div class="album">
			<div class="rows">
				<div class="thumb-box">
					<a href="#" class="thumb">
						<img src="<%=request.getContextPath()%>/img//Lami/Lami with Daddy/home-part1/1597316726671.jpg" alt="Lami with Daddy">
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
		<div class="prev-album">
		</div>
		<script type="text/javascript">
		
		</script>
	</body>
</html>
