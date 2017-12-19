package hotel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class RoomMgr {
	
	private DBConnectionMgr pool;
	
	public RoomMgr() {
		pool = DBConnectionMgr.getInstance();
	}

	public RoomBean getRoom(int index) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		RoomBean regBean = new RoomBean();
		System.out.println(":a");
		try {
			System.out.println(":d");
			con = pool.getConnection();
			System.out.println(":c");
			sql = "select * from hoteldetail where idx=?";
			System.out.println(":b");
			pstmt = con.prepareStatement(sql);
			System.out.println(":b");
			pstmt.setInt(1, index);
			System.out.println(":b");
			rs = pstmt.executeQuery();
			if (rs.next()) {
				regBean.setRoomname(rs.getString("roomname"));
				regBean.setMainpic(rs.getString("mainpic"));
				regBean.setSubpic(rs.getString("subpic"));
				regBean.setPrice(rs.getInt("price"));
				System.out.println(regBean.getMainpic());
			}
			System.out.println(":b");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con);
		}
		return regBean;
	}
}

