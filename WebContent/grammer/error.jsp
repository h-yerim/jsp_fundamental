<%@ page pageEncoding = "utf-8" %>
<%@ page isErrorPage = "true" %>
<%-- 얘는 바로 접근하면 객체가 생성되지 않는다. error가 나야만 띄워주는 페이지. --%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset = "utf-8">
		<title> Error page</title>
	</head>
	<body>
		<h1> 에러 페이지 입니다.</h1>
		<%= exception.getMessage() %>
	
	</body>
</html>
