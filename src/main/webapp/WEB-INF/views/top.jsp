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
							<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
						</ul>
						
						<ul class="nav navbar-nav" >
							<li>
							  <a href="#">
							  	<img alt="" src="<%=request.getContextPath()%>/assets/img/wuxc.jpg" height="23px" width="23px" class="img-circle">
							  </a>
							</li>
						</ul>
						
						<ul class="nav navbar-nav navbar-right">
							<li <c:if test="${'message' eq navFlag}">class="active"</c:if>><a href="<%=request.getContextPath()%>/message/"><i class="fa fa-envelope"></i> 留言</a></li>
							<li <c:if test="${'about' eq navFlag}">class="active"</c:if>><a href="<%=request.getContextPath()%>/about/"><i class="fa fa-bell"></i> 关于</a></li>
							<li <c:if test="${'time' eq navFlag}">class="active"</c:if>><a href="<%=request.getContextPath()%>/message/"><i class="fa fa-list-alt"></i> 动态</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
		