<%
	session.invalidate(); //session 날라감
	//session.setAttribute("login",null); //다른방법 session안날리고 dto객체대신 null로 변경, 근데 얘할거면 session에 있는 모든값 변경해줘야..
	response.sendRedirect("/member/login.jsp");
%>