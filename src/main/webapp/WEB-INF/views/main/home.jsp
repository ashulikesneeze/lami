<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html>
<head>
	<title>Home</title>
	<link href="https://vjs.zencdn.net/7.17.0/video-js.css" rel="stylesheet" />
</head>
<body>
<div class="body container">
</div>

	<div class="vjs-big-play-centered">
	<video
	    id="my-video"
	    class="video-js"
	    controls
	    preload="auto"
	    width="640"
	    height="264"
	    data-setup="{}"
	  >
	    <source src="/spring/resources/gizmo.mp4" type="video/mp4" />
	    <p class="vjs-no-js">
	      To view this video please enable JavaScript, and consider upgrading to a
	      web browser that
	      <a href="https://videojs.com/html5-video-support/" target="_blank">supports HTML5 video</a>
	    </p>
	  </video>
	</div>
	<script src="https://vjs.zencdn.net/7.17.0/video.min.js"></script>
	
<script>	


</script>
</body>
</html>
