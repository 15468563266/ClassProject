<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- saved from url=(0044)http://localhost:8080/Voids/user/password.do -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <!-- base href="http://localhost:8080/video/" -->
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no">
    
        
<!--<base href="http://localhost:8080/Voids/">--><base href=".">
    <meta name="renderer" content="webkit">
    <meta name="keywords" content="Web前端视频教程,大数据视频教程,HTML5视频教程,UI视频教程,PHP视频教程,java视频教程,python基础教程">
    <meta name="description" content="智游教育在线课程视频,为您提供java,python,HTML5,UI,PHP,大数据等学科经典视频教程在线浏览学习,精细化知识点解析,深入浅出,想学不会都难,智游教育,学习成就梦想！">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/z/base.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/z/profile.css">
    <link rel="icon" href="http://localhost:8080/Voids/static/z/favicon.png" type="image/png">
    <title>在线公开课-智游教育|java|大数据|HTML5|python|UI|PHP视频教程</title>
<!-- 引入jauery -->
<script src="${pageContext.request.contextPath}/jquery/jquery.js"/></script>
<script src="${pageContext.request.contextPath}/jquery/jquery.validate.min.js"></script>
<script src="${pageContext.request.contextPath}/jquery/messages_zh.js"></script>

</head>
<body class="w100">

<header>
	<div class="container top_bar clearfix">
		<img src="${pageContext.request.contextPath}/z/logo.png" alt="智游">
		<div id="tele">
			<span>4006-371-555</span>
			<span>0371-88888598</span>
		</div>
	</div>
	<menu>
		<div class="container clearfix">
			<ul class="clearfix f_left">
				<li><a href="index.jsp">首页</a></li>
				
				<li class="menu_active"><a href="usershow">个人中心</a></li>
			</ul>
			
			<div id="user_bar">
				<a>	
					<img id="avatar" src="${user.imgurl }" alt="" width="30px;" height="35px">
				</a>
				<a href="loginout">退出</a>
			</div>
		</div>
	</menu>
</header>

   <main>
        <div class="container">
            <h2>我的资料</h2>
            <div id="profile_tab">
                <ul class="profile_tab_header f_left clearfix">
                    <li><a href="updateshow">更改资料</a></li>
                    <li class="profile_tab_line">|</li>
                    <li><a href="photoshow">更改头像</a></li>
                    <li class="profile_tab_line">|</li>
                    <li><a href="passwordshow">密码安全</a></li>
                </ul>
                <div class="proflle_tab_body">
                    <div class="proflle_tab_workplace clearfix">
                        <div class="profile_avatar_area">
		                         <img id="avatar" width="200px;" src="${user.imgurl }" alt="">
                        </div>
                        <div class="profile_ifo_area">
                            <form action="passwordUpdate" method="post" onsubmit="return on()" >
                                <div class="form_group">
                                    <span class="dd">旧　密　码：</span>
                                    <input  type="password" id="oldMsg" onblur="check()"><i id="i" style="color: red"></i>
                                </div>
                                <div class="form_group">
                                    <span class="dd">新　密　码：</span>
                                    <input  type="password" id="regPsw">
                                </div>
                                <div class="form_group">
                                    <span class="dd">确认新密码：</span>
                                    <input  type="password" id="regPswAgain" name="password"><span id="passMsg"></span>
                                </div>
                                <div class="form_submit dd">
                                <input type="hidden" name="id" value="${user.id}">
                                    <input value="保　存" type="submit">
                                    <a href="usershow">取消</a>
                                </div>
                            </form>
                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
     <script type="text/javascript">
        var i=false;
        var c=false;
		function check() {
			if(${user.password}==$("#oldMsg").val()){
				i=true;
				$("i").text("");
			} else {
				i=false;
				$("i").text("原密码错误");
			}
			return i;
		}
		$("#regPswAgain").blur(function(){
			
		     var pass01= $("#regPsw").val();
		      var pass02= $("#regPswAgain").val();
		      if(null==pass01 || ""==pass01 || null==pass02 || ""==pass02){
		          $("#passMsg").text("密码不能为空").css("color","red");
		          c =false;
		      }else{
		          if(pass01!=pass02){
		              c=false;
		              $("#passMsg").text("两次密码输入不一致，请重新输入").css("color","red");
		          }else{
		              c=true;
		              $("#passMsg").text("");
		          }
		      }
		   
		});
		function  on(){
			if(i&&c){
				return true;
			}else{
				return false;
			}
		} 
	</script>
<footer>
	<div class="container">
		<ul>
			<li><img src="${pageContext.request.contextPath}/z/footer_logo.png" alt="" id="foot_logo"></li>
			<li>版权所有：智游3G教育　　　©&nbsp;www.zhiyou100.com</li>
			<li><img src="${pageContext.request.contextPath}/z/a.png" alt="" id="wxgzh"></li>
		</ul>
	</div>
</footer>

<script src="${pageContext.request.contextPath}/js/index.js"></script>
</body>
</html>