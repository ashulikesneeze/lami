<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
<title>QnA modify 게시글 수정</title>
</head>
<body>
	<form class="body container" action="<%=request.getContextPath()%>/board/modify" method="post" enctype="multipart/form-data">
		<h1>QnA modification 게시글 수정</h1>
		<div class="form-group">
		  <input type="text" class="form-control" name="qa_title" value="${board.qa_title}">
		</div>
		<div class="form-group">
		  <textarea class="form-control" name="qa_contents"rows="10">${board.qa_contents}</textarea>
		</div>
		<input type="hidden" name="qa_id" value="${board.qa_id}">
		<div class="form-group attachment">
			<c:forEach items="${fileList}" var="file">
				<div class="form-control">
					<input type="hidden" name="fileNums" value="${file.fi_id}">
					<span>${file.fi_ori_name}</span>
					<a class="btn-close" href="#">X</a>
				</div>
			</c:forEach>
			<c:forEach begin="1" end="${3-fileList.size() }">
				<input type="file" class="form-control" name="files2">
			</c:forEach>
		</div>
		<button class="btn btn-outline-success col-12">register 등록</button>
	</form>
	<script>
		$(function(){
			$('.attachment .btn-close').click(function(e){
				e.preventDefault();
				$(this).parent().remove();
				var str = '<input type="file" class="form-control" name="files2">';
				$('.attachment').append(str);
			});
		});
	</script>
	<script>
      $('[name=qa_contents]').summernote({
        placeholder: 'do you want some amendment? 수정해 주세요^^',
        tabsize: 2,
        height: 100
      });
    </script>
</body>
</html>