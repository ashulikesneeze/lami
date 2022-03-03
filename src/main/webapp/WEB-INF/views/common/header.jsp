<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	.menu-box{
		min-width: 1200px;
	}
	.menu{
		width: 1200px; height: 60px; margin: 0 auto;
	}
	.btn-category{
		width: 224px; height: 60px; box-sizing: border-box;
		background: #10af29; border: none; font-size: 20px;
		float:left;
	}
	.menu-link, .menu-link:hover{
		height:60px; float:left; color:#10af29; font-size: 20px; 
		line-height: 60px; padding : 0 10px;
	}
	.category-box{
		background: #fff; width: 1200px; margin: 0 auto; position: relative;
		display: none;
	}
	.main-category{
		width: 224px; padding: 0; margin: 0;
	}
	.main-category>.list-item >a,
	.middle-category>.list-item>a,
	.small-category>.list-item>a,
	.small2-category>.list-item>a,
	.small3-category>.list-item>a{
		color: #fff;height: 44px; line-height: 42px; 
		box-sizing: border-box; background-color: #0abb26;
		display: block; text-decoration: none;
		border-bottom: 1px solid #fff;
		padding : 0 20px;
	}
	.main-category>.list-item.active >a,
	.middle-category>.list-item.active >a,
	.small-category>.list-item.active >a,
	.small2-category>.list-item.active >a,
	.small3-category>.list-item.active >a{
		background-color: #fff; color : #0abb26;
	}
	.middle-category, .main-category, .small-category,.small2-category,.small3-category{
		list-style: none; padding:0; margin:0;
	}
	.middle-category, .small-category, .small2-category, .small3-category{
		float: left; margin-left: 1px;
	}
	
	.sub-category-box{
		width: 976px; left: 224px; top: 0; position: absolute;
	}
	/* 햄버거 메뉴 */
	.burger-icon {
		cursor: pointer;
		display: inline-block;
		z-index: 2;
		padding: 8px 0;
		top: 4px;
		right: 4px;
		user-select: none;
		width: auto;
		margin: 0;
	}

	.burger-icon .burger-sticks {
		background: #333;
		display: inline-block;
		height: 3px;
		position: relative;
		transition: background .2s ease-out;
		width: 24px; top: -5px; margin-right: 10px;
	}

	.burger-icon .burger-sticks:before,
	.burger-icon .burger-sticks:after {
		background: #333;
		content: '';
		display: block;
		height: 100%;
		position: absolute;
		transition: all .2s ease-out;
		width: 100%;
	}

	.burger-icon .burger-sticks:before {
		top: 8px;
	}

	.burger-icon .burger-sticks:after {
		top: -8px;
	}

	.burger-check {
		display: none;
	}

	.burger-check:checked~.menu {
		max-width: 200px;
	}

	.burger-check:checked~.burger-icon .burger-sticks {
		background: transparent;
	}

	.burger-check:checked~.burger-icon .burger-sticks:before {
		transform: rotate(-45deg);
	}

	.burger-check:checked~.burger-icon .burger-sticks:after {
		transform: rotate(45deg);
	}

	.burger-check:checked~.burger-icon:not(.steps) .burger-sticks:before,
	.burger-check:checked~.burger-icon:not(.steps) .burger-sticks:after {
		top: 0;
	}
</style>
</head>
<body>
<div class="menu-box">
	<div class="menu">
		<button class="btn-category"><input class="burger-check" type="checkbox" id="burger-check" /><label class="burger-icon" for="burger-check"><span class="burger-sticks"></span>전체 카테고리</label></button>
		<c:if test="${user == null }">
			<a class="menu-link" href="<%=request.getContextPath()%>/login">로그인(login)</a>
			<a class="menu-link" href="<%=request.getContextPath()%>/signup">회원가입(signup)</a>
		</c:if>
		<c:if test="${user != null }">
			<a class="menu-link" href="<%=request.getContextPath()%>/logout">로그아웃(logout)</a>
			<a class="menu-link" href="<%=request.getContextPath()%>/mypage">마이페이지(mypage)</a>
		</c:if>
	</div>
</div>
<div class="category-box">
	<ul class="main-category">
		<li class="list-item">
			<a href="javascript:;"></a>
		</li>
	</ul>
	<div class="sub-category-box">
		<ul class="middle-category">
		</ul>
		<ul class="small-category">
		</ul>
		<ul class="small2-category">
		</ul>
		<ul class="small3-category">
		</ul>
	</div>
