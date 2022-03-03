<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<!-- ${list} -->
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<h1>${pm.criteria.typeTitle}</h1>

	<form class="input-group mb-3" action="<%=request.getContextPath()%>/board/list">
	  <input type="text" class="form-control" placeholder="검색어를 입력하세요.insert a search word." name="search" value="${pm.criteria.search}">
	  <div class="input-group-append">
	    <button class="btn btn-success" type="submit">Go</button>
	  </div>
	</form>
	
	<table class="table table-hover table-success">
	    <thead class="thead-dark">
	      <tr>
	      	<th>Type</th>
	        <th>No.</th>
	        <th>Title</th>
	        <th>Author</th>
	        <th>Date</th>
	      </tr>
	    </thead>
   	<tbody>
    	<c:forEach var="board" items="${list}">
	      <tr>
    	    <td>${board.qa_type}</td>
	        <td>${board.qa_id}</td>
	        <c:if test="${board.qa_id == board.qa_ori_id }">
	        	<td><a href="<%=request.getContextPath()%>/board/detail?qa_id=${board.qa_id}">${board.qa_title}</a></td>
	        </c:if>
	        <c:if test="${board.qa_id != board.qa_ori_id }">
	        	<td><a href="<%=request.getContextPath()%>/board/detail?qa_id=${board.qa_id}">└reply:${board.qa_title}</a></td>
	        </c:if>
	        <td>${board.qa_me_id}</td>
	        <td>${board.qa_created_date_str}</td>
	      </tr>
      </c:forEach>
    </tbody>
  </table>
	  <c:if test="${pm.criteria.page == i}">active</c:if>
		  <ul class="pagination justify-content-center">
		    <li class="page-item <c:if test="${!pm.prev}">disabled</c:if>">
		    	<a class="page-link" href="<%=request.getContextPath()%>/board/list?page=${pm.startPage-1}&search=${pm.criteria.search}">prev</a>
		   	</li>
	   	<c:forEach begin="${pm.startPage}" end="${pm.endPage}" var="i">
		    <li class="page-item <c:if test="${pm.criteria.page == i}">active</c:if>">
		    	<a class="page-link" href="<%=request.getContextPath()%>/board/list?page=${i}&search=${pm.criteria.search}">${i}</a>
		   	</li>
	   	</c:forEach>
		    <li class="page-item <c:if test="${!pm.next}">disabled</c:if>">
		    	<a class="page-link" href="<%=request.getContextPath()%>/board/list?page=${pm.endPage+1}&search=${pm.criteria.search}">next</a>
		   	</li>
	 	 </ul>
	  <c:if test="${pm.criteria.type != 'notice' || (user.me_authority == 'admin' || user.me_authority == 'super') }">
		  <a href="<%=request.getContextPath()%>/board/register?qa_type=${pm.criteria.type}">
	  <button class="btn btn-outline-success">register 등록</button>
	   	</a>
 	</c:if>
</body>
</html>
