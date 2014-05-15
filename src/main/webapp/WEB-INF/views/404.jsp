<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>新成博客 - 对不起，您访问的页面不存在</title>
<meta name="description" content="Your description">
<meta name="keywords" content="Your,Keywords">
<meta name="author" content="ResponsiveWebInc">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<jsp:include page="base.jsp" />
</head>

<body>
	<div class="wrapper">
		<jsp:include page="top.jsp" />
		
		<div class="container">
			<div class="ya2dan-top-container">
		        <div class="info-404">
		        	<p>
		        	啊噢，您访问的页面不存在耶，请检查访问的网址是否正确！
		        	</p>
		        	
		        	<p>
		        	Sorry, page is not fund exception!
		        	</p>
		        </div>
	        </div>
		</div>
		
		<jsp:include page="footer.jsp" />
	</div>
</body>
</html>
