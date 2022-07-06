package kr.ac.kopo.board.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import kr.ac.kopo.board.vo.BoardVO;
import kr.ac.kopo.board.vo.MemberVO;
import kr.ac.kopo.util.ConnectionFactory;
import kr.ac.kopo.util.JDBCClose;

public class MemberDAO {
	public MemberVO selectByInformation(String id,String password) {
	
		StringBuilder sql = new StringBuilder();
		sql.append("select NAME,EMAIL_ID,EMAIL_DOMAIN,TEL1,TEL2,TEL3 ");
		sql.append(" ,to_char(reg_date,'yyyy-mm-dd') reg_date ");
		sql.append(" from T_MEMBER ");
		sql.append(" where ID=? AND PASSWORD=?");
		
		
		
		
		try(
				// 여기에 객체를 만들수가 있음. -> 이 객체의 목적은 close를 위함임. 반드시 auto closerable 인터페이스를 상속받은 놈만 만들 수가 있음
				Connection conn=new ConnectionFactory().getConnection();// connection은 auto closerable을 상속받기 때문임! 
				PreparedStatement pstmt = conn.prepareStatement(sql.toString());//이것도 auto closerable을 상속받고 있음 이거만 쓰면 자동으로 연결을 해지하더라~! 1.7버전에서 나왔음 그전에는 1.7버전으로 개발 안할수도 있으니 안알려줬음 
		){
			
			pstmt.setString(1, id);
			pstmt.setString(2,password);
			ResultSet rs = pstmt.executeQuery(); //최대 1개 혹은 0개임 
			if(rs.next()) {
				
				String name= rs.getString("NAME");
				String email_id=rs.getString("EMAIL_ID");
				String email_domain=rs.getString("EMAIL_DOMAIN");
				String tel1 = rs.getString("TEL1");
				String tel2 = rs.getString("TEL2");
				String tel3 = rs.getString("TEL3");
				String regDate=rs.getString("reg_date");
				
				
				
				MemberVO board =new MemberVO(name,email_id,email_domain,tel1,tel2,tel3,regDate);
				return board;
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		return null;
		
		
	}
	
	public void insertMember(MemberVO member) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		
		
	
		try {
			 conn = new ConnectionFactory().getConnection();
			 StringBuilder sql = new StringBuilder();
				sql.append("insert into t_member(id,name,password,email_id,email_domain,tel1,tel2,tel3) ");
				sql.append(" values(?,?,?,?,?,?,?,?) ");
				pstmt = conn.prepareStatement(sql.toString());
				pstmt.setString(1, member.getId());
				pstmt.setString(2, member.getName());
				pstmt.setString(3, member.getPassword());
				pstmt.setString(4, member.getEmail_ID());
				pstmt.setString(5, member.getEmail_domain());
				pstmt.setString(6, member.getTel1());
				pstmt.setString(7, member.getTel2());
				pstmt.setString(8, member.getTel3());
				
				
				 pstmt.executeUpdate();
		
		
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			JDBCClose.close(pstmt, conn);
		
	
		}
	
	
	
	
	
	
	
	}
}
	