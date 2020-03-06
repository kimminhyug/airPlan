package airPlan;

import java.sql.*;
import java.util.*;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import airPlan.airPlanBean;
import airPlan.selectTicket.selectTicket;
import airPlan.selectTicket.selectTicketDataBean;

//�뜝�럥援▼뜝�럩逾у뜝�럩逾좂뵓怨ㅼ삕 �뜝�럥�뿼�뇦猿볦삕
public class Register {
	
    private static Register instance = new Register();
    //.jsp占쎈쐻占쎈윥占쎌뱻占쎈쐻占쎈윪�얠쥉異�占쎌돸占쎌굲占쎈쐻占쎈윥占쎈군占쎈쐻占쎈윞占쎈쭓 DB占쎈쐻占쎈윥占쎈옘占쎈쐻占쎈윥筌욎���삕占쎌몡�뜝�럥�맆�뜝�럥�뜲 BoardDBBean占쎈쐻占쎈윞繹먯궍�쐻占쎈윪占쎄데占쎈쐻占쎈윥獒뺤쉩�쐻占쎈윪甕곤옙 癲ル슢�닪占쎈씔�뜝�럡�떖占쎈쐻占쎈윥�뤃�뼹�쐻占쎈윥占쎈군 占쎈쐻占쎈윪占쎌젞占쎌쐺獄�占쏙옙�땾�뜝�럥六� 占쎈쐻占쎈윥占쎈떋占쎈쐻占쎈윪占쎈��
    public static Register getInstance() {
        return instance;
    }
    
    private Register() {}
    
    //�뜝�럥�뒗占쎄콪占쎈빝筌믩끃�굲�뜝�뜦�뙔占쎌굲占쎈쐻占쎈쑞占쎈퓠�뜝�럥痢딉옙�쐻占쎈짗占쎌굲占쎈빝�뜝占� Connection占쎈쨬占쎈즵�뜮�꼯�쇊占쎈츃筌뤿떣�쐻�뜝占� 占쎈쐻占쎈윥占쎄숱占쎈쐻占쎈윥占쎄퐨占쎈쐻占쎈윞占쎈룱
    private Connection getConnection() throws Exception {
        Context initCtx = new InitialContext();
        Context envCtx = (Context) initCtx.lookup("java:comp/env");
        DataSource ds = (DataSource)envCtx.lookup("jdbc/airPlan");
        return ds.getConnection();
    }

