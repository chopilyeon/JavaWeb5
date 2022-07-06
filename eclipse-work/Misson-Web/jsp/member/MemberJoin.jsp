<%@page import="kr.ac.kopo.board.dao.MemberDAO"%>
<%@page import="kr.ac.kopo.board.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
 
 
 <% 
 
 request.setCharacterEncoding("utf-8");
 
  String id=request.getParameter("id");
  String name=request.getParameter("name");
  String password=request.getParameter("password");
  String email_id=request.getParameter("email_id");
  String email_domain=request.getParameter("email_domain");
  String tel1=request.getParameter("tel1");
  String tel2=request.getParameter("tel2");
  String tel3=request.getParameter("tel3");
	
  MemberVO member=new MemberVO();
  member.setId(id);
  member.setName(name);
  member.setPassword(password);
  member.setEmail_ID(email_id);
  member.setEmail_domain(email_domain);
  member.setTel1(tel1);
  member.setTel2(tel2);
  member.setTel3(tel3);
  
  MemberDAO dao=new MemberDAO();
  
  
  
  dao.insertMember(member);
  
  %>  
    
    
    
    
<script>
	alert('회원가입을 완료하였습니다')
	location.href="../board/list.jsp" 
</script>
    
    
    
    
    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


</head>
<body>















</body>
</html>