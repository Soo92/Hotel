package hotel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


public class AllTableMgr {

	private DBConnectionMgr pool;
	
	public AllTableMgr() {
		pool = DBConnectionMgr.getInstance();
	}

	public ArrayList<String> findTable() {
		ArrayList<String> table = new ArrayList<String>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		try {
			con = pool.getConnection();
			sql = "show tables";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				table.add(rs.getString("Tables_in_hotel"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return table;
	}
	
	public ArrayList<String> GetColumn(String tablename) {
		ArrayList<String> column = new ArrayList<String>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		try {
			con = pool.getConnection();
			sql = "show full COLUMNS from "+tablename;
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				column.add(rs.getString("Field"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return column;
	}
	
	public ArrayList<ArrayList<String>> GetFullContent(String tablename,ArrayList<String> Column) {
		ArrayList<ArrayList<String>> contentgroup = new ArrayList<ArrayList<String>>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		try {
			con = pool.getConnection();
			sql = "select * from "+tablename;
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				ArrayList<String> content = new ArrayList<String>();
				for(int i=0;i<Column.size();i++) {
					content.add(rs.getString(Column.get(i)));
				}
				contentgroup.add(content);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return contentgroup;
	}
}
