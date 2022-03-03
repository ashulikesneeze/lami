<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>로그인</title>
</head>
<body>
	<div class="body">
		<div class="container">
			<h1 class="text-center">login</h1>
			<form action="<%=request.getContextPath()%>/login" method="post">
				<div class="form-group">
				  <input type="text" class="form-control" name="me_id">
				</div>
				<div class="form-group">
				  <input type="password" class="form-control" name="me_pw">
				</div>
				<button class="btn btn-outline-success col-12">login</button>
				<div class="form-check">
				  <label class="form-check-label">
				    <input type="checkbox" class="form-check-input" value="true" name="me_auto_login">auto_login
				  </label>
				</div>
			</form>
		<a href="<%=request.getContextPath() %>/member/find">find ID/PW</a>
		</div>
	</div>
</body>
</html>