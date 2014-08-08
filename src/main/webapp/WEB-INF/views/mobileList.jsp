<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

<link href="<%=request.getContextPath()%>/assets/img/favicon.ico" type="image/x-icon" rel="icon"/>
<link href="<%=request.getContextPath()%>/assets/img/favicon.ico" type="image/x-icon" rel="shortcut icon"/>
<link href="<%=request.getContextPath()%>/assets/css/style_mobile.css" rel="stylesheet">

</head>

<body>
	<div class="container">
		<div class="blog padd">
			<c:choose>
			<c:when test="${not empty pager.blogInfos}">
			<div id="container" class="grid" style="position: relative;">
				
				<c:forEach items="${pager.blogInfos}" var="blogInfo" varStatus="s">
				<div class="item" id="${currentPage+s.index+1}">
					<div class="grid-entry">
						<div class="entry-info">
							<h3>
								<a href="<%=request.getContextPath()%>/blog/detailMobile?blogId=${blogInfo.blogId}" target="_blank">
									<strong>${blogInfo.blogTitle}</strong>
								</a>
							</h3>
							<div class="spt">
								${blogInfo.updateTime} &nbsp; | &nbsp;
								阅读(<fmt:formatNumber value="${blogInfo.readCount}" pattern="###,###,###,##0" />) &nbsp;| &nbsp;
								${blogInfo.blogTypeName}
							</div>
						</div>
						<div class="grid-img">
							<a href="<%=request.getContextPath()%>/blog/detailMobile?blogId=${blogInfo.blogId}" target="_blank">
								<img src="${blogInfo.picLink}" class="img-responsive" alt="">
							</a>
						</div>
						<div class="entry-info">
							<div class="sp">
								${blogInfo.subContent}
								<a href="<%=request.getContextPath()%>/blog/detailMobile?blogId=${blogInfo.blogId}" target="_blank" class="read-more">
									阅读详细
								</a>
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
	
		<div class="pager-squ">
			<a <c:if test="${pager.currentPage > 1}">href="<%=request.getContextPath()%>/blog/mobileList?currentPage=${pager.currentPage-1}"</c:if>>上一页</a>
			&nbsp;&nbsp;
			<strong>${pager.currentPage} / ${pager.lastPage}</strong>
			&nbsp;&nbsp;
			<a <c:if test="${pager.currentPage < pager.lastPage}">href="<%=request.getContextPath()%>/blog/mobileList?currentPage=${pager.currentPage+1}"</c:if>>下一页</a>
		</div>
		
		<jsp:include page="footer_mobile.jsp" />
	</div>
</body>

</html>
