<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>${blogInfo.blogTitle} - 新成博客</title>
<meta name="description" content="Your description">
<meta name="keywords" content="Your,Keywords">
<meta name="author" content="ResponsiveWebInc">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<jsp:include page="../base.jsp" />

<!-- 新浪微博关注 -->
<script src="http://tjs.sjs.sinajs.cn/open/api/js/wb.js" type="text/javascript" charset="utf-8"></script>

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
			            		<h3 class="blog-post-title">${blogInfo.blogTitle}</h3>
			            		<p class="blog-post-meta">
			            			<i class="fa fa-bookmark"></i> ${blogInfo.blogTypeName} &nbsp;&nbsp;&nbsp;&nbsp;
									<i class="fa fa-calendar"></i> ${blogInfo.updateTime}
								</p>
								<blockquote>
					              <p><strong>摘要：</strong>${blogInfo.subContent}</p>
					            </blockquote>
			            		<p>${blogInfo.blogContent}</p>
			          		</div>
			          		<div class="share-info">
			          			<div class="pull-left"></div>
			          			<div class="pull-right"><jsp:include page="../share_bar.jsp" /></div>
			          		</div>
			          		
			          		<!-- 
							<div class="next-prev-info">
								<span class="label label-danger">上一篇：</span> <a href="">狙击Google Glass？三星九月份将推基于Tizen系统的Gear Glass</a><br>
								<span class="label label-danger">下一篇：</span> <a href="">最新消息：iPhone 6将采用更大、更清晰的1704x960分辨率屏幕</a>
							</div>
			          		 -->
	        			</div>
						<div class="col-sm-3 blog-sidebar">
							<!-- 阅读排行start -->
							<div class="badger-left badger-notice" data-badger="阅读排行">
					        </div>
							<c:forEach items="${topBlogInfos}" var="topBlogInfo">
							<div class="left-info-d">
								<h5><strong><a href="<%=request.getContextPath()%>/blog/detail?blogId=${topBlogInfo.blogId}" target="_blank">${topBlogInfo.blogTitle}</a></strong></h5>
								<a href="<%=request.getContextPath()%>/blog/detail?blogId=${topBlogInfo.blogId}" target="_blank">
									<img src="${topBlogInfo.picLink}" class="img-responsive" />
								</a>
							</div>
				          	</c:forEach>
							<!-- 阅读排行end -->
							
							<!-- 新浪微博start -->
							<div class="badger-left badger-notice" data-badger="新浪微博">
					        </div>
							<div class="left-info-d">
								<wb:follow-button uid="3197818262" type="red_4" width="100%" height="64" ></wb:follow-button>
							</div>
							<!-- 新浪微博end -->
							
							<!-- 腾讯微博start -->
							<div class="badger-left badger-notice" data-badger="腾讯微博">
					        </div>
							<div class="left-info-d">
								<iframe src="http://follow.v.t.qq.com/index.php?c=follow&a=quick&appkey=801509749&sign=55232e90&v=2&name=wu_xincheng&style=1&t=1401029187465&f=1" frameborder="0" scrolling="auto" width="227" height="75" marginwidth="0" marginheight="0" allowtransparency="true"></iframe>
							</div>
							<!-- 腾讯微博end -->
							
							<!-- 新成微信start -->
							<div class="badger-left badger-notice" data-badger="新成微信">
					        </div>
							<div class="left-info-d">
								<img src="<%=request.getContextPath()%>/assets/img/weixin.png" class="img-responsive">
							</div>
							<!-- 新成微信end -->
	      				</div>
					</div>
				</div>
			</div>
		</div>
		
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>
