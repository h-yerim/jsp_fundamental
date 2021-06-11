<%@page import="culture.CultureDto2"%>
<%@page import="java.util.ArrayList"%>
<%@page import ="culture.CultureDao2"%>

<%@ page pageEncoding="utf-8"%>
<%@ include file="../inc/header2.jsp"%>


<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src ="../js/jquery-3.6.0.js"></script>
    
    <%
    	CultureDao2 dao = CultureDao2.getInstance();
    	ArrayList<CultureDto2> list = dao.select(0,32);
    %>
    
    <table class="table-responsive">
     <colgroup>
     	<col width="10%">
     	<col width="20%">
     	<col width="20%">
     	<col width="50%">
     </colgroup>
    <thead>
    	<tr>
    		<th scope="col">건축연도</th>
    		<th scope="col">구분</th>
    		<th scope="col">이름</th>
    		<th scope="col">위치</th>
    	</tr>
    </thead>
    <tbody>
    <%
    	if(list.size()!=0){
    		for(CultureDto2 dto: list){
    %>
     <tr>
      <td><%=dto.getYear() %></td>
      <td><%=dto.getKind() %></td>
      <td><%=dto.getName() %></td>
      <td><%=dto.getLoc() %></td>
	 </tr>
	 <%
    		}
    	}else{
	 %>
	 <tr>
	 	<td colspan='4'>데이터가 존재하지 않습니다.</td>
      </tr>
      <%} %>
    </tbody>
    

    </table>   
    
    
<style>
   
    table{
        width: 100%;
        border-collapse: collapse;
        border-top: 2px solid black;
        /*세로선까지 주고싶으면 border-top 을 border로 th,td 에도 border-bottom을 border로 바꾸면 됨*/
    }
    th,td{
        border-bottom: 1px solid black;
        padding: 3px;
    }

    th{
        background-color: powderblue;
        text-align: center;
    }

    td{
        text-align: center;
    }
</style>
</head>
<body>

</body>
</html>

<%@ include file="../inc/footer2.jsp"%>