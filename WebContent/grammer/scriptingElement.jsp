<%@ page pageEncoding = "utf-8" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset = "utf-8">
		<title> scripting element</title>
	</head>
	<body>
		<h1>스크립팅 엘리먼트</h1>
		<%! //어느 위치에 있던 항상 class 안에 들어간다.
			private int age; //인스턴스 변수
			public int getAge(){
				return age;
			}
			public void setAge(){
				this.age = age;
			}
		%>
		<%
			int a = 10; //지역변수
			out.println(a);
		%>
		
		<%= a %>
		 
		<ul>
		<% //ul태그안에 0~10 출력
			for(int i=0; i<10;i++){
				out.println("<li>"+i+"</li>");
			}
		%>
		</ul>
		
		<ul>
		<%for(int i=0; i<10; i++){ %>
			<li><%=i %></li>
		<% } %>
		</ul>
		
		
		
	</body>
</html>
