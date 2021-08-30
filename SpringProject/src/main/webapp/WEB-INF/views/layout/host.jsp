<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<tiles:insertAttribute name="asset_css"></tiles:insertAttribute>
<title>Insert title here</title>
</head>
<body>

	<!-- header -->
	<tiles:insertAttribute name="header"></tiles:insertAttribute>
	

	<!-- footer -->
	<tiles:insertAttribute name="footer"></tiles:insertAttribute>



	
	
	<!-- footer -->
  <tiles:insertAttribute name="asset_javascript"></tiles:insertAttribute>


</body>
</html>