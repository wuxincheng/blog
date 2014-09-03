<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>首页 - 新成应用</title>
<meta name="description" content="新成视野：基于娱乐、搞笑的个人博客分享平台">
<meta name="keywords" content="博客,个人博客,新成博客,新成,吴新成,新成视野,个人网站,图片,分享,搞笑,美女,娱乐,程序员,IT">
<meta name="author" content="wuxincheng,wxcking,wuxinchenghappy@gmail.com,吴新成">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<jsp:include page="../base.jsp" />

<style type="text/css">
</style>

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
		<jsp:include page="../top.jsp" />
		
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
			<div class="wxc-alert-container">
				<div class="alert alert-warning" role="alert">
					<strong>阅读提示：</strong>
					亲爱的网友您好哇！您正在阅读《新成视野》网页版，
					<a href="<%=request.getContextPath()%>/blog/mobileList">
						<strong>点击可查看移动版</strong>
					</a>
					。
				</div>
			</div>
		</div>
		
		<jsp:include page="../index_footer_content.jsp" />
		
		<jsp:include page="../footer.jsp" />
		<jsp:include page="../js_full.jsp" />
		
	</div>
</body>

</html>
