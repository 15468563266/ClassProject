<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="update">
		标题：<input type="text" value="${video.title}" name="title">
		简介：<input type="text" value="${video.detail}" name="detail"><br>
		讲师：<input type="text" value="${video.speaker_id}" name="speaker_id"><br>
		时长：<input type="text" value="${video.time}" name="time"><br>
		播放次数:<input type="text" value="${video.play_num}" name="play_num"><br>	
			<input type="hidden" value="${video.video_id}" name="video_id"> 
			<input type="submit" value="提交">
	</form>
</body>
</html>