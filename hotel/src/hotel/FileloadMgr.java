package hotel;

import java.io.File;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class FileloadMgr {
	
	String saveFolder = "C:/images/review/";
	public static final String encType = "EUC-KR";
	public static final int maxSize = 5*1024*1024;//5MB
	
	private DBConnectionMgr pool;
	
	public FileloadMgr() {
		pool = DBConnectionMgr.getInstance();
	}
	
	//파일업로드
	public boolean fileUpload(HttpServletRequest req) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag = false;
		String filename = null;
		try {
			saveFolder = req.getServletContext().getRealPath("/images/review/");
			File dir = new File(saveFolder);
			if(!dir.exists())
				dir.mkdirs();//폴더가 없으면 생성
			MultipartRequest multi = 
					new MultipartRequest(req, saveFolder,maxSize,
							encType, new DefaultFileRenamePolicy());
			if(multi.getFilesystemName("pic")!=null) {
				filename = multi.getFilesystemName("pic");
			}
			con = pool.getConnection();
			sql = "insert review(writer,title,content,regdate,star,pic) values(?,?,?,DATE_FORMAT(NOW(),\"%Y.%m.%d.\"),?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, multi.getParameter("writer"));
			pstmt.setString(2, multi.getParameter("title"));
			pstmt.setString(3, multi.getParameter("content"));
			pstmt.setString(4, multi.getParameter("star"));
			pstmt.setString(5, filename);
			if(pstmt.executeUpdate()==1)
				flag =true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return flag;
	}
	
	//리스트
	public Vector<ReviewBean> fileList(){
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
			while(rs.next()){
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
	
	//삭제
	public void fileDelete(int num[]) {//1 3 5
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		try {
			con = pool.getConnection();
			for (int i = 0; i < num.length; i++) {
				sql = "select file from review where num=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, num[i]);
				rs = pstmt.executeQuery();
				if(!rs.next())
					continue;
				String file = rs.getString(1);
				File f = new File(saveFolder+file);
				if(f.exists())
					f.delete();
				sql = "delete from review where num=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, num[i]);
				pstmt.executeUpdate();
			}//for
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
	}
}
