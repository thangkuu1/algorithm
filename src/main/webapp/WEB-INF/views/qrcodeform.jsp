
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>Created By</title>
	<script src="/Utility_LVB/webjars/jquery/2.1.4/jquery.min.js"></script>
    <link href="/Utility_LVB/webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/Utility_LVB/webjars/bootstrap/3.3.6/css/bootstrap.min.css">
     <link rel="stylesheet" href="/Utility_LVB/resources/css/form.css">
</head>
<body>
	<%@include file = "header.jsp" %>	
	<div class="container-fluid main-container">
	  	<%@include file = "tab.jsp" %>
	 	<div class="col-md-10 content">
			<div class="panel panel-default">
				<div class="panel-heading">
					Chuyển dữ liệu DB
				</div>
				<div class="panel-body">
					<form action="/Utility_LVB/qr-code" method="post">
						<div class="form-group">
						  <label >Nhập Ma QR</label>
						  <input type="text" name="value_text" class="form-control" placeholder="Nhập ký tự dang abc,xyz">
						  <button type="submit" style="float: right; margin-top:10px" class="btn btn-primary">Genarate</button>
						</div>
					</form>
					
				</div>
			</div>
		</div>
	  	
	  	
  	</div>
</body>
<script src="/Utility_LVB/resources/js/form.js"></script>
</html>