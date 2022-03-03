<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html>
<head>
	<title>Home</title>
	<link href="https://vjs.zencdn.net/7.17.0/video-js.css" rel="stylesheet" />
	<style>
	.small-category{
		display: none;
	}
	.small2-category{
		display: none;
	}
	</style>
</head>
<body>
<div class="body container">
	<select class="main-category">
		<option>대분류</option>
	</select>
	<select class="middle-category">
		<option>중분류</option>
	</select>
	<select class="small-category">
		<option>소분류</option>
	</select>	
	<select class="small2-category">
		<option>소소분류</option>
	</select>
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
setMainCategory();

$(' .main-category').change(function(){
	var ma_cat_id = $(this).val();
	setMiddleCategory(ma_cat_id);
});

$(' .middle-category').change(function(){
	var mid_cat_id = $(this).val();
	setSmallCategory(mid_cat_id);
});

$(' .small-category').change(function(){
	var sm_cat_id = $(this).val();
	setSmall2Category(sm_cat_id);
});

	function setMainCategory(){
		var str = '<option>대분류</option>';
		$.ajax({
			async:false,
			type:'get',
			url: '<%=request.getContextPath()%>/maincategory',
			dataType:"json",
			success : function(res){
				
				var list = res.list; 
				for(main of list){
				str += '<option value="'+main.ma_cat_id+'">'+main.ma_cat_name+'</option>';
				}
				$(' .main-category').html(str); 
			}
		});
	}
	function setMiddleCategory(ma_cat_id) {
		var str = '<option>중분류</option>';
		//대분류에서 대분류라는 항목이 선택된 경우 
		if(ma_cat_id <= 0) {
			$(' .middle-category').html(str);
			return; 
		}
		
		$.ajax({
			async:false,
			type:'get',
			url: '<%=request.getContextPath()%>/middlecategory?mid_ma_cat_id='+ma_cat_id,
			dataType:"json",
			success : function(res){
				
				var list = res.list;
				if(list != null){
					for(middle of list){
						str += '<option value="'+middle.mid_cat_id+'">'+middle.mid_cat_name+'</option>';
					}
				}
				$(' .middle-category').html(str); 
			}
		});
	}
	function setSmallCategory(mid_cat_id) {
		var str = '<option>소분류</option>';
		if(mid_cat_id <= 0) {
			$(' .small-category').html(str);
			$(' .small-category').hide();
			return; 
		}
		console.log(mid_cat_id)
		$.ajax({
			async:false,
			type:'get',
			url: '<%=request.getContextPath()%>/smallcategory?sm_mid_cat_id='+mid_cat_id,
			dataType:"json",
			success : function(res){
				
				var list = res.list; 
				if(list.length != 0){
					for(small of list){
						str += '<option value="'+small.sm_cat_id+'">'+small.sm_cat_name+'</option>';
					}
					$('.small-category').show();
				}else{
					$(' .small-category').hide();
				}
				$(' .small-category').html(str); 
			}
		});
	}
	function setSmall2Category(sm_cat_id) {
		var str = '<option>소소분류</option>';
		if(sm_cat_id <= 0) {
			$(' .small2-category').html(str);
			$(' .small2-category').hide();
			return; 
		}
		console.log(sm_cat_id)
		$.ajax({
			async:false,
			type:'get',
			url: '<%=request.getContextPath()%>/small2category?sm2_sm_cat_id='+sm_cat_id,
			dataType:"json",
			success : function(res){
				console.log(res);
				var list = res.list; 
				if(list.length != 0){
					for(small2 of list){
						str += '<option value="'+small2.sm2_cat_id+'">'+small2.sm2_cat_name+'</option>';
					}
					$('.small2-category').show();
				}else{
					$(' .small2-category').hide();
				}
				$(' .small2-category').html(str); 
			}
		});
	}

</script>
</body>
</html>
