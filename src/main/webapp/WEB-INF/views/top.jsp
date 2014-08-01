<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

		<div class="header">
			<nav class="navbar navbar-fixed-top" role="navigation">
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
							<li <c:if test="${'index' eq navFlag}">class="active"</c:if>><a href="<%=request.getContextPath()%>/blog/list"><i class="fa fa-home"></i> 首页</a></li>
							<li class="dropdown">
							  <a href="#" class="dropdown-toggle" data-toggle="dropdown">
							  	<i class="fa fa-list"></i>
							  	分类
							  <b class="caret"></b></a>
							  <ul class="dropdown-menu">
							  	<li class="active"><a href="#"><i class="fa fa-th-list"></i>&nbsp;&nbsp;&nbsp;&nbsp;全部</a></li>
							  	<li class="divider"></li>
					        	<c:forEach items="${types}" var="type">
								<li class=""><a href="#"><i class="fa fa-th-list"></i>&nbsp;&nbsp;&nbsp;&nbsp;${type.typeName} - ${type.typeMemo}</a></li>
								</c:forEach>
							  </ul>
							</li>
						</ul>
						
						<ul class="nav navbar-nav" >
							<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
							<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
							<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
							<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
							<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
							<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
						</ul>
						
						<ul class="nav navbar-nav" >
							<li>
							  <a href="#">
							  	<img alt="" src="<%=request.getContextPath()%>/assets/img/wuxc.jpg" height="23px" width="23px" class="img-circle">
							  </a>
							</li>
						</ul>
						
						<!-- 
						<ul class="nav navbar-nav navbar-right">
							<li <c:if test="${'message' eq navFlag}">class="active"</c:if>><a href="<%=request.getContextPath()%>/message/"><i class="fa fa-envelope"></i> 留言</a></li>
							<li <c:if test="${'about' eq navFlag}">class="active"</c:if>><a href="<%=request.getContextPath()%>/about/"><i class="fa fa-bell"></i> 关于</a></li>
						</ul>
						 -->
					</div>
				</div>
			</nav>
		</div>
		
		<div class="container">
			<div class="per-info-right">
				<div class="row">
	       			<div class="col-sm-5">
	       				<a href="https://wuxincheng.com.cn">
							<img src="<%=request.getContextPath()%>/assets/img/wxc-pi.png" />
						</a>
	       			</div>
	       			<div class="col-sm-7" style="text-align: right;">
	       				<a href="https://plus.google.com/+XinChengWu" target="blank" rel="tooltip" data-placement="bottom" title="Google+">
							<img src="<%=request.getContextPath()%>/assets/images/logo/googleplus_logo.png" width="30px" height="30px" />
						</a>&nbsp;
						<a href="https://www.facebook.com/wxcking" target="blank" rel="tooltip" data-placement="bottom" title="Facebook">
							<img src="<%=request.getContextPath()%>/assets/images/logo/facebook_logo.png" width="30px" height="30px" />
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
						<a href="http://www.linkedin.com/in/wuxincheng" target="blank" rel="tooltip" data-placement="bottom" title="Linkedin">
							<img src="<%=request.getContextPath()%>/assets/images/logo/linkedin_logo.png" width="30px" height="30px" />
						</a>
	       			</div>
	       		</div>
			</div>
		</div>
		