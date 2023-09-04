package JSPWebProject;

import common.JDBConnect;
import jakarta.servlet.ServletContext;

public class MemberDAO extends JDBConnect {

	// DB연결을 위한 인수생성자 정의
	public MemberDAO(ServletContext app) {
		super(app);
	}
	
	// 회원정보 입력을 위한 메서드 정의
	public int memberInsert(MemberDTO dto) {
		int result = 0;
		String query = "IMSERT INTO sua_member VALUES ("
					+ "   ?,?,?,?,?,?,"
					+ "   ?,?,?,?)";
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPass());
			psmt.setString(3, dto.getName());
			psmt.setString(4, dto.getTelephon());
			psmt.setString(5, dto.getMobile());
			psmt.setString(7, dto.getEmail());
			psmt.setString(8, dto.getMailing());
			psmt.setString(9, dto.getZipcode());
			psmt.setString(10, dto.getAddr1());
			psmt.setString(11, dto.getAddr2());
			result = psmt.executeUpdate();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return result;
		
	}
	
	// 아이디 중복확인하기
	public boolean idOverlap(String id) {
		boolean retValue = true;
		
		String sql = "SELECT COUNT(*_ FROM sua_mamber WHERE id=?";
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			rs.next();
			int result = rs.getInt(1);
			if(result==1)
				retValue = false;
		}
		catch (Exception e) {
			e.printStackTrace();
			
		}
		return retValue;
	}
	
	
	
	
	
}
