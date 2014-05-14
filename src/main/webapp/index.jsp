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
		        <div class="alert alert-ya2danmsg"><strong>平台通知：</strong> 网站平台将于2014-05-20 21:00更新，感谢网友的支持！</div>
	        </div>
		</div>
		
		<div class="main-content">
			<section id="blog">
				<div class="blog padd">
					<div class="container">
						<div id="container" class="grid" style="position: relative;">
							<c:forEach var="i" begin="1" end="15" step="1">
							<div class="item">
								<div class="grid-entry">
									<div class="entry-info">
										<h5><a href="#">移动支付帝国战：谷歌、苹果、Facebook、亚马逊孰胜孰负？</a></h5>
										<div class="spt">
											<i class="fa fa-bookmark"></i> 新闻 &nbsp;&nbsp;&nbsp;&nbsp;
											<i class="fa fa-calendar"></i> 2014-05-13 23:35:01
										</div>
									</div>
									<div class="grid-img">
										<a href="">
											<img src="./assets/images/${i}.jpg" class="img-responsive" alt="">
										</a>
									</div>
									<div class="entry-info">
										<!-- Paragraph -->
										<div class="sp">移动支付这块蛋糕引得众人觊觎，Google Play服务不动声色地将Android打造成为现实世界的购物平台，iOS慢一拍，亚马逊完全依赖平台，Facebook广告满天飞。营销方式含蓄、应用数量惊人，Google这场仗赢得漂亮。</div>
										<a href="#" class="read-more">
											<button type="button" class="btn btn-danger btn-xs">阅读详细</button> 
											<i class="fa fa-angle-double-right"></i>
										</a>
									</div>
								</div>
							</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</section>
			
			<div class="container">
				<div class="ya2dan-container">
			        <button type="button" class="btn btn-danger btn-xs btn-block">加载更多</button>
		        </div>
			</div>
		</div>
		
		<div class="container">
			<div class="ya2dan-container">
				<div class="badger-left badger-notice" data-badger="网站公告（Notice for all）">
		        	<h6>网站平台将于2014-05-20 21:00更新，感谢网友的支持！</h6>
		        </div>
	        </div>
		</div>
		
		<jsp:include page="footer.jsp" />
	</div>
</body>
</html>
