<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
</head>
<body>
	<h1>${board.typeTitle}</h1>
	<form method="post" action="<%=request.getContextPath()%>/board/register" enctype="multipart/form-data">
		<input type="hidden" name="qa_type" value="${board.qa_type }">
		<c:if test="${board.qa_ori_id != null }">
			<input type="hidden" name="qa_ori_id" value="${board.qa_ori_id}">
		</c:if>
		<div class="form-group">
		  <label>Title</label>
		  <input type="text" class="form-control" name="qa_title">
		</div>
		<div class="form-group">
		  <label>Contents</label>
		  <textarea class="form-control" rows="10" name="qa_contents"></textarea>
		</div>
		<div class="form-group">
		  <label>attachment files</label>
		  <input type="file" class="form-control" name="files2">
		  <input type="file" class="form-control" name="files2">
		  <input type="file" class="form-control" name="files2">
		</div>
		<button class="btn btn-outline-success col-12">register 등록</button>
	</form>
	<script>
	  $('[name=qa_contents]').summernote({
	    placeholder: 'what is in your mind? 어떻게 도와드릴까요?',
	    tabsize: 2,
	    height: 100
	 	 });
	</script>
</body>
</html>