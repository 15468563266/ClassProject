<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- saved from url=(0047)http://localhost:8080/Voids/Course/addCourse.do -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
<!--<base href="http://localhost:8080/Voids/">--><base href=".">


<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>智游教育</title>

<link href="${pageContext.request.contextPath }/static/js/bootstrap.css" rel="stylesheet">

<style type="text/css">
.col-md-1 {
	padding-top: 20px;
}

.a1 {
	color: gray;
}

b {
	float: right;
}
</style>



</head>

<body>

	




<nav class="navbar-inverse">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<a class="navbar-brand">讲师管理系统</a>
		</div>

		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-9">
			<ul class="nav navbar-nav">
				<li><a>讲师管理</a></li>
			</ul>
			<p class="navbar-text navbar-right">
				<span>admin</span> <i class="glyphicon glyphicon-log-in" aria-hidden="true"></i>&nbsp;&nbsp;<a class="navbar-link">退出</a>
			</p>
		</div>

	</div>
</nav>
	<div class="jumbotron" style="padding-top: 15px;padding-bottom: 15px;">
		<div class="container">		
				<h2>添加讲师</h2>		
		</div>
	</div>



	<div class="container" style="margin-top: 20px;">

		<form action="${pageContext.request.contextPath }/add1"  class="form-horizontal"  method="post" >

			
			<div class="form-group">
			    <label for="subjectId" class="col-sm-2 control-label">名字</label>
			<div class="col-sm-10">
				<input type="text" value="${speaker.speaker_name}" name="speaker_name">
			  </div>
			  </div>
			  
			  <div class="form-group">
				<label for="courseDesc" class="col-sm-2 control-label">简介</label>
				<div class="col-sm-10">
					<input type="text" value="${speaker.speaker_desc}" name="speaker_desc">
				</div>
			  </div>
			  
			  	<div class="form-group">
			    <label for="subjectId" class="col-sm-2 control-label">职位</label>
			<div class="col-sm-10">
				<input type="text" value="${speaker.speaker_job}" name="speaker_job">
			  </div>
			  </div>

			
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-default">保存</button>
			</div>
			</div>
		</form>
	</div>


<script src="${pageContext.request.contextPath }/static/js/jquery-1.js"></script>
<script src="${pageContext.request.contextPath }/static/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath }/static/js/confirm.js"></script>
<script src="${pageContext.request.contextPath }/static/js/jquery.js"></script>
<script src="${pageContext.request.contextPath }/static/js/message_cn.js"></script>






<div id="modal-background" class=""></div><div id="confirm-modal" class="modal fade role=" dialog"="" tabindex="-1"><div class="modal-dialog modal-undefined"><div class="modal-content"><div class="modal-header"><button id="modal-upper-close" class="close modal-close" aria-label="Close" type="button"><span aria-hidden="true">×</span></button><h4 id="modal-title" class="modal-title">Modal Title</h4></div><div id="modal-body" class="modal-body"> Modal Message </div><div id="modal-footer" class="modal-footer"></div></div></div></div><div id="modal-background" class=""></div></body></html>