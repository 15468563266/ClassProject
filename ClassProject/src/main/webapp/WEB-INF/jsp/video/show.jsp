<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- saved from url=(0052)http://localhost:8080/Voids/controller/courseShow.do -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<!--<base href="http://localhost:8080/Voids/">--><base href=".">
		
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>智游教育</title>
		
<link href="${pageContext.request.contextPath }/static/js/bootstrap.css" rel="stylesheet">

<script src="${pageContext.request.contextPath }/static/js/jquery-1.js"></script>
<script src="${pageContext.request.contextPath }/static/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath }/static/js/confirm.js"></script>
<script src="${pageContext.request.contextPath }/static/js/jquery.js"></script>
<script src="${pageContext.request.contextPath }/static/js/message_cn.js"></script>

		<style type="text/css">
		th {
			text-align: center;
		}
		</style>
	</head>

	<body>
<nav class="navbar-inverse">
	<div class="container">
		
		<div class="navbar-header">
			<a class="navbar-brand">视频管理系统</a>
		</div>

		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-9">
			<ul class="nav navbar-nav">
				<li><a href="video">视频管理</a></li>
				<li><a href="speaker">主讲人管理</a></li>
				<li><a href="course">课程管理</a></li>
				
				
			</ul>
			<p class="navbar-text navbar-right">
				<span>admin</span> <i class="glyphicon glyphicon-log-in" aria-hidden="true"></i>&nbsp;&nbsp;<a  class="navbar-link">退出</a>
			</p>
		</div>
		<!-- /.navbar-collapse -->


	</div>
	<!-- /.container-fluid -->
</nav>
    <div class="jumbotron" style="padding-top: 15px;padding-bottom: 15px;">
	  <div class="container">
	          <h2>视频管理</h2>
	  </div>
	</div>
		
	<form action="http://localhost:8080/Voids/Course/deleteall.do">
	<div class="container">
    	<button onclick="showAddPage()" type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		      添加
		</button>
		<button type="button" onclick="deleteAll()">批量删除</button>
	</div>
	
	<div class="container" style="margin-top: 20px;">
		
		<table class="table table-bordered table-hover"  style="text-align: center;table-layout:fixed;">
      <thead>
        <tr class="active">
          <th><input type="checkbox" id="all"></th>
          <th>序号</th>
          <th style="width:16%">标题</th>
          <th style="width:60%">简介</th>
          <td>讲师</td>
		  <td>时长</td>
		  <td>播放次数</td>
          <th>编辑</th>
          <th>删除</th>
        </tr>
      </thead>
      
      
      	<tbody>
  		<c:forEach items="${list}" var="i">
		<tr>
		<td><input type="checkbox" ></td>
		<td>${i.video_id}</td>
		<td>${i.title}</td>
		<td>${i.detail}</td>
		<td>${i.speaker_id}</td>
		<td>${i.time}</td>
		<td>${i.play_num}</td>
		<td><a href="selectByID?video_id=${i.video_id}">✎</a></td>
		<td><a href="delete?video_id=${i.video_id}">X</a></td>	
		</td>
		</tr>
		</c:forEach>
		 <font>总共${count}条,当前第${page }页</font>
	                                                                                                                                                                                                                                                                                            
		<c:if test="${count %5==0}">
		<c:set value="${count/5}" var="page" />
		</c:if>
		<c:if test="${count %5!=0}">
		<c:set value="${count/5+1}" var="page" />
		</c:if>	
		<fmt:parseNumber var="page" value="${page}" integerOnly="true" />
		<c:forEach var="i" begin="1" end="${page}">
			<a href="video?page=${i}">${i}</a>
		</c:forEach>

        </tbody>
     	</table>
    
	</div>
	  </form>
		
	


	<script type="text/javascript">
		function showAddPage(){
			location.href="addVideo";
		}
		function deleteAll() {
			var checkedNum=$("input[name='checkbox']:checked").length;
			var ids=new Array();
			$("input[name='checkbox']:checked").each(function(){
	            ids.push($(this).val());
	        });		
	/* 		alert("ids:"+ids) */
			$.ajax({
				url:"video_deleteAll",//指定请求的url
//				contentType: "application/json; charset=utf-8",
				traditional:true,
				data:{			//请求附带的参数
					video_ids:ids
				},
				success: function(data){
					if(data=='success'){
						alert("温馨提示：删除成功");
						document.location.href="video";
					}else{
						alert("温馨提示：删除失败");
					}
	         	 }
			})
				
		}
		/* 全选/全不选 */
		$("#all").on("click",function all() {
			var isCheck=document.getElementById("all");
			if(isCheck.checked==false){
				var group=document.getElementsByName("checkbox");
				for (var i = 0; i < group.length; i++) {
					group[i].checked=false;
				}
			}
			if(isCheck.checked==true){
				var group=document.getElementsByName("checkbox");
				for (var i = 0; i < group.length; i++) {
					group[i].checked=true;
				}
			}
		})
	</script>
  

<div id="modal-background" class=""></div><div id="confirm-modal" class="modal fade role=" dialog"="" tabindex="-1"><div class="modal-dialog modal-undefined"><div class="modal-content"><div class="modal-header"><button id="modal-upper-close" class="close modal-close" aria-label="Close" type="button"><span aria-hidden="true">×</span></button><h4 id="modal-title" class="modal-title">Modal Title</h4></div><div id="modal-body" class="modal-body"> Modal Message </div><div id="modal-footer" class="modal-footer"></div></div></div></div><div id="modal-background" class=""></div></body></html>