<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		
		<!-- 
		<div class="left-info-d">
			<form class="form-inline" role="form" action="" method="post">
	        	<input type="text" class="form-control" style="width: 195px;" placeholder="请输入关键字" name="keyWord">
	        	<button type="submit" class="btn btn-danger">搜索</button>
	        </form>
		</div>
		 -->
		
		<!-- 新成微博 start -->
		<div class="badger-left badger-notice" data-badger="新成微博">
        </div>
		<div class="left-info-d">
			<a href="https://plus.google.com/+XinChengWu" target="blank" rel="tooltip" data-placement="bottom" title="Google+">
				<img src="<%=request.getContextPath()%>/assets/images/logo/googleplus_logo.png" width="30px" height="30px" />
			</a>&nbsp;
			<a href="https://www.facebook.com/wxcking" target="blank" rel="tooltip" data-placement="bottom" title="Facebook">
				<img src="<%=request.getContextPath()%>/assets/images/logo/facebook_logo.png" width="30px" height="30px" />
			</a>&nbsp;
			<a href="https://twitter.com/wuxincheng" target="blank" rel="tooltip" data-placement="bottom" title="Twitter">
				<img src="<%=request.getContextPath()%>/assets/images/logo/twitter_logo.png" width="30px" height="30px" />
			</a>&nbsp;
			<a href="http://t.qq.com/wu_xincheng" target="blank" rel="tooltip" data-placement="bottom" title="腾讯微博">
				<img src="<%=request.getContextPath()%>/assets/images/logo/tweibo_logo.jpg" width="30px" height="30px" />
			</a>&nbsp;
			<a href="http://user.qzone.qq.com/728498699" target="blank" rel="tooltip" data-placement="bottom" title="QQ空间">
				<img src="<%=request.getContextPath()%>/assets/images/logo/qzone_logo.jpg" width="30px" height="30px" />
			</a>&nbsp;
			<a href="http://weibo.com/ya2dan" target="blank" rel="tooltip" data-placement="bottom" title="新浪微博">
				<img src="<%=request.getContextPath()%>/assets/images/logo/sina_logo.png" width="30px" height="30px" />
			</a>&nbsp;
			<a href="http://weibo.com/ya2dan" target="blank" rel="tooltip" data-placement="bottom" title="人人网">
				<img src="<%=request.getContextPath()%>/assets/images/logo/renren_logo.jpg" width="30px" height="30px" />
			</a>&nbsp;
			<a href="http://instagram.com/wuxinchengblog" target="blank" rel="tooltip" data-placement="bottom" title="Instagram">
				<img src="<%=request.getContextPath()%>/assets/images/logo/instagram_logo.png" width="30px" height="30px" />
			</a>&nbsp;
			<a href="http://wuxincheng.blogspot.com" target="blank" rel="tooltip" data-placement="bottom" title="Blogger">
				<img src="<%=request.getContextPath()%>/assets/images/logo/blogger_logo.png" width="30px" height="30px" />
			</a>&nbsp;
			<a href="http://www.linkedin.com/in/wuxincheng" target="blank" rel="tooltip" data-placement="bottom" title="Linkedin">
				<img src="<%=request.getContextPath()%>/assets/images/logo/linkedin_logo.png" width="30px" height="30px" />
			</a>&nbsp;
		</div>
		<!-- 新成微博 end -->
		
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
		<!-- 
		<div class="badger-left badger-notice" data-badger="新浪微博">
        </div>
		<div class="left-info-d">
			<wb:follow-button uid="3197818262" type="red_4" width="100%" height="64" ></wb:follow-button>
		</div>
		 -->
		<!-- 新浪微博end -->
		
		<!-- 腾讯微博start -->
		<!-- 
		<div class="badger-left badger-notice" data-badger="腾讯微博">
        </div>
		<div class="left-info-d">
			<iframe src="http://follow.v.t.qq.com/index.php?c=follow&a=quick&appkey=801509749&sign=55232e90&v=2&name=wu_xincheng&style=1&t=1401029187465&f=1" frameborder="0" scrolling="auto" width="227" height="75" marginwidth="0" marginheight="0" allowtransparency="true"></iframe>
		</div>
		 -->
		<!-- 腾讯微博end -->
		
		<!-- 新成微信start -->
		<!-- 
		<div class="badger-left badger-notice" data-badger="新成微信">
        </div>
		<div class="left-info-d">
			<img src="<%=request.getContextPath()%>/assets/img/weixin.png" class="img-responsive">
		</div>
		 -->
		<!-- 新成微信end -->
