<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>${blogInfo.blogTitle} - 新成视野</title>
<meta name="description" content="Your description">
<meta name="keywords" content="Your,Keywords">
<meta name="author" content="ResponsiveWebInc">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<jsp:include page="../base.jsp" />

<style type="text/css">
	.blog-post img {
		max-width: 100%;
		height: auto !important;
	}
</style>

</head>

<body>
	<div class="wrapper">
		<jsp:include page="../top.jsp" />
		<div class="main-content">
			<div class="container">
				<div class="ya2dan-container">
					<div class="row">
        				<div class="col-sm-9 blog-main">
							<div class="blog-post">
			            		<h3>${blogInfo.blogTitle}</h3>
			            		
			            		<div class="share-info">
				          			<div class="pull-left">
				            			<i class="fa fa-bookmark"></i> ${blogInfo.blogTypeName} &nbsp;&nbsp;&nbsp;&nbsp;
										<i class="fa fa-calendar"></i> ${blogInfo.updateTime} &nbsp;&nbsp;&nbsp;&nbsp;
				          			</div>
				          			<div class="pull-right">
				          			
				          			</div>
				          		</div>
			            		
								<blockquote>
					            	<strong>导读：</strong>${blogInfo.subContent}
					            </blockquote>
			            		<p>${blogInfo.blogContent}</p>
			            		
			            		<p>&nbsp;</p>
						        <div class="jshare-info">
						        	<div class="pull-right">
					          			<jsp:include page="../share_bar.jsp" />
				          			</div>
				          		</div>
			          		</div>
			          		
			          		<!-- 
							<div class="next-prev-info">
								<span class="label label-danger">上一篇：</span> <a href="">狙击Google Glass？三星九月份将推基于Tizen系统的Gear Glass</a><br>
								<span class="label label-danger">下一篇：</span> <a href="">最新消息：iPhone 6将采用更大、更清晰的1704x960分辨率屏幕</a>
							</div>
			          		 -->
	        			</div>
						<div class="col-sm-3">
							<div class="blog-right">
								<jsp:include page="../right.jsp" />
							</div>
	      				</div>
					</div>
				</div>
			</div>
		</div>
		
		<jsp:include page="../footer.jsp" />
		<jsp:include page="../_js.jsp" />
	</div>
</body>
</html>
