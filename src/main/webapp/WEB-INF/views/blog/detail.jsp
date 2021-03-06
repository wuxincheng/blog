<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>${blogInfo.blogTitle} - 新成视野</title>
<meta name="description" content="${blogInfo.subContent} - 新成视野：基于娱乐、搞笑的个人博客分享平台">
<meta name="keywords" content="博客,个人博客,新成博客,新成,吴新成,新成视野,个人网站,图片,分享,搞笑,美女,娱乐,程序员,IT">
<meta name="author" content="wuxincheng,wxcking,wuxinchenghappy@gmail.com,吴新成">
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
        				<div class="col-sm-12 blog-main">
							<div class="blog-post">
								<div class="blog-post-main">
									<h3>${blogInfo.blogTitle}</h3>
			            		
				            		<div class="share-info">
					          			<div class="pull-left">
					            			<i class="fa fa-bookmark"></i> ${blogInfo.blogTypeName} &nbsp;&nbsp;
											<i class="fa fa-calendar"></i> ${blogInfo.updateTime} &nbsp;&nbsp;
											<i class="fa fa-eye"></i> <fmt:formatNumber value="${blogInfo.readCount}" pattern="###,###,###,##0" />次阅读
					          			</div>
					          			<div class="pull-right">
					          			
					          			</div>
					          		</div>
				            		
									<blockquote>
						            	<strong>导读：</strong>${blogInfo.subContent}
						            </blockquote>
						            
				            		<p>${blogInfo.blogContent}</p>
				            		 
				            		<hr>
				            		
							        <div class="jshare-info">
							        	<div class="pull-left">
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
	        			</div>
					</div>
					
					
				</div>
			</div>
			
			
		</div>
		
		<div class="container">
			<div class="wxc-alert-container">
				<div class="alert alert-warning" role="alert">
					<strong>阅读提示：</strong>
					亲爱的网友您好哇！您正在阅读《新成视野》网页版，
					<a href="<%=request.getContextPath()%>/blog/detailMobile?blogId=${blogInfo.blogId}">
						<strong>点击可查看移动版</strong>
					</a>
					。
				</div>
			</div>
		</div>
		
		<jsp:include page="../index_footer_content.jsp" />
		
		<jsp:include page="../footer.jsp" />
		<jsp:include page="../js_full.jsp" />
	</div>
</body>
</html>
