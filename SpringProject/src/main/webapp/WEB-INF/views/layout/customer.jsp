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
	
	
	<tiles:insertAttribute name="content"></tiles:insertAttribute>
	

	<!-- footer -->
	<tiles:insertAttribute name="footer"></tiles:insertAttribute>



	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>
	
	<!-- footer -->
  <tiles:insertAttribute name="asset_javascript"></tiles:insertAttribute>


</body>
</html>