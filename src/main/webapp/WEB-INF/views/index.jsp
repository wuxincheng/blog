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

<jsp:include page="base.jsp" />

<script>
	$(document).ready(function() {
 		$("#load-more").click(function(){
 			$.ajax({
 	             type: "POST",
 	             url: "<%=request.getContextPath()%>/blog/load",
 	             data: {currentPage:$("#currentPage").val()},
 	             dataType: "json",
 	             success: function(data){
					// alert(data['blogInfos']);
					
					var pageLastItem = $("div[class=item]:last");
					
					// alert(pageLastItem.attr('id'));
					
					pageLastItem.after('<div class="item" id="33"><div class="grid-entry"><div class="entry-info">测试</div></div></div>');
				
					// $(lastDiv).after('jj');
					
 					$('#currentPage').val(data['nextPage']);
 					
 					if (data['currentPage'] >= data['lastPage']) {
 						$('#load-more-d').empty();
 						$('#load-more-d').html('<button type="button" class="btn btn-success btn-block">已经加载全部</button>');
 					}
 	            	
 					/**
					$('#resText').empty();
					var html = ''; 
					$.each(data, function(commentIndex, comment){
					      html += '<div class="comment"><h6>' + comment['username']
					                + ':</h6><p class="para"' + comment['content']
					                + '</p></div>';
					});
					$('#resText').html(html);
 					 */
				}
			});
		});
	});
</script>

</head>

<body>
	<div class="wrapper">
		<jsp:include page="top.jsp" />
		
		<div class="container">
			<div class="blog padd">
				<!-- 
				<div class="nav-info">
					<a href="#"><i class="fa fa-home"></i> 首页</a> &nbsp;
					<i class="fa fa-angle-right"></i> &nbsp;<a href="#">全部</a> &nbsp;
					<i class="fa fa-angle-right"></i> &nbsp;程序员
				</div>
				 -->
				
				<c:choose>
				<c:when test="${not empty pager.blogInfos}">
				<div id="container" class="grid" style="position: relative;">
					
					<c:forEach items="${pager.blogInfos}" var="blogInfo" varStatus="s">
					<div class="item" id="${currentPage+s.index+1}">
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
											<i class="fa fa-angle-double-right"></i>
										</a>
				          			</div>
				          		</div>
							</div>
						</div>
					</div>
					</c:forEach>
					
					<!-- ajax load data -->
					
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
		
		<div class="container">
			<div class="row">
				<div class="col-xs-6 col-md-6">
					<div class="thumbnail">
						<div class="sblog">
							<div class="sblog-bottom">
								<div class="badger-left badger-notice" data-badger="阅读推荐">
				        		</div>
							</div>
							<div class="left-info-s">
				    			<c:forEach items="${topBlogInfos}" var="topBlogInfo" varStatus="s">
								<strong><a href="<%=request.getContextPath()%>/blog/detail?blogId=${topBlogInfo.blogId}" target="_blank">
									<c:if test="${'1' eq s.index+1}">
									<span class="label label-danger">${s.index+1}</span>
									</c:if>
									<c:if test="${'2' eq s.index+1}">
									<span class="label label-warning">${s.index+1}</span>
									</c:if>
									<c:if test="${'3' eq s.index+1}">
									<span class="label label-success">${s.index+1}</span>
									</c:if>
									<c:if test="${s.index+1 > 3}">
									<span class="label label-default">${s.index+1}</span>
									</c:if>
									&nbsp;${topBlogInfo.blogTitle}</a></strong><br>
						        </c:forEach>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xs-6 col-md-6">
					<div class="thumbnail">
						<div class="sblog">
							<div class="sblog-bottom">
								<div class="badger-left badger-notice" data-badger="阅读推荐">
				        		</div>
							</div>
							<div class="left-info-s">
				    			<c:forEach items="${footerBlogInfos}" var="footerBlogInfo" varStatus="s">
								<a href="<%=request.getContextPath()%>/blog/detail?blogId=${footerBlogInfo.blogId}" target="_blank">
								<span class="label label-info">${footerBlogInfo.blogTypeName}</span>
								<strong>${s.index+1}. ${footerBlogInfo.blogTitle}</strong><br>
								</a>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="container">
			<div class="tip-info">
				<strong>免责声明：</strong>
				<a href="http://wuxincheng.com.cn">WUXINCHENG.COM.CN</a>，
				即新成视野（原：新成博客）所有内容来源于互联网。如果本站部分内容侵犯您的权益，请您告知！
			</div>
		</div>
		
		<jsp:include page="footer.jsp" />
		<jsp:include page="js_full.jsp" />
		
	</div>
</body>

</html>
