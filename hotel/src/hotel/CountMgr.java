package hotel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Locale;
import java.util.Vector;

import net.sf.javainetlocator.InetAddressLocator;
import net.sf.javainetlocator.InetAddressLocatorException;


public class CountMgr {

	private DBConnectionMgr pool;

	public CountMgr() {
		pool = DBConnectionMgr.getInstance();
	}
	
	public void genCount() {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		String ymd[] = {"day","month","year"};
		try {
			con = pool.getConnection();
			for(int j=0;j<3;j++) {
			sql = "INSERT INTO count (total,reserve, year,month,day) " + 
					"VALUES (?,1, DATE_FORMAT(date_add(now(), interval ? "+ymd[j]+"), '%Y'),DATE_FORMAT(date_add(now(), interval ? "+ymd[j]+"), '%Y-%m'),DATE_FORMAT(date_add(now(), interval ? "+ymd[j]+"), '%Y-%m-%d')) " + 
					"ON DUPLICATE KEY UPDATE day=DATE_FORMAT(date_add(now(), interval ? "+ymd[j]+"), '%Y-%m-%d'), total=total+1;";
				for(int i=-10;i<1;i++) {
					pstmt = con.prepareStatement(sql);
					pstmt.setInt(1, (int)(Math.random()*10+1));
					pstmt.setInt(2, i);
					pstmt.setInt(3, i);
					pstmt.setInt(4, i);
					pstmt.setInt(5, i);
					pstmt.executeUpdate();
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con);
		}
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
	public Vector<CountryBean> getCountry() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<CountryBean> vlist = new Vector<CountryBean>();
		try {
			con = pool.getConnection();
			sql = "select * from countrycount";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				CountryBean regBean = new CountryBean();
				regBean.setTotal(rs.getInt("count"));
				regBean.setCountry(rs.getString("country"));
				vlist.add(regBean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con);
		}
		return vlist;
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
	public boolean UpdateTotal(String ip) {
		String Country = "";
		try {
        	Locale locale = InetAddressLocator.getLocale(ip);
     	    Country = locale.getCountry();
     	    if(Country.equals("**")) Country="KR";
	    } catch (InetAddressLocatorException e) {
            e.printStackTrace();
        }
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag = false;
		try {
			con = pool.getConnection();
			sql = "INSERT INTO count (total,reserve, year,month,day) "
					+ "VALUES (1,1, DATE_FORMAT(NOW(), '%Y'),DATE_FORMAT(NOW(), '%Y-%m'),DATE_FORMAT(NOW(), '%Y-%m-%d')) "
					+ "ON DUPLICATE KEY UPDATE day=DATE_FORMAT(NOW(), '%Y-%m-%d'), total=total+1";
			pstmt = con.prepareStatement(sql);
			pstmt.executeUpdate();
			sql = "INSERT INTO countrycount (country,count) VALUES (?,1) "
					+ "ON DUPLICATE KEY UPDATE country=?, count=count+1";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, Country);
			pstmt.setString(2, Country);
			pstmt.executeUpdate();
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

