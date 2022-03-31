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
 		
 		.thumb-box{
 			width : 25%; padding : 10px; position: relative; box-sizing: border-box; float: left;
 		}
 		.thumb{
 			display: block; height: 200px; border : 1px solid red; 
 		}
 		.thumb > img {
 			width : 100%; height : 100%; object-fit: cover;
 		}
 		.thumb-box:hover .popup-wrap{
 			display: block;
 		}
 		.thumb-box > .popup-wrap{
 			/* 앨범 보기를 키우고 싶으면 line-height를 높이면 됨*/
 			position: absolute; line-height: 20px; top: calc(50% - 10px); display: none; 
 			text-align: center; background: white; left: 11px; right : 11px; 
 		}
 		.btn-popup{
 			color : black; display: block;
 		}
 		.prev-album{
 			position: fixed; top: 0; bottom: 0; left: 0; right: 0;
 			background: rgba(0,0,0,0.3); z-index: 1000; 
 			padding: 50px 50px; display: none;
 		}
 		.prev-album-inner{
 			background: #eeeeee; height: 100%;
 		}
 		#demo, .carousel-inner{
 			height: 100%;
 		}
 		.carousel-item{
 			height: 100%; text-align: center; vertical-align: middle;
 		}
 		.carousel-item img{
 			width : 100%;  height: 100%; object-fit: cover; 
 		}
 		.prev-album .btn-close{
 			position: absolute; top : 55px; right : 55px; z-index: 3;
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
			      <img src="<%=request.getContextPath()%>/img/Lami/Daycare/2022.3/video_high_20220304162243397[Trim].mp4" alt="angel" width="500" height="300">
			    </div>
			    <div class="carousel-item">
			      <img src="<%=request.getContextPath()%>/img/Lami/play play play/20210902_193610.mp4" alt="Pint with Daddy" width="500" height="300">
			    </div>
			    <div class="carousel-item">
			      <img src="<%=request.getContextPath()%>/img/Lami/funny you/kakaotalk_1625397210834.mp4" alt="resemblences" width="500" height="300">
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
			<c:forEach items="${list }" var="pro"  varStatus="vs">
				<div class="thumb-box">
					<a href="#" class="thumb">
						<img src="<%=request.getContextPath()%>/img${pro.pro_main_img}" alt="Lami with Daddy">
					</a>
					<div class="popup-wrap">
						<a href="#" class="btn-popup" data-target="${vs.index }">앨범보기</a>
					</div>
				</div>
			</c:forEach>
		</div>
		
		<!-- ${list }  -->		
		<script type="text/javascript">
		
			var cat_Path = '<%=request.getContextPath()%>';
			//productService.setCategoryPath(categoryPath);
			$(function(){
				$(document).on('click', '.btn-album',function(){
					var pro_id = '${product.pro_id}';
					var main_image = {
						pro_cat_id : pro_cat_id,
						pro_name : pro_name,
						pro_details : pro_details,
						pro_main_img : pro_main_img
					};
					var albumUrl = '/album?pro_id=' + pro_id
					//productService.select(albumUrl, albumSuccess);
				});
		
		
				$('.btn-popup').click(function(){
					var index = $(this).data('target');
					$('.carousel-indicators li').eq(index).click();
					$('.prev-album').show();
					
				});
				$('.prev-album .btn-close').click(function(){
					$('.prev-album').hide();
				});
			});

		</script>
	</body>
</html>
