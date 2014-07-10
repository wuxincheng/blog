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
 		$("#load-more2").click(function(){
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

<script>
  $(function(){
    var $container = $('#container');
    
    $container.masonry({
      itemSelector: '.box',
      columnWidth: 100,
      isAnimated: !Modernizr.csstransitions
    });
    
    $('#prepend').click(function(){
      var $boxes = $( boxMaker.makeBoxes() );
      $container.prepend( $boxes ).masonry( 'reload' );
    });
    
    $('#load-more').click(function(){
      var $boxes = $( boxMaker.makeBoxes() );
      $container.append( $boxes ).masonry( 'appended', $boxes );
    });
    
  });
</script>

</head>

<body>
	<div class="wrapper">
		<jsp:include page="top.jsp" />
		
		<div class="container">
			<div class="blog padd">
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
		
			<input type="hidden" id="currentPage" name="currentPage" value="${currentPage+1}" />
			<div id="load-more-d" class="pager-squ">
				<button id="load-more" name="load-more" type="button" class="btn btn-default btn-block">点击加载更多</button>
			</div>
		</div>
		
		<jsp:include page="footer.jsp" />
		<jsp:include page="js_full.jsp" />
		
	</div>
</body>

</html>
