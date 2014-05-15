<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>新成博客 - 首页</title>
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
		        <div class="alert alert-info">
					<strong>平台通知：</strong> 网站平台将于2014-05-20 21:00更新，感谢网友的支持！
				</div>
	        </div>
		</div>
		
		<div class="main-content">
			<section id="blog">
				<div class="blog padd">
					<div class="container">
						<c:choose>
						<c:when test="${not empty blogInfos}">
						<div id="container" class="grid" style="position: relative;">
							<c:forEach items="${blogInfos}" var="blogInfo" varStatus="s">
							<div class="item">
								<div class="grid-entry">
									<div class="entry-info">
										<h5><a href="<%=request.getContextPath()%>/blog/detail?blogId=${blogInfo.blogId}">${blogInfo.blogTitle}</a></h5>
										<div class="spt">
											<i class="fa fa-bookmark"></i> ${blogInfo.blogTypeName} &nbsp;&nbsp;&nbsp;&nbsp;
											<i class="fa fa-calendar"></i> ${blogInfo.blogTime}
										</div>
									</div>
									<div class="grid-img">
										<a href="<%=request.getContextPath()%>/blog/detail?blogId=${blogInfo.blogId}">
											<img src="${blogInfo.picLink}" class="img-responsive" alt="">
										</a>
									</div>
									<div class="entry-info">
										<!-- Paragraph -->
										<div class="sp">${blogInfo.subContent}</div>
										<a href="<%=request.getContextPath()%>/blog/detail?blogId=${blogInfo.blogId}" class="read-more">
											<button type="button" class="btn btn-danger btn-sm">阅读详细</button> 
											<i class="fa fa-angle-double-right"></i>
										</a>
									</div>
								</div>
							</div>
							</c:forEach>
						</div>
						</c:when>
						<c:otherwise>
						<div class="ya2dan-container">
							<div class="alert alert-warning">
								<strong>提示：</strong>系统没有查询到博客信息
							</div>
						</div>
						</c:otherwise>
						</c:choose>
					</div>
				</div>
			</section>
			
			<div class="container">
				<div class="ya2dan-container">
			        <button type="button" class="btn btn-danger btn-block">点击加载更多</button>
		        </div>
			</div>
		</div>
		
		<jsp:include page="footer.jsp" />
	</div>
</body>
</html>
