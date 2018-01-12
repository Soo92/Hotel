package hotel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Vector;


public class CountMgr {
	
	private DBConnectionMgr pool;

	public CountMgr() {
		pool = DBConnectionMgr.getInstance();
	}
	
	public CountBean getCount() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		CountBean regBean = new CountBean();
		try {
			con = pool.getConnection();
			sql = "select sum(total),sum(reserve) from count";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				regBean.setTotal(rs.getInt("sum(total)"));
				regBean.setReserve(rs.getInt("sum(reserve)"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con);
		}
		return regBean;
	}
	public CountBean getCount(String Filtering,String Date) { //yyyy-mm-dd yyyy-mm yyyy
		CountBean regBean = new CountBean();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		try {
			con = pool.getConnection();
			sql = "select sum(total),sum(reserve) from count where "+Filtering+"=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, Date);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				regBean.setTotal(rs.getInt("sum(total)"));
				regBean.setReserve(rs.getInt("sum(reserve)"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con);
		}
		return regBean;
	}
	public Vector<CountBean> getCount(String Sorting,int gap) {
		Vector<CountBean> vlist = new Vector<CountBean>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		try {
			con = pool.getConnection();
				sql = "select sum(total),sum(reserve) from count where day >= date_add(now(), interval ? "+Sorting+") group by "+Sorting;
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, -gap);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				CountBean regBean = new CountBean();
				regBean.setTotal(rs.getInt("sum(total)"));
				regBean.setReserve(rs.getInt("sum(reserve)"));
				vlist.add(regBean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con);
		}
		return vlist;
	}		
	public boolean UpdateTotal() {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag = false;
		try {
			con = pool.getConnection();
			sql = "INSERT INTO count (total,reseve, year,month,day) "
					+ "VALUES (1,1, DATE_FORMAT(NOW(), '%Y'),DATE_FORMAT(NOW(), '%Y-%m'),DATE_FORMAT(NOW(), '%Y-%m-%d')) "
					+ "ON DUPLICATE KEY UPDATE day=DATE_FORMAT(NOW(), '%Y-%m-%d'), total=total+1";
			pstmt = con.prepareStatement(sql);
			if(pstmt.executeUpdate()==1)
				flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return flag;
	}

	public boolean UpdateReserve() {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag = false;
		try {
			con = pool.getConnection();
			sql = "INSERT INTO count (total,reserve, year,month,day) "
					+ "VALUES (1,1, DATE_FORMAT(NOW(), '%Y'),DATE_FORMAT(NOW(), '%Y-%m'),DATE_FORMAT(NOW(), '%Y-%m-%d')) "
					+ "ON DUPLICATE KEY UPDATE day=DATE_FORMAT(NOW(), '%Y-%m-%d'), reserve=reserve+1";
			pstmt = con.prepareStatement(sql);
			if(pstmt.executeUpdate()==1)
				flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return flag;
	}
}

