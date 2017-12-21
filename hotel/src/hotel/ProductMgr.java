package hotel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class ProductMgr {
	
	
	private DBConnectionMgr pool;
	private static final String UPLOAD = "C:/Jsp/myapp/WebContent/hotel/data/";
	private static final String ENCTYPE = "EUC-KR";
	private static final int MAXSIZE = 10*1024*1024;

	public ProductMgr() {
		pool = DBConnectionMgr.getInstance();
	}
	
	//Product List
	public Vector<ProductBean> getProductList(){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<ProductBean> vlist = new Vector<>();
		try {
			con = pool.getConnection();
			sql = "select * from tblProduct order by no desc";;
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				ProductBean bean = new ProductBean();
				bean.setNo(rs.getInt("no"));
				bean.setName(rs.getString("name"));
				bean.setPrice(rs.getInt("price"));
				bean.setDetail(rs.getString("detail"));
				bean.setImage(rs.getString("image"));
				vlist.addElement(bean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return vlist;
	}
	
	//Product Detail
	public ProductBean getProduct(int no) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		ProductBean bean = new ProductBean();
		try {
			con = pool.getConnection();
			sql = "select * from tblProduct where no=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				bean.setNo(rs.getInt("no"));
				bean.setName(rs.getString("name"));
				bean.setPrice(rs.getInt("price"));
				bean.setDetail(rs.getString("detail"));
				bean.setImage(rs.getString("image"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return bean;
	}
	
	
	////admin mode/////
	
	//Product Insert
	public boolean insertProduct(HttpServletRequest req) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag = false;
		try {
			con = pool.getConnection();
			sql = "insert tblProduct(name,price,detail,image)"
					+ "values(?,?,?,?)";
			MultipartRequest multi = 
					new MultipartRequest(req, UPLOAD, MAXSIZE, 
							ENCTYPE, new DefaultFileRenamePolicy());
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, multi.getParameter("name"));
			pstmt.setInt(2, Integer.parseInt(multi.getParameter("price")));
			pstmt.setString(3, multi.getParameter("detail"));
			if(multi.getFilesystemName("image")==null) {
				pstmt.setString(4, "ready.gif");
			}else {
				pstmt.setString(4, multi.getFilesystemName("image"));
			}
			if(pstmt.executeUpdate()==1)
				flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return flag;
	}
	
	

	
	//Product Update
	public boolean updateProduct(HttpServletRequest req) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag = false;
		try {
			con = pool.getConnection();
			MultipartRequest multi = 
					new MultipartRequest(req, UPLOAD, MAXSIZE, 
							ENCTYPE, new DefaultFileRenamePolicy());
			if(multi.getFilesystemName("image")==null) {
				sql = "update tblProduct set name=?, price=?,"
						+ "detail=?, where no=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, multi.getParameter("name"));
				pstmt.setInt(2, Integer.parseInt(multi.getParameter("price")));
				pstmt.setString(3, multi.getParameter("detail"));
				pstmt.setInt(4, Integer.parseInt(multi.getParameter("no")));
				
				
				

			}else{
				sql = "update tblProduct set name=?,price=?,"
						+ "detail=?,image=? where no=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, multi.getParameter("name"));
				pstmt.setInt(2, Integer.parseInt(multi.getParameter("price")));
				pstmt.setString(3, multi.getParameter("detail"));
				pstmt.setString(4, multi.getFilesystemName("image"));
				pstmt.setInt(5, Integer.parseInt(multi.getParameter("no")));
			}
			if(pstmt.executeUpdate()==1) flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return flag;
	}
	
	//Product Delete
	public boolean deleteProduct(int no) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag = false;
		try {
			con = pool.getConnection();
			sql = "delete from tblProduct where no=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, no);
			if(pstmt.executeUpdate()==1)flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return flag;
	}
	
}
