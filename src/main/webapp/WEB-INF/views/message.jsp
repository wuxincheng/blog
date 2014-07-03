<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>给我留言 - 新成视野</title>
<meta name="description" content="Your description">
<meta name="keywords" content="Your,Keywords">
<meta name="author" content="ResponsiveWebInc">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<jsp:include page="base.jsp" />

</head>

<body>
	<div class="wrapper">
		<jsp:include page="top.jsp" />
		<div class="main-content">
			<div class="container">
				<div class="ya2dan-container">
					<div class="row">
        				<div class="col-sm-9 blog-main">
							<div class="blog-post">
			            		<div class="badger-left badger-notice" data-badger="给我留言">
       			 				</div>
       			 				<p>&nbsp;</p>
								<form role="form">
									<div class="form-group">
										<label for="email">我的邮箱（Email）</label>
										<input type="email" class="form-control" id="email" placeholder="我的邮箱（Email）">
									</div>
									<div class="form-group">
										<label for="context">留言内容（Context）</label>
										<textarea class="form-control" id="context" placeholder="留言内容（Context）" rows="8"></textarea>
									</div>
									<button type="submit" class="btn btn-danger">确定</button>
								</form>

			          		</div>
	        			</div>
						<div class="col-sm-3">
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