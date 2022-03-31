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
 			display: block; height: 200px; border : 1px solid navy; 
 		}
 		.thumb > img {
 			width : 100%; height : 100%; object-fit: cover;
 		}
 		
 	</style>
</head>
	<body>
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
		</div>
		<!-- ${list }  -->		
	</body>
</html>
