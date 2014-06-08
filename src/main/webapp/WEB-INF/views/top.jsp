<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
		<div class="header">
			<nav class="navbar" role="navigation">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
					</div>
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li <c:if test="${'index' eq navFlag}">class="active"</c:if>><a href="<%=request.getContextPath()%>/blog/list">首页</a></li>
							<li <c:if test="${'times' eq navFlag}">class="active"</c:if>><a href="<%=request.getContextPath()%>/times/show">关于网站</a></li>
							<li <c:if test="${'times' eq navFlag}">class="active"</c:if>><a href="<%=request.getContextPath()%>/times/show">联系方式</a></li>
							<li <c:if test="${'times' eq navFlag}">class="active"</c:if>><a href="<%=request.getContextPath()%>/times/show">时间轴</a></li>
						</ul>
						<ul class="nav navbar-nav navbar-right">
							<li class="dropdown">
							  <a href="#" class="dropdown-toggle" data-toggle="dropdown">
							  	<img alt="" src="<%=request.getContextPath()%>/assets/img/wuxc.jpg" height="23px" width="23px" class="img-circle">
							  <b class="caret"></b></a>
							  <ul class="dropdown-menu">
							    <li><a href="#"><img alt="" src="<%=request.getContextPath()%>/assets/img/wuxc.jpg" class="img-circle">&nbsp;&nbsp;吴新成</a></li>
							    <li class="divider"></li>
							    <li><a href="http://weibo.com/ya2dan" target="blank">新浪微博</a></li>
							    <li><a href="http://t.qq.com/wu_xincheng" target="blank">腾讯微博</a></li>
							    <li><a href="http://user.qzone.qq.com/728498699" target="blank">QQ空间</a></li>
							    <li class="divider"></li>
							    <li><a href="https://plus.google.com/+XinChengWu" target="blank">Google+</a></li>
							    <li><a href="https://www.facebook.com/wxcking" target="blank">Facebook</a></li>
							    <li><a href="https://twitter.com/wuxincheng" target="blank">Twitter</a></li>
							  </ul>
							</li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
