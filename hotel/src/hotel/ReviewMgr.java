package hotel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;


public class ReviewMgr {
	
	private DBConnectionMgr pool;

	public ReviewMgr() {
		pool = DBConnectionMgr.getInstance();
	}
	
	public ReviewBean getReview(int index) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		ReviewBean regBean = new ReviewBean();
		try {
			con = pool.getConnection();
			sql = "select * from review where idx=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, index);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				regBean.setWriter(rs.getString("writer"));
				regBean.setTitle(rs.getString("title"));
				regBean.setContent(rs.getString("content"));
				regBean.setRegdate(rs.getString("regdate"));
				regBean.setStar(rs.getString("star"));
				regBean.setPic(rs.getString("pic"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con);
		}
		return regBean;
	}
	
	public Vector<ReviewBean> getReviewList() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<ReviewBean> vlist = new Vector<>();
		try {
			con = pool.getConnection();
			sql = "select * from review";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				ReviewBean regBean = new ReviewBean();
				regBean.setIdx(rs.getInt("idx"));
				regBean.setWriter(rs.getString("writer"));
				regBean.setTitle(rs.getString("title"));
				regBean.setContent(rs.getString("content"));
				regBean.setRegdate(rs.getString("regdate"));
				regBean.setStar(rs.getString("star"));
				regBean.setPic(rs.getString("pic"));
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

