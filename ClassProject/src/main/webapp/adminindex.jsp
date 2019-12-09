<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>智游教育</title>
</head>
<body >
	<div style="text-align: center;" >
	<form action="${pageContext.request.contextPath }/video" method="post" > 
	账    号:<input type="text" name="username"><br><br>
	密    码:<input type="password" name="password"><br>
	      <input type="submit" value="登录">	
	</form>
    </div>

</body>
</html>