 //�뜝�럥�닡�뜝�럩逾졾뜝�럥�꺏嶺뚢돦堉먪뵳占�
   public String SelectId(airPlanBean regBean) {
      Connection conn = null;
      PreparedStatement pstmt = null;
      ResultSet rs = null;

      try {
    	 conn = getConnection();
         String sql = "select UserId from User where UserName=? and Birthday=? and UserPhone=?";
         pstmt = conn.prepareStatement(sql);
         
        String r = "0";
        String s = "0";
     	String birth2 = regBean.getBirth2();
     	if(birth2.length()<2){
     		r = r+birth2;
     		birth2 = r;
     	}else{
     		r = birth2;
     		birth2 = r;
     	}
     	String birth3 = regBean.getBirth3();
     	if(birth3.length()<2){
     		s = s+birth3;
     		birth3 = s;
     	}else{
     		s = birth3;
     		birth3 = s;
     	}
         pstmt.setString(1, regBean.getName());
         pstmt.setString(2, regBean.getBirth1()+birth2+birth3);
         pstmt.setString(3, regBean.getPhone1()+regBean.getPhone2()+regBean.getPhone3());
         
         rs = pstmt.executeQuery();

         String id = "";
         if (rs.next()) {
            id = rs.getString("userId");
            return id;
         } else {
            return "fail";
         }

      } catch (Exception e) {
         e.printStackTrace();
         return "fail";
      } finally {
         if (pstmt != null)
            try {
               pstmt.close();
            } catch (SQLException sqle) {
            }
         if (conn != null)
            try {
               conn.close();
            } catch (SQLException sqle) {
            }
      }
   }

//占쎈쑏熬곣뫅�삕�뵓怨뺣쐡占쎄퉰 嶺뚢돦堉먪뵳占�
   public String SelectPw(airPlanBean regBean) {
      Connection conn = null;
      PreparedStatement pstmt = null;
      ResultSet rs = null;

      try {
    	  conn = getConnection();
         String sql = "select UserPw from User where UserId=? and UserName=? and Birthday=? and UserPhone=?";
         pstmt = conn.prepareStatement(sql);
         
         String r = "0";
         String s = "0";
      	String birth2 = regBean.getBirth2();
      	if(birth2.length()<2){
      		r = r+birth2;
      		birth2 = r;
      	}else{
      		r = birth2;
      		birth2 = r;
      	}
      	String birth3 = regBean.getBirth3();
      	if(birth3.length()<2){
      		s = s+birth3;
      		birth3 = s;
      	}else{
      		s = birth3;
      		birth3 = s;
      	}
      	
         pstmt.setString(1, regBean.getId());
         pstmt.setString(2, regBean.getName());
         pstmt.setString(3, regBean.getBirth1()+birth2+birth3);
         pstmt.setString(4, regBean.getPhone1()+regBean.getPhone2()+regBean.getPhone3());

         rs = pstmt.executeQuery();

         String passwd = "";
         if (rs.next()) {
            passwd = rs.getString("UserPw");
            return passwd;
         } else {
            return "fail";
         }

      } catch (Exception e) {
         e.printStackTrace();
         return "fail";
      } finally {
         if (pstmt != null)
            try {
               pstmt.close();
            } catch (SQLException sqle) {
            }
         if (conn != null)
            try {
               conn.close();
            } catch (SQLException sqle) {
            }
      }
   }

//�슖�돦裕꾬옙�쟽�뜝�럩逾ε뜝�럥六� �뜝�럥�닡�뜝�럩逾졾뜝�럥�꺏 占쎈쑏熬곣뫅�삕�뵓怨뺣쐡占쎄퉰 �뜝�럩�꼪�뜝�럩逾�
   public String login(airPlanBean regBean) {
      Connection conn = null;
      PreparedStatement pstmt = null;
      ResultSet rs = null;
      String str= "";

      try {
    	  conn = getConnection();
         String firstsql = "select UserName from User where UserId=?";
         String twosql = "select UserName from User where UserId=? and UserPw=?";
         pstmt = conn.prepareStatement(firstsql);

         pstmt.setString(1, regBean.getId());
         rs = pstmt.executeQuery();
         if (rs.next()) {
            pstmt = conn.prepareStatement(twosql);
            pstmt.setString(1, regBean.getId());
            pstmt.setString(2, regBean.getPasswd());

            rs = pstmt.executeQuery();
    
            if (rs.next()) {
               return rs.getString("UserName");
            } else {
               return "pwfail";
            }
         } else {
            return "idfail";
         }

      } catch (Exception e) {
         e.printStackTrace();
         return "fail";
      } finally {
         if (pstmt != null)
            try {
               pstmt.close();
            } catch (SQLException sqle) {
            }
         if (conn != null)
            try {
               conn.close();
            } catch (SQLException sqle) {
            }
      }
   }
// �뜝�럥�닡�뜝�럩逾졾뜝�럥�꺏 繞벿살탮占쎄텢嶺뚳퐢�샑野껓옙
public boolean checkid(String id){
	Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    
	boolean b = false;
	try{
		conn = getConnection();
		String sql="select UserId from User where UserId =?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		b = rs.next();
	}catch(Exception e){
		System.out.println("checkId err:" + e);
	}finally{
		try{
			if(rs!=null)rs.close();
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}catch(Exception e2){
			
		}
	}
	return b;
}

// id �뤆�룊�삕 �뛾�룇猷뉔뇡�꼻�삕�땻占� db�뤆�룊�삕 占쎈쑏占쎈쐠�굢占� �뜝�럡�맜�뼨�먯삕
public airPlanBean getUserInfo(String name) throws SQLException{
	Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    airPlanBean airPlan = null;
    
   
    try{
    	StringBuffer query = new StringBuffer();
    	conn = getConnection();
    	
    	pstmt = conn.prepareStatement("select * from User where UserId = ?");
    	pstmt.setString(1,name);
    	rs = pstmt.executeQuery();
    	
    	if(rs.next()){  		
    		airPlan = new airPlanBean();
    		
    		airPlan.setPasswd(rs.getString("UserPw"));
    		airPlan.setId(rs.getString("UserId"));
    		airPlan.setName(rs.getString("UserName"));
    		airPlan.setBirth1(rs.getString("Birthday").substring(0,4));
    		airPlan.setBirth2(rs.getString("Birthday").substring(4,6));
    		airPlan.setBirth3(rs.getString("Birthday").substring(6,8));
    		airPlan.setPhone1(rs.getString("UserPhone").substring(0,3));
    		airPlan.setPhone2(rs.getString("UserPhone").substring(3,7));
    		airPlan.setPhone3(rs.getString("UserPhone").substring(7,11));
    		airPlan.setAddress(rs.getString("UserAddress"));

    	}
    } catch(Exception e){
    	e.printStackTrace();

    } finally {
    	 if (rs != null) try { rs.close(); } catch(SQLException ex) {}
         if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
         if (conn != null) try { conn.close(); } catch(SQLException ex) {}
    }
	return airPlan;
	}
	//�뜝�럩�뤂�뜝�럩�쐸�뜝�럡�돮�뜝�럥�떄
	public int deleteUser(String id,String pw)
	{
		Connection conn = null;
	    PreparedStatement pstmt = null;
	    ResultSet rs = null;
	    
	    String dbpw="";
	    int x = -1;
	    
	    try{
	    	StringBuffer query1 = new StringBuffer();
	    	query1.append("select UserPw from User where UserId=?");
	    	
	    	StringBuffer query2 = new StringBuffer();
	    	query2.append("delete from User where UserId=?");
	    	
	    	conn = getConnection();
	    	conn.setAutoCommit(false);
	    	pstmt = conn.prepareStatement(query1.toString());
	    	pstmt.setString(1, id);
	    	rs = pstmt.executeQuery();
	    	
	    	if(rs.next())
	    	{
	    		dbpw = rs.getString("UserPw");
	    		if(dbpw.equals(pw)){
	    			pstmt = conn.prepareStatement(query2.toString());
	    			pstmt.setString(1,id);
	    			pstmt.executeUpdate();
	    			conn.commit();
	    			x = 1;
	    		}else{
	    			x = 0;
	    		}
	    	}
	    	return x;
	    } catch(Exception sqle){
	    	try{
	    		conn.rollback();
	    	}catch(SQLException e){
	    		e.printStackTrace();
	    	}
	    	throw new RuntimeException(sqle.getMessage());
	    }finally {
	    	 if (rs != null) try { rs.close(); } catch(SQLException ex) {}
	         if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
	         if (conn != null) try { conn.close(); } catch(SQLException ex) {}
	    
	    }
	}
	//占쎈쑏熬곣뫅�삕�뵓怨뺣쐡占쎄퉰 �뜝�럥�빢�뜝�럩�젧
	public int UpdatePw(String id,String pw,String newpw)
	{
		Connection conn = null;
	    PreparedStatement pstmt = null;
	    ResultSet rs = null;
	    
	    String dbpw="";
	    int x = -1;
	    try{
	    	StringBuffer query1 = new StringBuffer();
	    	query1.append("select UserPw from User where UserId=?");
	    	
	    	StringBuffer query2 = new StringBuffer();
	    	query2.append("update User set UserPw=? where UserId=?");
	    	
	    	conn = getConnection();
	    	conn.setAutoCommit(false);
	    	pstmt = conn.prepareStatement(query1.toString());
	    	pstmt.setString(1, id);
	    	rs = pstmt.executeQuery();
	    	
	    	if(rs.next())
	    	{
	    		dbpw = rs.getString("UserPw");
	    		if(dbpw.equals(pw)){
	    			pstmt = conn.prepareStatement(query2.toString());
	    			pstmt.setString(1, newpw);
	    	    	pstmt.setString(2, id);
	    			
	    			pstmt.executeUpdate();
	    			conn.commit();
	    			x = 1;
	    		}else{
	    			x = 0;
	    		}
	    	}
	    	return x;
	    } catch(Exception sqle){
	    	try{
	    		conn.rollback();
	    	}catch(SQLException e){
	    		e.printStackTrace();
	    	}
	    	throw new RuntimeException(sqle.getMessage());
	    }finally {
	    	 if (rs != null) try { rs.close(); } catch(SQLException ex) {}
	         if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
	         if (conn != null) try { conn.close(); } catch(SQLException ex) {}
	    
	    }
	} 
	public String insertJoin(airPlanBean regBean) 
            throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
		ResultSet rs = null;
		
