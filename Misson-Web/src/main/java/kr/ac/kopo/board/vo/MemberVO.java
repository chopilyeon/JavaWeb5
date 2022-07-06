package kr.ac.kopo.board.vo;

public class MemberVO {
	private String id;
	private String name;
	private String password;
	private String email_ID;
	private String email_domain;
	private String tel1;
	private String tel2;
	private String tel3;
	public MemberVO() {
		super();
	}
	private String regDate;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public MemberVO(String name, String email_ID, String email_domain, String tel1, String tel2, String tel3,
			String regDate) {
		super();
		this.name = name;
		this.email_ID = email_ID;
		this.email_domain = email_domain;
		this.tel1 = tel1;
		this.tel2 = tel2;
		this.tel3 = tel3;
		this.regDate = regDate;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail_ID() {
		return email_ID;
	}
	public void setEmail_ID(String email_ID) {
		this.email_ID = email_ID;
	}
	public String getEmail_domain() {
		return email_domain;
	}
	public void setEmail_domain(String email_domain) {
		this.email_domain = email_domain;
	}
	public String getTel1() {
		return tel1;
	}
	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", name=" + name + ", password=" + password + ", email_ID=" + email_ID
				+ ", email_domain=" + email_domain + ", tel1=" + tel1 + ", tel2=" + tel2 + ", tel3=" + tel3
				+ ", regDate=" + regDate + "]";
	}
	public void setTel1(String tel1) {
		this.tel1 = tel1;
	}
	public String getTel2() {
		return tel2;
	}
	public void setTel2(String tel2) {
		this.tel2 = tel2;
	}
	public String getTel3() {
		return tel3;
	}
	public void setTel3(String tel3) {
		this.tel3 = tel3;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

}
