<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>关于网站 - 新成视野</title>
<meta name="description" content="Your description">
<meta name="keywords" content="Your,Keywords">
<meta name="author" content="ResponsiveWebInc">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<jsp:include page="base.jsp" />

</head>

<body>
	<div class="wrapper">
		<jsp:include page="top.jsp" />
		<div class="main-content">
			<div class="container">
				<div class="ya2dan-container">
					<div class="row">
        				<div class="col-sm-9 blog-main">
							<div class="blog-post">
			            		<div class="badger-left badger-notice" data-badger="关于网站">
       			 				</div>
			            		<p>&nbsp;</p>
       			 				<h5 style="line-height: 25px;">
     			 					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     			 					此处为 <span class="label label-danger">新成视野（WUXINCHENG.COM.CN）</span> 留言处，
     			 					自从网站运营到现在得道了广大网友的支持，网站在很多的地方需要有改进，若有什么意见欢迎留言！
       			 				</h5>
       			 				<p>&nbsp;</p>
			          		</div>
	        			</div>
						<div class="col-sm-3">
							<div class="blog-right">
								<jsp:include page="right_single.jsp" />
							</div>
	      				</div>
					</div>
				</div>
			</div>
		</div>
		
		<jsp:include page="footer.jsp" />
		<jsp:include page="js_simple.jsp" />
	</div>
</body>
</html>
