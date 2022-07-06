<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<link rel="stylesheet" href="/Misson-Web/resources/css/NewFile.css">
<link rel="stylesheet" href="/Misson-Web/resources/css/animate.css">
<link rel="stylesheet" href="/Misson-Web/resources/css/mdb.min.css">



<!-- Font Awesome -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet"/>
<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet"/>


<!-- JavaScript Bundle with Popper -->
<script src="/Misson-Web/resources/js/wow.min.js"></script>
<script src="/Misson-Web/resources/js/jquery-3.6.0.min.js"></script>


<script>
$( document ).ready(function() {
    new WOW().init()
});



/*이거 resources에 넣어놈.   */
/* 	function isNull(obj,msg){
		if(obj.value==''){
			alert(msg)
			obj.focus()
			return true
		}
		return false
	} */

	function checkForm(){
		
		let f= document.loginForm
		
		//isNull(f.id)	
		//isNull(f.password)
	
		
		//논리연산자 or 써도 되는데 그냥 한번 더 씀 
		if(isNull(f.id,"아이디를 입력하세요")){
			return false
		}
		
		if(isNull(f.password,"패스워드를 입력하세요")){
			return false
			
			
		}
		
		
		
		// 이렇게 묻고 싶음
		
		/*
		
		if(f.id.value==''){
			alert("아이디를 입력하세요")
			f.id.focus()
			return false;
			
		}
		if(f.password==''){
			alert('아이디를 입력하세요')
			f.password.focus()
			return false;
		}
		*/
	
		return true;
		
		
		
	}

</script>
</head>
<body>
   <header>
          <!--Navbar-->
          <nav class="navbar navbar-expand-lg navbar-dark fixed-top scrolling-navbar">
             <a class="navbar-brand fs-1 m-3" href="/Misson-Web"><strong>Home</strong></a>
            <div class="container">
         
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-7" aria-controls="navbarSupportedContent-7" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse d-flex justify-content-center" id="navbarSupportedContent-7">
                <ul class="navbar-nav mr-auto">
                  <c:if test="${userVO.type eq 'S'}">
                  <li class="nav-item active">
                    <a class="nav-link" href="#">회원관리 <span class="sr-only">(current)</span></a>
                  </li>
                  </c:if>
                   <c:choose>
					<c:when test="${ empty userVO }">
                  <li class="nav-item">
                    <a class="nav-link p-1" href="/Misson-Web/jsp/member/JoinForm.jsp">회원가입</a>
                  </li>
                    </c:when>
          			<c:otherwise>  
                   <li class="nav-item">
                    <a class="nav-link" href="/Misson-Web/jsp/board/list.jsp">게시판</a>
                  </li>
                   <li class="nav-item">
                    <a class="nav-link" href="#">마이페이지</a>
                  </li>
                   <li class="nav-item">
                    <a class="nav-link" href="/Misson-Web/jsp/login/logout.jsp">로그아웃</a>
                  </li>
                   
                 </c:otherwise>
         		</c:choose>
                  
                </ul>
                
     
              </div>
            </div>
          </nav>
          <!-- Navbar -->
          <!-- Full Page Intro -->
          <div class="view" style="background-image: url('/Misson-Web/resources/images/life.jpg'); background-repeat: no-repeat; background-size: cover; background-position: center center;">
            <!-- Mask & flexbox options-->
            <div class="mask rgba-black-light d-flex justify-content-center align-items-center">
              <!-- Content -->
              <div class="container">
                <!--Grid row-->
                <div class="row">
                  <!--Grid column-->
                  <div class="col-md-12 mb-4 white-text text-center">
                    <h1 class="h1-reponsive white-text text-uppercase font-weight-bold mb-0 pt-md-5 pt-5 wow fadeInDown" data-wow-delay="0.3s"><strong>광명융합기술원</strong></h1>
                    <hr class="hr-light my-4 wow fadeInDown" data-wow-delay="0.4s">
                    
               
    <form action="loginProcess.jsp" method="post" onsubmit="return checkForm()" name="loginForm" class="d-flex flex-row justify-content-center">


	<div>
	  
    <div class="form-floating">
      <input type="text" class="form-control" id="floatingInput" name="id">

    </div>
   	 <div class="form-floating">
      <input type="password" class="form-control" id="floatingPassword" placeholder="Password" name="password">
    </div>
	</div>
    <div class="checkbox mb-3">
    </div>
    <button class=" btn btn-lg btn-primary" type="submit">Sign in</button>
    <p class="mt-5 mb-3 text-muted">© 2017–2022</p>
  </form>
     <h1 class="h1-reponsive white-text text-uppercase font-weight-bold mb-0 pt-md-5 pt-5 wow fadeInDown" data-wow-delay="0.3s"><strong>Minimalist intro</strong></h1>
                    <hr class="hr-light my-4 wow fadeInDown" data-wow-delay="0.4s">
                    <h5 class="text-uppercase mb-4 white-text wow fadeInDown" data-wow-delay="0.4s"><strong>Photography & design</strong></h5>
                    <a class="btn btn-outline-white wow fadeInDown" data-wow-delay="0.4s">portfolio</a>
                    <a class="btn btn-outline-white wow fadeInDown" data-wow-delay="0.4s">About me</a>
  
                    
                    	
                    
            <!--Grid row-->
              </div>
              <!-- Content -->
            </div>
            <!-- Mask & flexbox options-->
          </div>
          <!-- Full Page Intro -->
        </header>
        <!-- Main navigation -->
        <!--Main Layout-->
        <main>
          <div class="container">
            <!--Grid row-->
            <div class="row py-5">
              <!--Grid column-->
              <div class="col-md-12 text-center">
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>
              </div>
              <!--Grid column-->
            </div>
            <!--Grid row-->
          </div>
        </main>
        <!--Main Layout-->
                    
                    
                    
                    
                  <!--   <a class="btn btn-outline-white wow fadeInDown" data-wow-delay="0.4s">portfolio</a>
                    <a class="btn btn-outline-white wow fadeInDown" data-wow-delay="0.4s">About me</a> -->
                  </div>
                  <!--Grid column-->
                </div>
                <!--Grid row-->
              </div>
              <!-- Content -->
            </div>
            <!-- Mask & flexbox options-->
          </div>
          <!-- Full Page Intro -->
        </header>
        <!-- Main navigation -->
        <!--Main Layout-->
        
        <!--Main Layout-->



 











	<%-- <header>
		<jsp:include page="/jsp/include/topMenu.jsp" />
	</header>
	<section>
		<div align="center">
			<hr>
			<h2>로그인 화면</h2>
			<hr>
			<br>
			<form action="loginProcess.jsp" method="post" onsubmit="return checkForm()" name="loginForm">
				<table style="width:40%">
					<tr>
						<th>ID</th>
						<td><input type="text" name="id"></td>
					</tr>
					<tr>
						<th>PASSWORD</th>
						<td><input type="password" name="password"></td>
					</tr>
					
				
				
				
				</table>
				<input type="submit" value="로그인">
			
			
			
			</form>
			
			
			
		</div>
	</section>
	<footer>
		<%@ include file="/jsp/include/footer.jsp" %>
		footer부분
		<!--include xml forward 에서는 root의 의미는 밑에는 localhost:9999/mission-Web임 상대경로를 못쓰는 이유?  -->
		<!--원래는 localhost:9999임   -->
		
	</footer> --%>
	
	
	
</body>
</html>	
	