        String sql="";
        String r = "0";
        String s = "0";
        String str="";
        try {
            conn = getConnection();
            
            sql= "insert into User(UserId,UserPw,UserName,Birthday,Gender,UserPhone,UserEmail,UserAddress )values (?,?,?,?,?,?,?,?)";
    		pstmt=conn.prepareStatement(sql);
    		
         	String birth2 = regBean.getBirth2();
         	if(birth2.length()<2){
         		r = r+birth2;
         		birth2 = r;
         	}else{
         		r = birth2;
         		birth2 = r;
         	}
         	String birth3 = regBean.getBirth3();
         	if(birth3.length()<2){
         		s = s+birth3;
         		birth3 = s;
         	}else{
         		s = birth3;
         		birth3 = s;
         	}
    		
    		String Birthday = regBean.getBirth1()+birth2+birth3;
    		String UserPhone = regBean.getPhone1()+regBean.getPhone2()+regBean.getPhone3();
    		
    		pstmt.setString(1, regBean.getId());
    		pstmt.setString(2, regBean.getPasswd());
    		pstmt.setString(3, regBean.getName());
    		pstmt.setString(4, Birthday);
    		pstmt.setString(5, regBean.getGender());
    		pstmt.setString(6, UserPhone);
    		pstmt.setString(7, regBean.getEmail());
    		pstmt.setString(8, regBean.getAddress());
            
			pstmt.executeUpdate();
			//�뜝�럡�뎽占썩뫀踰딉옙六�
			str=regBean.getId()+"님 회원가입되셨습니다";
			return str;
        } catch(Exception ex) {
            ex.printStackTrace();
            str="회원가입에 실패했습니다.";
            return str;
        } finally {
			if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
    }
}