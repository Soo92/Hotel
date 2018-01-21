package hotel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;


public class MemberMgr {
	
	private DBConnectionMgr pool;
	
	public MemberMgr() {
		pool = DBConnectionMgr.getInstance();
	}
	
	//로그인
	public boolean loginMember(String email, String pass) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		boolean flag = false;
		try {
			con = pool.getConnection();
			sql = "select count(*) from tblhotel "
					+ "where email=? and pass=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, email);
			pstmt.setString(2, pass);
			rs = pstmt.executeQuery();
			if(rs.next()&&rs.getInt(1)==1)
				flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return flag;
	}

	public boolean Checkgrade(String email, String pass) {
		boolean flag = false;
		if(loginMember(email, pass)) {
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = null;
			try {
				con = pool.getConnection();
				sql = "select grade from tblhotel "
						+ "where email=? and pass=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, email);
				pstmt.setString(2, pass);
				rs = pstmt.executeQuery();
				if(rs.next()&&rs.getString(1).equals("admin")) {
					flag = true;
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				pool.freeConnection(con, pstmt, rs);
			}
		}
		return flag;
	}
	
	//Email 중복확인 - true 중복
	public boolean checkId(String email) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		boolean flag = false;
		try {
			con = pool.getConnection();
			sql = "select email from tblhotel where email=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			flag = rs.next();//결과값이 있으면 true 없으면 false
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return flag;
	}
	
	public boolean deleteClient(String id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag = false;
		try {
			con = pool.getConnection();
			sql = "delete from tblhotel where id = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			if(pstmt.executeUpdate()==1)
				flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return flag;
	}
	//회원가입
	public boolean insertMember(MemberBean bean) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag = false;
		try {
			con = pool.getConnection();
			sql = "insert tblhotel(id,pass,email)"
					+ "values(?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getId());
			pstmt.setString(2, bean.getPass());
			pstmt.setString(3, bean.getEmail());
			if(pstmt.executeUpdate()==1)
				flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return flag;
	}
	
	public MemberBean getMember(String email) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		MemberBean regBean = new MemberBean();
		try {
			con = pool.getConnection();
			sql = "select * from tblhotel where email=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				regBean.setId(rs.getString("id"));
				regBean.setPass(rs.getString("pass"));
				regBean.setEmail(rs.getString("email"));
				regBean.setCart(rs.getString("cart"));
				regBean.setGrade(rs.getString("grade"));
				regBean.setPic(rs.getString("pic"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con);
		}
		return regBean;
	}
	
	public boolean initMember() {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		ResultSet rs = null;
		boolean flag = false;
		try {
			con = pool.getConnection();
			sql = "select * from tblhotel";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (!rs.next()) {
				sql = "insert tblhotel(id,pass,email) values('leeseongsu','admin','admin@lss')";
				pstmt = con.prepareStatement(sql);
				if(pstmt.executeUpdate()==1) flag=true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con);
		}
		return flag;
	}
	
	public boolean updateMember(MemberBean bean){
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag = false;
		try {
			con = pool.getConnection();
			sql = "update tblhotel set pass=?,"
					+"grade=? where id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getPass());
			pstmt.setString(2, bean.getGrade());
			pstmt.setString(3, bean.getId());
			if(pstmt.executeUpdate()==1)
				flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return flag;
	}

	public boolean insertCart(CartBean bean) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag = false;
		try {
			con = pool.getConnection();
			sql = "insert cart(roomname,checkin,checkout,people,pay,status)"
					+ "values(?,?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getRoomname());
			pstmt.setString(2, bean.getCheckin());
			pstmt.setString(3, bean.getCheckout());
			pstmt.setString(4, bean.getPeople());
			pstmt.setString(5, bean.getPay());
			if(bean.getStatus()==null)	pstmt.setString(6, "cart");
			else	pstmt.setString(6, bean.getStatus());
			if(pstmt.executeUpdate()==1) {
				flag = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return flag;
	}
	public boolean deleteCart(int num) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag = false;
		try {
			con = pool.getConnection();
			sql = "delete from cart where num = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			if(pstmt.executeUpdate()==1) {
				flag = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return flag;
	}
	public boolean updateCart(CartBean bean,String Status) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag = false;
		try {
			con = pool.getConnection();
			if(!Status.equals("memo"))
				sql = "update cart set roomname=?,checkin=date_format(?,'%m/%d/%Y'),checkout=date_format(?,'%m/%d/%Y'),people=?,pay=?,status=?"
						+ "where num=?";
			else
				sql = "update cart set roomname=?,checkin=date_format(STR_TO_DATE(?,'%m/%d/%Y %H:%i'),\"%m/%d/%Y %H:%i\"),checkout=date_format(STR_TO_DATE(?,'%m/%d/%Y %H:%i'),\"%m/%d/%Y %H:%i\"),people=?,pay=?,status=?"
						+ "where num=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getRoomname());
			pstmt.setString(2, bean.getCheckin());
			pstmt.setString(3, bean.getCheckout());
			pstmt.setString(4, bean.getPeople());
			pstmt.setString(5, bean.getPay());
			pstmt.setString(6, bean.getStatus());
			pstmt.setInt(7, bean.getNum());
			if(pstmt.executeUpdate()==1) {
				flag = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return flag;
	}
	public Vector<CartBean> getCartList(String id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<CartBean> vlist = new Vector<>();
		try {
			con = pool.getConnection();
			sql = "select * from cart where status<>'memo' or (status='memo' and people=?) order by checkin";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				CartBean regBean = new CartBean();
				regBean.setNum(rs.getInt("num"));
				regBean.setRoomname(rs.getString("roomname"));
				regBean.setCheckin(rs.getString("checkin"));
				regBean.setCheckout(rs.getString("checkout"));
				regBean.setPeople(rs.getString("people"));
				regBean.setPay(rs.getString("pay"));
				regBean.setStatus(rs.getString("status"));
				vlist.addElement(regBean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con);
		}
		return vlist;
	}	
	public CartBean getCart(int num) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		CartBean regBean = new CartBean();
		try {
			con = pool.getConnection();
			sql = "select * from cart where num=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				regBean.setNum(rs.getInt("num"));
				regBean.setRoomname(rs.getString("roomname"));
				regBean.setCheckin(rs.getString("checkin"));
				regBean.setCheckout(rs.getString("checkout"));
				regBean.setPeople(rs.getString("people"));
				regBean.setPay(rs.getString("pay"));
				regBean.setStatus(rs.getString("status"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con);
		}
		return regBean;
	}
	
	public int getCartNum(CartBean bean) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		try {
			con = pool.getConnection();
			sql = "select num from cart where roomname=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getRoomname());
			rs = pstmt.executeQuery();
			if (rs.next()) {
				bean.setNum(rs.getInt("num"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con);
		}
		return bean.getNum();		
	}
		
	public boolean updateMemberCart(String email,int cartnum){
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag = false;
		try {
			con = pool.getConnection();
			sql = "update tblhotel set cart=? where email=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, getMember(email).getCart()+","+cartnum);
			pstmt.setString(2, email);
			if(pstmt.executeUpdate()==1)
				flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return flag;
	}
	public boolean updateProfile(MemberBean bean) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null; 
		boolean flag = false;
		try {
			con = pool.getConnection();
			sql = "update tblHotel set id=?,pass=? where email=?" ;
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getId());
			pstmt.setString(2, bean.getPass());
			pstmt.setString(3, bean.getEmail());
			
			int count = pstmt.executeUpdate();
			if (count > 0)
				flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return flag;
	}
	
	public void sendAccount(String email,String name,String message) {
		String title = name+" 문의 내역";
		String content = "email : " + email + ", " + "name : " + name
				+"\ncontent : " + message;
		Gmail_Mail.send(title, content, email);
	}
	public void Mailing(String title,String content,String email) {
		System.out.println(content);
		Gmail_Mail.send(title, content, email);
	}
}
