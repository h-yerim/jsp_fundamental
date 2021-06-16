<!-- template.html -->

<%@ page pageEncoding="utf-8" %>
<%@ include file="../inc/header.jsp" %>

<!doctype html>
  	<!-- breadcrumb start -->
  	<nav aria-label="breadcrumb">
	  <ol class="breadcrumb">
	    <li class="breadcrumb-item"><a href="/index.jsp">홈</a></li>
	    <li class="breadcrumb-item">로그인</li>
	 </ol>
	</nav>
	<!-- breadcrumb end -->
  	
  	<!-- container start -->
	<div class="container">
		<!-- col start -->
		<div class="row">
			<div class="col-md-12">
				<h5 class="card-title">로그인</h5>
	            <form name="f" method="post" action="checkLogin.jsp">
	              <div class="form-group">
	                <input type="text" class="form-control" id="email" name="email" placeholder="Your Email *" value="" />
	              	<div class="invalid-feedback" id="errorEmail">
				       이메일을 입력하세요.
				    </div>
				    <div class="valid-feedback">
				        Looks good!
				    </div>
	              </div>
	              <div class="form-group">
	                <input type="password" class="form-control" id="pwd" name="pwd"  placeholder="Your Password *" value="" />
	              	<div class="invalid-feedback" id="errorPwd">
				    	비밀번호를 입력하세요.
				    </div>
				    <div class="valid-feedback">
				        Looks good!
				    </div>
	              </div>
	              <div class="form-group">
	                <input type="submit" id="loginMember" class="btn btn-primary" value="Login" />
	              	<a href = "" class="btn btn-info" id="test">여기</a>
	              </div>
	              
	            </form>
			</div>
		</div>
		<!-- col end -->
	</div>
	<!-- container end -->
	<script>
		$(function(){
			$('#test').click(function(e){
				e.preventDefault(); //바로 이동하지 않게 막아줌(하이퍼링크 기능막음) 그러기 위해 function에 e를 사용.
				if(confirm('진짜로 이동하시겠습니까?')){
					location.href="http://google.com";
				}
			});
			$('#loginMember').click(function(e){
				e.preventDefault();
				
				f.submit();
			});
		});
	
	</script>

<footer class="text-center text-lg-start bg-light text-muted" style="margin:20px 0 0 0">
    	<div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);">
	    		&copy; 2021 Copyright: youn han sung
	    </div>
  	</footer>
  </body>
 
  
</html>
	




