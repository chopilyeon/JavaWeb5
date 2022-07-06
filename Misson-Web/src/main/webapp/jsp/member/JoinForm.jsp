<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Batang:wght@700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="/Misson-Web/resources/css/font.css">
<link rel="stylesheet" href="/Misson-Web/resources/css/layout.css"> 

<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>




<script>


function checkForm(){
	
	let f = document.writeForm
	if(f.id.value==''){
		alert('id를 입력하세요')

		/*focus 함수 때문에 마우스에 커서가 가 있음 */
		return false
	}
	
	if(f.name.value==''){
		alert('이름을 입력하세요')
	
		return false
	}
	if(f.password.value==''){
		alert('비밀번호를 입력하세요')
		
		return false
	}
	
	if(f.email_id.value==''){
		alert('이메일을 입력하세요')
	
		return false
	}
	if(f.email_domain.value==''){
		alert('이메일을 입력하세요')

		return false
	}
	if(f.tel1.value==''||f.tel1.value.toString().length!=3){
		alert('전화번호를 입력하세요')
	
		return false
	}
	if(f.tel2.value==''||f.tel2.value.length!=4){
		alert('전화번호를 입력하세요')
	
		return false
	}
	if(f.tel3.value==''||f.tel3.value.toString().length!=4){
		alert('전화번호를 입력하세요')

		return false
	}
	
	return true;
}	


	
document.addEventListener("DOMContentLoaded",()=>{
	document.getElementById("click").click();
	document.getElementById("click").style.display = 'none';
	
	const btn1 = document.getElementById("close1");
	const btn2 = document.getElementById("close2");
	btn1.addEventListener("click",()=>{
		document.getElementById("click").style.display = '';
	});
	

	btn2.addEventListener("click",()=>{
		document.getElementById("click").style.display = '';
	});
	
	
	
	
});



</script>



</head>
<body>
	<header>
		<jsp:include page="/jsp/include/topMenu.jsp" />
	</header>
<section>

<!-- Button trigger modal -->
<div class="d-flex justify-content-center">
	<button type="button" class="btn btn-primary " data-bs-toggle="modal" data-bs-target="#exampleModal" id="click">
  		회원가입
	</button>
</div>
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">회원가입</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" id="close1"></button>
      </div>
      <div class="modal-body">
     	<form action="MemberJoin.jsp" method="get" name="writeForm" onsubmit="return checkForm()">
			아이디 <input type="text" name="id" size=20 placeholder="id를 입력해주세요" class="form-control"><br>
			이름<input type="text" name="name" size=20 placeholder="이름을 입력해주세요" class="form-control"><br>
			비밀번호<input type="password" name="password" size=20 placeholder="비밀번호를 입력해주세요" class="form-control"><br>
			이메일
			<input type="text" name="email_id" size=40 placeholder="이메일을 입력해주세요" class="form-control">@
			<input type="text" name="email_domain" size=40 placeholder="domain을 입력해주세요" class="form-control"><br>
			<div class="row g-3">
				<div>
					휴대폰번호
				</div>
  				<div class="col-sm">
   				     <input type="text" class="form-control" placeholder="010" aria-label="City" name="tel1">
  				</div>
  				<div class="col-sm">
   					 <input type="text" class="form-control" placeholder="1111" aria-label="State" name="tel2">
  				</div>
  				<div class="col-sm">
    				<input type="text" class="form-control" placeholder="2222" aria-label="Zip" name="tel3">
  				</div>
			</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" id="close2">Close</button>
        <button type="submit" class="btn btn-primary">회원가입</button>
      </div>
    </div>
  </div>
</div>
</form>
















<!-- 
<div align="center">
		<hr>
		<h2>회원 가입</h2>
		</hr>
		<br>
	<form action="MemberJoin.jsp" method="get" name="writeForm" onsubmit="return checkForm()">
		아이디 <input type="text" name="id" size=20 placeholder="id를 입력해주세요"><br>
		이름<input type="text" name="name" size=20 placeholder="이름을 입력해주세요"><br>
		비밀번호<input type="password" name="password" size=20 placeholder="비밀번호를 입력해주세요"><br>
		이메일
		<input type="text" name="email_id" size=40 placeholder="이메일을 입력해주세요">@
		<input type="text" name="email_domain" size=40 placeholder="domain을 입력해주세요"><br>
		전화번호
		<input type="text" name="tel1" size=10>
		<input type="text" name="tel2" size=10>
		<input type="text" name="tel3" size=10><br>
		<input type="submit" value="회원가입">
	</form> -->
</section>
	<footer>
		<%@ include file="/jsp/include/footer.jsp"%>
		<!-- footer부분 -->
		<!--include xml forward 에서는 root의 의미는 밑에는 localhost:9999/mission-Web임 상대경로를 못쓰는 이유?  -->
		<!--원래는 localhost:9999임   -->

	</footer>

</body>
</html> 