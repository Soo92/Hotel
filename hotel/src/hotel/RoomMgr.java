package hotel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;


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
		try {
			con = pool.getConnection();
			sql = "select * from hoteldetail where idx=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, index);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				regBean.setIdx(rs.getInt("idx"));
				regBean.setRoomname(rs.getString("roomname"));
				regBean.setMainpic(rs.getString("mainpic"));
				regBean.setContent(rs.getString("content"));
				regBean.setPrice(rs.getString("price"));
				regBean.setSubpic(rs.getString("subpic"));
				regBean.setSubcont1(rs.getString("subcont1"));
				regBean.setSubcont2(rs.getString("subcont2"));
				regBean.setSubcont3(rs.getString("subcont3"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con);
		}
		return regBean;
	}
	
	public RoomBean getpic(String roomname) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		RoomBean regBean = new RoomBean();
		try {
			con = pool.getConnection();
			sql = "select * from hoteldetail where price=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, roomname);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				regBean.setIdx(rs.getInt("idx"));
				regBean.setRoomname(rs.getString("roomname"));
				regBean.setMainpic(rs.getString("mainpic"));
				regBean.setContent(rs.getString("content"));
				regBean.setPrice(rs.getString("price"));
				regBean.setSubpic(rs.getString("subpic"));
				regBean.setSubcont1(rs.getString("subcont1"));
				regBean.setSubcont2(rs.getString("subcont2"));
				regBean.setSubcont3(rs.getString("subcont3"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con);
		}
		return regBean;
	}

	
	public Vector<RoomBean> getMemberList() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<RoomBean> vlist = new Vector<>();
		try {
			con = pool.getConnection();
			sql = "select * from hoteldetail";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				RoomBean regBean = new RoomBean();
				regBean.setIdx(rs.getInt("idx"));
				regBean.setRoomname(rs.getString("roomname"));
				regBean.setMainpic(rs.getString("mainpic"));
				regBean.setContent(rs.getString("content"));
				regBean.setPrice(rs.getString("price"));
				regBean.setSubpic(rs.getString("subpic"));
				regBean.setSubcont1(rs.getString("subcont1"));
				regBean.setSubcont2(rs.getString("subcont2"));
				regBean.setSubcont3(rs.getString("subcont3"));
				vlist.addElement(regBean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return vlist;
	}
}

