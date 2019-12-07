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
			<a class="navbar-brand">课程管理系统</a>
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
	          <h2>课程管理</h2>
	  </div>
	</div>
	
	<form action="http://localhost:8080/Voids/Course/deleteall.do">
	<div class="container">
    	<button onclick="showAddPage()" type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		      添加
		</button>
		<button onclick="deleteAll()" type="submit" id="btn" class="btn btn-info dropdown-toggle">
		      批量删除
		</button>
	</div>
	
	<div class="container" style="margin-top: 20px;">
		
		<table class="table table-bordered table-hover" style="text-align: center;table-layout:fixed;">
      <thead>
        <tr class="active">
          <th><input type="checkbox" id="all"></th>
          <th>序号</th>
          <th style="width:16%">主题</th>
          <th style="width:60%">介绍</th>
          <td>科目</td>
          <th>编辑</th>
          <th>删除</th>
        </tr>
      </thead>
      
      
      	<tbody>
  		<c:forEach items="${list}" var="i">
		<tr>
		<td><input type="checkbox" ></td>
		<td>${i.id}</td>
		<td>${i.course_title}</td>
		<td>${i.course_desc}</td>
		<td>${i.subject_id}</td>
		<td><a href="selectById2?id=${i.id}">✎</a></td>
		<td><a href="delete2?id=${i.id}">X</a></td>	
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
			<a href="course?page=${i}">${i}</a>
		</c:forEach>
        </tbody>
     	</table>
    
	</div>
	  </form>
		
	


	<script type="text/javascript">
		function showAddPage(){
			location.href="course/add.jsp";
		}
		function delCourseById(Obj,id,title){

			Confirm.show('温馨提示：', '确定要删除'+title+'么？', {
				'Delete': {
					'primary': true,
					'callback': function() {
						var param={"id":id};
						$.post("admin/course/delCourse.action",param,function(data){
							if(data=='success'){
								Confirm.show('温馨提示：', '删除成功');
								$(Obj).parent().parent().remove();
							}else{
								Confirm.show('温馨提示：', '操作失败');
							}
						});
					}
				}
			});
		}
	</script>
  

<div id="modal-background" class=""></div><div id="confirm-modal" class="modal fade role=" dialog"="" tabindex="-1"><div class="modal-dialog modal-undefined"><div class="modal-content"><div class="modal-header"><button id="modal-upper-close" class="close modal-close" aria-label="Close" type="button"><span aria-hidden="true">×</span></button><h4 id="modal-title" class="modal-title">Modal Title</h4></div><div id="modal-body" class="modal-body"> Modal Message </div><div id="modal-footer" class="modal-footer"></div></div></div></div><div id="modal-background" class=""></div></body></html>