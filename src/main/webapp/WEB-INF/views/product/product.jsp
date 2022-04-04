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
 	<script src="<%=request.getContextPath() %>/resources/js/product.js"></script>
 	<style>
 		.album{
			width : 1200px; margin: 0 auto;
 		}
 		
 		.thumb-box{
 			width : 25%; padding : 10px; position: relative; box-sizing: border-box; float: left;
 		}
 		.thumb{
 			display: block; height: 200px; border : 1px solid navy; 
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
 		#demo, .carousel-inner{
 			height: 100%;
 		}
 		.carousel-item{
 			height: 100%; text-align: center; vertical-align: middle;
 		}
 		.carousel-item img{
 			width : 100%;  height: 100%; object-fit: cover; 
 		}
 		
 	</style>
</head>
	<body>
		<div class="form-group">
		  <label>Categories</label>
		  <input type="text" class="form-control" value="${category.cat_path}" readonly>
		</div>
		<div class="form-group">
		  <label>Album Name</label>
		  <input type="text" class="form-control" value="${product.pro_name}" readonly>
		</div>
		<div class="form-group">
		  <label>Details</label>
		  <input type="text" class="form-control" style="height: auto; min-height: 100px"
		  value="${product.pro_details}" readonly>
		</div>
	
		<div class="album">
			<c:forEach items="${list }" var="image">
			  <div class="thumb-box">
			  	<a href="#" class="thumb">
			  	<c:if test="${image.img_type==0 }">
			    	<img src="<%=request.getContextPath()%>/img${image.img_name2}" alt="Snow" style="width:100%">
			    </c:if>
			    <c:if test="${image.img_type==1 }">
			    	<video width="100%" height="100%" controls>
  						<source src="<%=request.getContextPath()%>/img${image.img_name2}" type="video/mp4">
					</video>
			    </c:if>
			  	</a>
			  </div>
		  	</c:forEach>
			<div class="popup-wrap">
				<a href="#" class="btn-popup" data-target="${vs.index }">앨범보기</a>
			</div>
		</div>
		
		<div id="demo" class="carousel slide carousel-fade" data-ride="carousel">
			
			  <!-- Indicators -->
			  <ul class="carousel-indicators">
			    <li data-target="#demo" data-slide-to="0" class="active"></li>
			  </ul>

			  <div class="carousel-inner">
			    <div class="carousel-item active">
				    <c:if test="${image.img_type==0 }">
				    	<img src="<%=request.getContextPath()%>/img${image.img_name2}" alt="Snow" width="500" height="300">
				    </c:if>
				    <c:if test="${image.img_type==1 }">
				    	<video width="100%" height="100%" controls>
	  						<source src="<%=request.getContextPath()%>/img${image.img_name2}" type="video/mp4">
						</video>
				    </c:if>
			    </div>
			  </div>
		  </div>
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
					$('.carousel-indicators li').show();
				});
			});

		</script>	
	</body>
</html>
