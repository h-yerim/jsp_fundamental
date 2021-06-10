<!-- template.html -->
<%@ page pageEncoding="utf-8" %>
<%@ include file="../inc/header.jsp" %>
  	<!-- breadcrumb start -->
  	<nav aria-label="breadcrumb">
	  <ol class="breadcrumb">
	    <li class="breadcrumb-item"><a href="datatable.html">Home</a></li>
	    <li class="breadcrumb-item"><a href="#">Library</a></li>
	    <li class="breadcrumb-item active" aria-current="page">Data</li>
	  </ol>
	</nav>
	<!-- breadcrumb end -->
  	
  	<!-- container start -->
	<div class="container">
		<!-- col start -->
		<div class="row">
			<div class="col-md-12">
				<%--table start --%>
				<h5>공지사항 리스트</h5>
				<div class="table-responsive">
				<table class="table table-hover">
				  <thead>
				    <tr>
				      <th scope="col">번호</th>
				      <th scope="col">작성자</th>
				      <th scope="col">제목</th>
				      <th scope="col">날짜</th>
				    </tr>
				  </thead>
				  <tbody>
				    <tr>
				      <th scope="row">1</th>
				      <td>성영한</td>
				      <td><a href="view.jsp">제목1</a></td>
				      <td>2021-06-10</td>
				    </tr>
				    <tr>
				      <th scope="row">2</th>
				      <td>성영한1</td>
				      <td><a href="view.jsp">제목2</a></td>
				      <td>2021-06-11</td>
				    </tr>
				    <tr>
				      <th scope="row">3</th>
				      <td>성영한2</td>
				      <td><a href="view.jsp">제목3</a></td>
				      <td>2021-06-15</td>
				    </tr>
				  </tbody>
				</table>
				<%-- Pagination start --%>
				<nav aria-label="Page navigation example">
				  <ul class="pagination justify-content-center">
				    <li class="page-item disabled">
				      <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
				    </li>
				    <li class="page-item"><a class="page-link" href="#">1</a></li>
				    <li class="page-item"><a class="page-link" href="#">2</a></li>
				    <li class="page-item"><a class="page-link" href="#">3</a></li>
				    <li class="page-item">
				      <a class="page-link" href="#">Next</a>
				    </li>
				  </ul>
				</nav>
				<%-- Pagination end --%>	
				<div class = "text-right">			
					<a class="btn btn-success" href="write.jsp" role="button">글쓰기</a>
				</div>
				</div>
				<%--table end --%>
			</div>
		</div>
		<!-- col end -->
	</div>
	<!-- container end -->
<%@ include file="../inc/footer.jsp" %>
	