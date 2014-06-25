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
				<div class="badger-left badger-notice" data-badger="新成提示">
					<div class="row">
						<div class="col-sm-2"></div>
        				<div class="col-sm-3" style="text-align: center;">
        					<p>&nbsp;</p><p>&nbsp;</p>
        					<img src="<%=request.getContextPath()%>/assets/img/sorry.png">
        				</div>
        				<div class="col-sm-7">
	        				<p>&nbsp;</p>
							<p>
				        	<h4>啊噢，很抱歉，您访问的页面不存在耶！</h4>
				        	<hr>
				        	<p>
				        	1、请检查您访问的网址是否正确；<br>
				        	2、您所查看的内容不存在或已删除。
				        	</p>
        				</div>
        			</div>
		        </div>
		        <hr>
		        <p>&nbsp;</p>
	        </div>
		</div>
		
		<jsp:include page="footer.jsp" />
		<jsp:include page="js_simple.jsp" />
	</div>
</body>
</html>
