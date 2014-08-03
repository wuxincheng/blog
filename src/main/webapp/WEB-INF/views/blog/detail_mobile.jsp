<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>${blogInfo.blogTitle} - 新成视野 - 移动版</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href="<%=request.getContextPath()%>/assets/img/favicon.ico" type="image/x-icon" rel="icon"/>
<link href="<%=request.getContextPath()%>/assets/img/favicon.ico" type="image/x-icon" rel="shortcut icon"/>
<link href="<%=request.getContextPath()%>/assets/css/style_mobile.css" rel="stylesheet">

<style type="text/css">
	.blog-post-main img {
		max-width: 100%;
		height: auto !important;
	}
</style>

</head>

<body>
	<div class="container">
		<div class="ya2dan-container">
			<div class="blog-post-main">
				<h2>${blogInfo.blogTitle}</h2>
          		<hr>
           		<div class="share-info">
					${blogInfo.updateTime} &nbsp; | &nbsp;
					阅读(<fmt:formatNumber value="${blogInfo.readCount}" pattern="###,###,###,##0" />) &nbsp;| &nbsp;
					${blogInfo.blogTypeName}
          		</div>
				<blockquote>
	            	<strong>导读：</strong>${blogInfo.subContent}
	            </blockquote>
	            
           		<p>${blogInfo.blogContent}</p>
			</div>
        </div>
	</div>
	
	<div class="container">
		<div class="wxc-alert-container">
			<div class="wxc-alert-info">
				<strong>阅读提示：</strong>
				亲爱的网友您好哇！您正在阅读《新成视野》移动版，
				<a href="<%=request.getContextPath()%>/blog/detail?blogId=${blogInfo.blogId}">
					<strong>点击可查看完整网页版</strong>
				</a>
				，不过加载速度会有点慢哦！
			</div>
		</div>
	</div>
	
	<div class="container">
		<div class="footer-container">
			<a href="http://wuxincheng.com.cn">
				<img src="<%=request.getContextPath()%>/assets/img/wxc-pi.png" />
			</a>
			<p>
				<a href="http://www.wuxincheng.com.cn">首页</a> | 
				<a href="<%=request.getContextPath()%>/blog/detailMobile?blogId=${blogInfo.blogId}">移动版</a>
				 | 
				 <a href="<%=request.getContextPath()%>/blog/detail?blogId=${blogInfo.blogId}">网页版</a>
			</p>
			<p>
				<a href="http://wuxincheng.com.cn">wuxincheng.com.cn</a><br>
				© Copyright 2014 - All Rights Reserved.
			</p>
		</div>
	</div>
</body>
</html>
