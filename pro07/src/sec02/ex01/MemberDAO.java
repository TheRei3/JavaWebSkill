package sec02.ex01;

import java.beans.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {
	protected Connection con ;
//	private String driver = "oracle.jdbc.driver.OracleDriver";
//	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
//	private String user = "proman";
//	private String pwd = "oracle";
	private PreparedStatement pstmt ;
	private DataSource dataFactory;
	
	public MemberDAO() {
		try {
			Context ctx = new InitialContext();
			Context envContext = (Context) ctx.lookup("java:/comp/env");
			dataFactory = (DataSource) envContext.lookup("jdbc/oracle");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public List listMembers() {
		List list = new ArrayList();
		try {
			//connDB();
			con = dataFactory.getConnection();
			String query = " select * from t_member";
			System.out.println("prepareStatement"+query);
			pstmt = con.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String id = rs.getString("id");
				String pwd = rs.getString("pwd");
				String name = rs.getString("name");
				String email = rs.getString("email");
				String joinDate = rs.getString("joinDate");
				MemberVO vo = new MemberVO();
				vo.setId(id);
				vo.setPwd(pwd);
				vo.setName(name);
				vo.setEmail(email);
				vo.setJoinDate(joinDate);
				list.add(vo);
			}  // while
			rs.close();
			pstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}


	public void addMember(MemberVO vo) {
		try {
			Connection conn = dataFactory.getConnection();
			MemberVO memberVO = new MemberVO();
			String id = memberVO.getId();
			String pwd = memberVO.getPwd();
			String name = memberVO.getName();
			String email = memberVO.getEmail();
			
			String query = " insert into t_member";
			query += " (id,pwd,name,email)" ;
			query += " values(?,?,?,?)" ;
			System.out.println(query);
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			pstmt.setString(3, name);
			pstmt.setString(4, email);
			pstmt.executeUpdate();
			pstmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}


	public void delMember(String id) {
		try {
			Connection conn = dataFactory.getConnection();
			Statement stmt = conn.createStatement();
			
			String query = " delete from t_member";
			query += " where id = ?" ;
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}


}
