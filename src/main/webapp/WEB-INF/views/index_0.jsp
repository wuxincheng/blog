<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>首页 - 新成视野</title>
<meta name="description" content="Your description">
<meta name="keywords" content="Your,Keywords">
<meta name="author" content="ResponsiveWebInc">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="<%=request.getContextPath()%>/assets/js/jquery.js"></script>

<jsp:include page="base.jsp" />
</head>

<body>
	<div class="wrapper">
		<jsp:include page="top.jsp" />
		
		<div class="container">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-9" role="main">
						<!-- 
						<div class="ya2dan-index-container">
					        <div class="alert alert-info">
								网站处于试运营阶段，有大量地方需要改进，欢迎提出宝贵的意见，联系方式：wuxinchenghappy@gmail.com
							</div>
				        </div>
						 -->
				        
				        <!-- 
				        <div class="bs-example">
					        <ul class="nav nav-pills">
					        	<li class="active"><a href="#">全部</a></li>
					        	<c:forEach items="${types}" var="type">
								<li class=""><a href="#">${type.typeName}</a></li>
								</c:forEach>
							</ul>
						</div>
				         -->
				        
						<section id="blog">
							<div class="blog padd">
								<c:choose>
								<c:when test="${not empty pager.blogInfos}">
								<div id="container" class="grid" style="position: relative;">
									<c:forEach items="${pager.blogInfos}" var="blogInfo" varStatus="s">
									<div class="item">
										<div class="grid-entry">
											<div class="entry-info">
												<h5>
													<a href="<%=request.getContextPath()%>/blog/detail?blogId=${blogInfo.blogId}" target="_blank">
														<strong>${blogInfo.blogTitle}</strong>
													</a>
												</h5>
												<div class="spt">
													<i class="fa fa-bookmark"></i> ${blogInfo.blogTypeName} &nbsp;&nbsp;&nbsp;&nbsp;
													<i class="fa fa-calendar"></i> ${blogInfo.blogTime}
												</div>
											</div>
											<div class="grid-img">
												<a href="<%=request.getContextPath()%>/blog/detail?blogId=${blogInfo.blogId}" target="_blank">
													<img src="${blogInfo.picLink}" class="img-responsive" alt="">
												</a>
											</div>
											<div class="entry-info">
												<!-- Paragraph -->
												<div class="sp">${blogInfo.subContent}</div>
												<div class="sp">
								          			<div class="pull-left"></div>
								          			<div class="pull-right">
									          			<a href="<%=request.getContextPath()%>/blog/detail?blogId=${blogInfo.blogId}" target="_blank" class="read-more">
															<span class="label label-danger">阅读详细</span>
															
															<!-- 
															<button type="button" class="btn btn-danger btn-sm">阅读详细</button>
															 -->
															 
															<i class="fa fa-angle-double-right"></i>
														</a>
								          			</div>
								          		</div>
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
						</section>
						
						<div id="load-more-d" class="pager-squ">
							<ul class="pager">
								<li <c:if test="${'1' eq pager.currentPage}">class="disabled"</c:if>>
									<a <c:if test="${pager.currentPage > 1}">href="<%=request.getContextPath()%>/blog/list?currentPage=${pager.currentPage-1}"</c:if>>上一页</a>
								</li>
								
								<li class="">&nbsp;</li>
								<li class=""><strong>${pager.currentPage}/${pager.lastPage}</strong></li>
								<li class="">&nbsp;</li>
								
								<li <c:if test="${pager.lastPage eq pager.currentPage}">class="disabled"</c:if>>
									<a <c:if test="${pager.currentPage < pager.lastPage}">href="<%=request.getContextPath()%>/blog/list?currentPage=${pager.currentPage+1}"</c:if>>下一页</a>
								</li>
							</ul>
						</div>
					</div>
					
					<div class="col-md-3">
						<div class="blog-right">
							<jsp:include page="right.jsp" />
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<jsp:include page="footer.jsp" />
		<jsp:include page="js_full.jsp" />
	</div>
</body>
</html>
