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
			<a class="navbar-brand">视频管理系统</a>
		</div>

		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-9">
			<ul class="nav navbar-nav">
				<li><a>视频管理</a></li>
			</ul>
			<p class="navbar-text navbar-right">
				<span>admin</span> <i class="glyphicon glyphicon-log-in" aria-hidden="true"></i>&nbsp;&nbsp;<a class="navbar-link">退出</a>
			</p>
		</div>

	</div>
</nav>
	<div class="jumbotron" style="padding-top: 15px;padding-bottom: 15px;">
		<div class="container">		
				<h2>添加视频</h2>		
		</div>
	</div>



	<div class="container" style="margin-top: 20px;">

		<form action="${pageContext.request.contextPath }/add"  class="form-horizontal"  method="post" >

			
			<div class="form-group">
			    <label for="subjectId" class="col-sm-2 control-label">标题</label>
			<div class="col-sm-10">
					<select name="title" id="subjectId" class="form-control">
						<option value="0" selected="selected">请选择所属标题</option>					
							<option value="0">个人简历项目开发-1</option>	
							<option value="1">场景秀项目开发-1</option>
							<option value="2">Git的安装及配置</option>
							<option value="3">与远程代码库同步</option>					
					</select>
			  </div>
			  </div>
			  
			  <div class="form-group">
				<label for="courseDesc" class="col-sm-2 control-label">简介</label>
				<div class="col-sm-10">
					<textarea class="form-control" id="courseDesc" name="detail" rows="3"></textarea>
				</div>
			  </div>
			  
			  	<div class="form-group">
			    <label for="subjectId" class="col-sm-2 control-label">讲师</label>
			<div class="col-sm-10">
					<select name="speaker_id" id="subjectId" class="form-control">
						<option value="0" selected="selected">请选择讲师</option>					
							<option value="0">1</option>	
							<option value="1">2</option>
							<option value="2">3</option>
							<option value="3">4</option>					
					</select>
			  </div>
			  </div>
			  

			<div class="form-group">
				<label for="subjectTitle" class="col-sm-2 control-label">时长</label>
				<div class="col-sm-10">
					<input class="form-control" name="time" id="subjectTitle" placeholder="时长" type="text">
				</div>
			</div>
			
			<div class="form-group">
				<label for="subjectTitle1" class="col-sm-2 control-label">播放次数</label>
				<div class="col-sm-10">
					<input class="form-control" name="play_num" id="subjectTitle1" placeholder="播放次数" type="text">
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