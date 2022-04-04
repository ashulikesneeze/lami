<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html>
<head>
</head>
<body>

	<form method="post" action="<%=request.getContextPath()%>/admin/image" enctype="multipart/form-data">
		<c:if test="${product.pro_id != null }">
			<input type="hidden" name="pro_id" value="${product.pro_id }">
		</c:if>
		<div class="form-group">
		  <label>앨범이름</label>
		  <input type="text" class="form-control" name="pro_name">
		</div>
		<div class="form-group">
		  <label>카테고리</label>
		  <select type="text" class="form-control" name="pro_cat_id">
			  <c:forEach var="category" items="${categories}">
			  	<option value="${category.cat_id}">${category.cat_name}</option>
			  </c:forEach>
		  </select>	
		</div>
		<div class="form-group">
		  <label>내용</label>
		  <textarea class="form-control" rows="10" name="pro_details"></textarea>
		</div>
		<div class="form-group">
		  <label>첨부파일</label>
		  <input type="file" class="form-control" name="files2" accept="video/*, image/*" multiple>
		  <input type="file" class="form-control" name="files2">
		</div>
		<button class="btn btn-outline-success col-12">등록</button>
	</form>
</body>
</html>