</div>
<script>
let mainHeight;
$(function(){
	
	//햄버거
	$('.burger-check').change(function(){
		$('.category-box').slideToggle(100);
		maiHeight = $('.main-category').css('height');
		$('.sub-catogory-box').css('height', maiHeight);
	});
	
	
	setMainCategory();	
	
	$(document).on('click','.main-category>.list-item',function(){
		var ma_cat_id = $(this).data('target');
		$(this).addClass('active').siblings().removeClass('active');
		setMiddleCategory(ma_cat_id);
	});
	$(document).on('click','.middle-category>.list-item',function(){
		var mid_cat_id = $(this).data('target');
		$(this).addClass('active').siblings().removeClass('active');
		setSmallCategory(mid_cat_id);
	});
	$(document).on('click','.small-category>.list-item',function(){
		var sm_cat_id = $(this).data('target');
		$(this).addClass('active').siblings().removeClass('active');
		setSmall2Category(sm_cat_id);
	});
	$(document).on('click','.small2-category>.list-item',function(){
		var sm2_cat_id = $(this).data('target');
		$(this).addClass('active').siblings().removeClass('active');
		setSmall3Category(sm2_cat_id);
	});
	
	
});





function setMainCategory(){
	var str = '';
	$.ajax({
		async:false,
		type:'get',
		url: '<%=request.getContextPath()%>/maincategory',
		dataType:"json",
		success : function(res){
			
			var list = res.list; 
			for(main of list){
				str += '<li class="list-item" data-target="'+main.ma_cat_id+'"><a href="javascript:;">'+main.ma_cat_name+'</a></li>'
			}
			$(' .main-category').html(str); 
		}
	});
}
function setMiddleCategory(ma_cat_id) {
	var str = '';
	//대분류에서 대분류라는 항목이 선택된 경우 
	if(ma_cat_id <= 0) {
		$('.middle-category').html(str);
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
					if(middle.mid_count != 0)
						str += '<li class="list-item" data-target="'+middle.mid_cat_id+'"><a href="javascript:;">'+middle.mid_cat_name+'('+middle.mid_count+')</a></li>';
					else
						str += '<li class="list-item" data-target="'+middle.mid_cat_id+'"><a href="<%=request.getContextPath()%>?mid_cat_id='+middle.mid_cat_id+'">'+middle.mid_cat_name+'</a></li>';
				}
			}
			$(' .middle-category').html(str);
			$(' .small-category').html(''); 
			$(' .small2-category').html(''); 
			$(' .small3-category').html(''); 
		}
	});
}
function setSmallCategory(mid_cat_id) {
	var str = '';
	if(mid_cat_id <= 0) {
		$(' .small-category').html(str);
		return; 
	}
	$.ajax({
		async:false,
		type:'get',
		url: '<%=request.getContextPath()%>/smallcategory?sm_mid_cat_id='+mid_cat_id,
		dataType:"json",
		success : function(res){
			
			var list = res.list; 
			if(list.length != 0){
				for(small of list){
					if(small.sm_count != 0)
						str += '<li class="list-item" data-target="'+small.sm_cat_id+'"><a href="javascript:;">'+small.sm_cat_name+'('+small.sm_count+')</a></li>';
					else
						str += '<li class="list-item" data-target="'+small.sm_cat_id+'"><a href="<%=request.getContextPath()%>?sm_cat_id='+small.sm_cat_id+'">'+small.sm_cat_name+'</a></li>';
				}
			}
			$(' .small-category').html(str); 
			$(' .small2-category').html(''); 
			$(' .small3-category').html(''); 
		}
	});
}
function setSmall2Category(sm_cat_id) {
	var str = '';
	if(sm_cat_id <= 0) {
		$(' .small2-category').html(str);
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

			for(small2 of list){
				if(small2.sm2_count != 0)
					str += '<li class="list-item" data-target="'+small2.sm2_cat_id+'"><a href="javascript:;">'+small2.sm2_cat_name+'('+small2.sm2_count+')</a></li>';
				else
					str += '<li class="list-item" data-target="'+small2.sm2_cat_id+'"><a href="<%=request.getContextPath()%>?sm2_cat_id='+small2.sm2_cat_id+'">'+small2.sm2_cat_name+'</a></li>';
			}
			$(' .small2-category').html(str); 
			$(' .small3-category').html(''); 
		}
	});
}
function setSmall3Category(sm2_cat_id) {
	var str = '';
	if(sm2_cat_id <= 0) {
		$(' .small3-category').html(str);
		return; 
	}
	console.log(sm2_cat_id)
	$.ajax({
		async:false,
		type:'get',
		url: '<%=request.getContextPath()%>/small3category?sm3_sm2_cat_id='+sm2_cat_id,
		dataType:"json",
		success : function(res){
			console.log(res);
			var list = res.list; 

			for(small3 of list){
				str += '<li class="list-item" data-target="'+small3.sm2_cat_id+'"><a href="<%=request.getContextPath()%>?sm3_cat_id='+small3.sm3_cat_id+'">'+small3.sm3_cat_name+'</a></li>';
			}
			$(' .small3-category').html(str); 
		}
	});
}
</script>
</body>
</html>