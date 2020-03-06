package airPlan.selectTicket;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import airPlan.BoardDataBean;

public class selectTicket {
	private static selectTicket instance = new selectTicket();
    //
    public static selectTicket getInstance() {
        return instance;
    }
    
    private selectTicket() {}
    
    //�뜝�럥�맶�뜝�럥�쑅�뜝�럥�럪�뜝�럥�맶�뜝�럥�쑅�뜝�럩紐쀥뜝�럥�맶�뜝�럥�쑅�뜝�럥�쑌�뜝�럥�맶�뜝�럥�쑅�뜝�럥�럪�뜝�럥�맶�뜝�럥�쑅�뜝�럩紐쀥뜝�럥�맶�뜝�럥�쑋嶺뚮쪇占싸살맶�뜝�럥�쑅�뜝�럥�럪�뜝�럥�맶�뜝�럥�쑅�뜝�럩紐쀥뜝�럥�맚嶺뚮㉡�맊占쎈쟼占쎈쐻占쎈윪�뤃�먯삕占쎌맶�뜝�럥�쑋嶺뚮씭�뵛占쎌굲�뜝�럩留띰옙�쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌띿룞�삕占쎌맶�뜝�럥�쐾�뜝�룞�삕�뜝�럥�맶�뜝�럥�쐾�뜝�럡�꺎�뜝�럥�맶�뜝�럥�쑋嶺뚮씭�뵛占쎌굲�뜝�럩留띰옙�쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁���삕占쎌맶�뜝�럥�쑅�뜝�럥�걖�뜝�럥�맶�뜝�럥�쑅�뜝�럥猷쇽옙�쐻占쎈윥占쎈룾�뜝�럥�맶�뜝�럥�몶占쎈뼀占쎈씮�굲占쎈き�뜝�뜽�궔�뜝�룞彛쒙옙維쀯옙�굝�쐻占쎈윥占쎈뼔占쎈쐻占쎈윪筌띾씛�삕占쎌맶�뜝�럥�쑅�뜝�럩留썲뜝�럥�맶�뜝�럥�쑅�뜝�럩�읇�뜝�럥�맶�뜝�럥�쑅�뜝�럥�럪�뜝�럥�맶�뜝�럥�쑅�뜝�럩紐쀥뜝�럥�맶�뜝�럥�쑅�뜝�럥�쑌�뜝�럥�맶�뜝�럥�쑅�뜝�럥�럪�뜝�럥�맶�뜝�럥�쑅�뜝�럩紐쀥뜝�럥�맶�뜝�럥�쑅嶺뚳퐢肉ο옙�맶�뜝�럥�쑅�뜝�럥�럪�뜝�럥�맶�뜝�럥�쑅�뜝�럩紐쀥뜝�럥�맶�뜝�럥�쑅占쎈き占쎈쳟占쎌굲�뜝�럩留띰옙�쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎈윫占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁빢�삕占쎌맶�뜝�럥�쑅勇싲즾紐억쭫�룊�삕野껓옙力놂옙�뜝�뜴�쐻占쎈윥占쎈윫占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁�λ쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎌몞占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎈윫占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁�λ쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윞�꽴硫⑤쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎈윫占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁�λ쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗�뜝�럥夷⑨옙�벀�걠占쎄뎡占쎈쐻占쎈윪筌띾씛�삕占쎌맶�뜝�럥�쑅�뜝�럩紐쀥뜝�럥�맶�뜝�럥�쑅�뜝�럥�쑌�뜝�럥�맶�뜝�럥�쑅�뜝�럥�럪�뜝�럥�맶�뜝�럥�쑅�뜝�럩紐쀥뜝�럥�맶�뜝�럥�쑋嶺뚮쪇占썬룂�뀋�뜝�럡�땽�뜝�럥琉곻옙�쐻占쎈윞占쎈�뤄옙�쐻占쎈윞�눧�뜴�쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몝�뜝�럥夷ⓨ뜝�럥흮占쎄뎡占쎈쐻占쎈윪筌띾씛�삕占쎌맶�뜝�럥�쑅�뜝�럩紐앯솾�꺂�뒧占쎈뎐�뜝�럥�꺙占쎈쐻占쎈윪�뤃�먯삕占쎌맶�뜝�럥�쑋嶺뚮씭�뵛占쎌굲�뜝�럩留띰옙�쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁�㏃녇占쎄틓占쎈뮝�뜝�럥琉끻뜝�럥�맶�뜝�럥堉℡뜝�럡��嶺뚮씭�뵛占쎌굲�뜝�럩留띰옙�쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁빢�삕占쎌맶�뜝�럥�쑅勇싲즾紐억쭫�룊�삕野껓옙力놂옙�뜝�뜴�쐻占쎈윥占쎈윫占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁���삕占쎌맶�뜝�럥�쑅�뜝�럥�걖�뜝�럥�맶�뜝�럥�쑅占쎈닱熬곻옙占쎌맶�뜝�럥�쑋占쎈쨨占쎈Ŋ�굲�뜝�럩留띰옙�쐻占쎈윥占쎌몝癲ル슢�뵯占쎈け�뜝�럩留띰옙�쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎈윫�뜝�럥�맶�뜝�럥�쑅�뜝�럥�럪占쎈쐻占쎈윥占쎈㎍�뜝�럥�맶占쎈쐻�뜝占� Connection占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎈윫占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁���삕占쎈퉳�뜝�럥堉붷ㅇ�슪�삕占쎌뇢�뜝�럥�뒌嶺뚮씭�뵛占쎌굲�뜝�럩留띰옙�쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁�㏃녇占쎄틓占쎈뮝占쎈쑏筌믍됤뵛�뜝�럥臾꾢뜝�럩援뀐옙�쐻占쎈윞占쎈젇占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몝癲ル슢�뀈占쎈솕�뜝�럩援뀐옙�쐻占쎈윪筌띾씛�삕占쎌맶�뜝�럥�쑅�뜝�럩留썲뜝�럥�맶�뜝�럥�쐾�뜝�럥彛욃뜝�럥�맶�뜝�럥�쑅�뜝�럥�럪�뜝�럥�맶�뜝�럥�쑅�뜝�럩紐앭뜝�럥�맶�뜝�럥�쑅�뜝�럥諭쒙옙�쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎈윫占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁�㏃녇占쎄틓占쎈뤁占쎈눀�겫�뼚留뺧옙�쐻占쎈윥占쎈룾�뜝�럥�맶�뜝�럥�몷占쎈퉲�뜝�뜴�쐻占쎈윪占쎈츧占쎈쐻占쎈윥獒뺣떱�쐻占쎈윪占쎌읆占쎈뙑�⑥�ロ룈�뜝�럥�럪�뜝�럥�맶�뜝�럥�쑅�뜝�럩紐앯솾�꺂�뒧占쎈뎐�뜝�럥�걨占쎈쐻占쎈윪筌띾씛�삕占쎌맶�뜝�럥�쑅�뜝�럩紐쀥뜝�럥�맶�뜝�럥�쑅�뜝�럥�쑌占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎈윫�뜝�럥�맶�뜝�럥�쑅�뜝�럥�럪占쎈쐻占쎈윥占쎈㎍�뜝�럥�맶占쎈쐻�뜝占� 占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎈윫占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁�λ쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎌몞占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎈윫占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁�λ쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몝癲ル슢履뉐뜝�떥�궡留띰옙�쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎈윫占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌띿뜴�쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윪占쎄콬占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎈윫占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁�λ쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎌몞占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎈윫占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁�λ쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몝癲ル슢履뉐뜝�떥�궡留띰옙�쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎈윫占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌띿뜴�쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗傭��끉�젻�젆諭꾩삕占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎈윫占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁�λ쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎌몞占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎈윫占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁�λ쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몝癲ル슢�뵰占쎌몧�뜝�럩留띰옙�쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎈윫占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁���삕占쎌맶�뜝�럥�쑅�뜝�룞�삕占쎈쐻占쎈윥占쎈㎍�뜝�럥�맶占쎈쐻�뜝占�
    private Connection getConnection() throws Exception {
        Context initCtx = new InitialContext();
        Context envCtx = (Context) initCtx.lookup("java:comp/env");
        DataSource ds = (DataSource)envCtx.lookup("jdbc/airPlan");
        return ds.getConnection();
    }

    public int getArticleCount(String StartDate, String StartArea, String ArrivalArea, int PersonCount)
            throws Exception {
       Connection conn = null;
       PreparedStatement pstmt = null;
       ResultSet rs = null;
       String sql;
       int x=0;

       try {
           conn = getConnection();
     	  
     	 
    	
           pstmt = conn.prepareStatement(
           "select count(*) from airplane where PlaneDate=? and StartArea=? and ArrivalArea=? and PresentPersonnel>=?");
      	
     	  pstmt.setString(1, StartDate);
     	  pstmt.setString(2, StartArea);
     	  pstmt.setString(3, ArrivalArea);
     	  pstmt.setInt(4, PersonCount);
     	 System.out.println(pstmt);
     	  rs = pstmt.executeQuery();
     	 System.out.println(rs);
           
        	         
           if (rs.next()) {
            x=rs.getInt(1);
            
			}
       } catch(Exception ex) {
           ex.printStackTrace();
       } finally {
           if (rs != null) try { rs.close(); } catch(SQLException ex) {}
           if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
           if (conn != null) try { conn.close(); } catch(SQLException ex) {}
       }
		return x;
   }
    
    public List<selectTicketDataBean> getArticles(String StartDate, String StartArea, String ArrivalArea, int PersonCount)
            throws Exception {
       Connection conn = null;
       PreparedStatement pstmt = null;
       ResultSet rs = null;
       List<selectTicketDataBean> articleList=null;
       System.out.println("ohg");
       try {
           conn = getConnection();
         
           pstmt = conn.prepareStatement(
        		   "select * from airplane where PlaneDate=? and StartArea=? and ArrivalArea=? and PresentPersonnel>=? ");
           pstmt.setString(1, StartDate);
     	  pstmt.setString(2, StartArea);
     	  pstmt.setString(3, ArrivalArea);
     	  pstmt.setInt(4, PersonCount);
     	  
           rs = pstmt.executeQuery();
         
           if (rs.next()) {
               articleList = new ArrayList<selectTicketDataBean>();
               do{
            	   selectTicketDataBean article= new selectTicketDataBean();
            	   article.setAirPlaneNumber(rs.getInt("AirPlaneNumber")); 
            	   article.setStartTime(rs.getString("StartTime")); 
   			    article.setArrivalTime(rs.getString("ArrivalTime")); 
   			    article.setPlaneDate(rs.getString("PlaneDate")); 
   			    article.setStartArea(rs.getString("StartArea")); 
   			    article.setArrivalArea(rs.getString("ArrivalArea")); 
   			    article.setCount(rs.getInt("PresentPersonnel")); 
   			    article.setTotalNumber(rs.getInt("TotalNumber")); 
   			  article.setprice(rs.getInt("price"));
   			article.setnum(rs.getInt("WhatPlane"));
   			    articleList.add(article);
   		
			    }while(rs.next());
			}
       } catch(Exception ex) {
           ex.printStackTrace();
       } finally {
           if (rs != null) try { rs.close(); } catch(SQLException ex) {}
           if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
           if (conn != null) try { conn.close(); } catch(SQLException ex) {}
       }
		return articleList;
   }

	//占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎈윫占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁�λ쐻占쎈윥占쎈㎍占쎈쐻占쎈윥筌욎�λ쐻占쎈윪�뤃轅⑤쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎈윫占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁���삕占쎌맶�뜝�럥�쑋占쎌뼚占싸살맶�뜝�럥�쑅�뜝�럥�럪�뜝�럥�맶�뜝�럥�쑅�뜝�럩留썲뜝�럥�맶�뜝�럥�쑅�뜝�럩�읇占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎈윫占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁�λ쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎌몞占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎈윫占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁�λ쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몝癲ル슢履뉔뜮�냵�삕占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윞占쎈뼆�뜝�럥�맶�뜝�럥�몘�뵓怨ㅼ삕占쎈쐻占쎈윞�굜�띿삕占쎌맶�뜝�럥�쐾�뜝�럥�젃 占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎈윫占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁�λ쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎌몞占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎈윫占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁�λ쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몝癲ル슢�뵰占쎌몧�뜝�럩留띰옙�쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎈윫占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗癲ル슣�돵�뜝�떥�궡留띰옙�쐻占쎈윥占쎌몝�뜝�럥夷③쪛�겦維�占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎈윫占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁�λ쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎌몞占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎈윫占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁�λ쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몝癲ル슢履뉔뜮�냵�삕占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎈윫占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁�㏃녇占쎄틓占쎈뤁�뜝�럥�땻�뜝�럩二멨뜝�럥�맶�뜝�럥�쑋嶺뚮씭�뵛占쎌굲�뜝�럩留띰옙�쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁�λ쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎌몞占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎈윫占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁�λ쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몝癲ル슢履뉔뜮�냵�삕占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎌뱺�뜝�럥�맶�뜝�럥�쑅�뜝�럥�럪�뜝�럥�맶�뜝�럥�쑅�뜝�럥�걞�뜝�럥�맶�뜝�럥�쑋嶺뚮씭�몱占쎌맶�뜝�럥�쑅�뜝�럥�럪占쎈쐻占쎈윥占쎈㎍�뜝�럥�맶占쎈쐻�뜝占� 占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎈윫占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁빆�쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗�뜝�럥�맶�뜝�럥�쑅�뜝�럥利쏙옙�쐻占쎈윪�뤃�먯삕占쎌맶�뜝�럥�쑋嶺뚮씭�꺋占쎌굲�뜝�럩�읁�뜝�럥�맶�뜝�럥�뱺辱됰봾�쐣占쎌굲占쎈쨨�맦占쎈㎦亦껋꼻�맊占쎈㎍占쎈쐻占쎈윥占쎌몝占쎈쐻占쎈윪占쎌뱿占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎈윻�뜝�럥�맶�뜝�럥�쐾�뜝�럥�젃占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몝�뜝�럩�쟼占쎈�롦뉩關援뀐옙�쐻占쎈윞占쎄쉥占쎈쐻占쎈윪�뤃�먯삕占쎌맶�뜝�럥�쑅�뜝�럥�쑌占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎈윫�뜝�럥�맶�뜝�럥�쑅�뜝�럥�럪占쎈쐻占쎈윥占쎈㎍�뜝�럥�맶占쎈쐻�뜝占�(1占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎈윫占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁���삕占쎈퉳�뜝�럥堉붷ㅇ�슪�삕占쎌뇢�뜝�럥�뒌嶺뚮씭�뵛占쎌굲�뜝�럩留띰옙�쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁�㏃녇占쎄틓占쎈뮝占쎈쑏筌믍곴텣占쎈눀占쎈튂占쎄뎡占쎈쐻占쎈윥壤쏉옙占쎌녇占쎄틓占쎈뮛�뜝�럥猷쒙옙�쐻占쎈윥壤쏅�ｋ쐻占쎈윥占쏙옙癲ル슢�뒧塋딆꼻�삕筌띾씛�삕占쎌맶�뜝�럥�쑅�뜝�럩紐앾옙�쐻占쎈윥鸚룐벂�쐻占쎈윥�씙�뜝�럡�렊占쎈쐻占쎈윪�젆酉귥삕占쎄퍓�맶�뜝�럥�몘�뵓怨ㅼ삕占쎈쐻占쎈윞�굜�띿삕占쎌맶�뜝�럥�쐾�뜝�럥�젃 占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎈윫占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁�λ쐻占쎈윥占쎈㎍占쎈쐻占쎈윥筌욎�λ쐻占쎈윪�뤃轅⑤쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎈윫占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁���삕占쎌맶�뜝�럥�쑋占쎌뼚占싸살맶�뜝�럥�쑅�뜝�럥�럪�뜝�럥�맶�뜝�럥�쑅�뜝�럩留썲뜝�럥�맶�뜝�럥�쑅�뜝�럩�읇)(select�뜝�럥�맶�뜝�럥�쑅�뜝�럥�럪�뜝�럥�맶�뜝�럥�쑅�뜝�럩紐쀥뜝�럥�맶�뜝�럥�쑅�뜝�럥�쑌�뜝�럥�맶�뜝�럥�쑅�뜝�럥�럪�뜝�럥�맶�뜝�럥�쑅�뜝�럩紐쀥뜝�럥�맶�뜝�럥�쑋嶺뚮쪇占싸살맶�뜝�럥�쑅�뜝�럥�럪�뜝�럥�맶�뜝�럥�쑅�뜝�럩紐쀯옙�쐻占쎈윪占쎌읆占쎌녃域뱀꼶爾닷뜝�럡�렊�뜝�럥�맶�뜝�럥�쑋嶺뚮씭�뵛占쎌굲�뜝�럩留띰옙�쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁�λ쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎌몞�뜝�럥�맶�뜝�럥�쑅�뜝�럥�럪�뜝�럥�맶�뜝�럥�쑅�뜝�럩紐쀥뜝�럥�맶�뜝�럥�쑅�뜝�럥�쑌占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎈윫�뜝�럥�맶�뜝�럥�쑅�뜝�럥�럪占쎈쐻占쎈윥占쎈㎍�뜝�럥�맶占쎈쐻�뜝占�)<=content.jsp占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎈윫占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁�λ쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎌몞占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎈윫占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁�λ쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몝癲ル슢履뉐뜝�떥�궡留띰옙�쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎈윫占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁빆�쐻占쎈윥占쎈읁�뜝�럥�맶�뜝�럥吏쀥뜝�럩援꿴썒占쏙옙援앾옙肉ゅ뜝�럩援뀐옙�쐻占쎈윥占쎈윫占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁�λ쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎌몞占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎈윫占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁�λ쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몝癲ル슢履뉔뜮占썲뜝�럩援뀐옙�쐻占쎈윪筌띾씛�삕占쎌맶�뜝�럥�쑅�뜝�럩紐앾옙�쐻占쎈윪占쎌읆占쎈쐻占쎈윥�젆�끀�쐻占쎈윥占쎌죰�뜝�럥�맶�뜝�럥�쑅鶯ㅼ렯爰덌옙�굲�뜝�럩紐∽옙�쐻占쎈윥�댆�뜴�쐻占쎈윪筌띾씛�삕占쎌맶�뜝�럥�쑅�뜝�럥�걞�뜝�럥�맶�뜝�럥�쑋嶺뚮씭�뵛占쎌굲�뜝�럩留띰옙�쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁빆�쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗�땱�떜夷わ옙�굲占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎈윫占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁빢�삕占쎌맶�뜝�럥�쑅勇싲즾紐억쭫�룊�삕野껓옙力놂옙�뜝�뜴�쐻占쎈윥占쎈윫占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁�λ쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎌몞占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎈윫占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁�λ쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몝癲ル슢履뉐뜝�떥�궡留띰옙�쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎈윫占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁���삕占쎌맶�뜝�럥�쑅勇싲즾紐억옙�늾占쎈쇊占쎈엮占쎈빝占쎈쐻占쎈윥占쎈윫占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁�λ쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎌몞占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎈윫占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁�λ쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몝癲ル슢�뵰占쎌몧�뜝�럩留띰옙�쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎈윫占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁�κ텣�뜝�룞�삕占쎄콬占쎈쇀占쎈탟占쎌굲�뜝�럡�렊 占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎈윫占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁�λ쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎌몞占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎈윫占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁�λ쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몝癲ル슢�뵰占쎌몧�뜝�럩留띰옙�쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎈윫占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁���삕占쎌맶�뜝�럥�쑅�뜝�럥�럪�뜝�럥�맶�뜝�럥�쑅占쎌젂占쎈�わ옙�맶�뜝�럥�쑋占쎌뼐瑗덌옙�맶�뜝�럥�쐾�뜝�럥�젃�뜝�럥�맶�뜝�럥�쑅�뜝�럥�럪�뜝�럥�맶�뜝�럥�쑅�뜝�럩紐앯솾�꺂�뒧占쎈뎐�뜝�럥�꺙占쎈쐻占쎈윪�뤃�먯삕占쎌맶�뜝�럥�쑋嶺뚮씭�뵛占쎌굲�뜝�럩留띰옙�쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁�λ쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몝癲ル슢履뉔뜮�냵�삕占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윥占쎈윫占쎈쐻占쎈윥占쎈㎍占쎈쐻占쎈윥占쎌몗占쎈쐻占쎈윪筌륁�㏃녇占쎄틓占쎈뤁�뜝�럩�뮡�뜝�럡�렊
	
    
    
    public String selectReservation(int num,String sitnum)
            throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        selectTicketDataBean article=null;
        List<selectTicketDataBean> articleList=null;
        String sitnum2="0";
        String sql="";
        try {
            conn = getConnection();
         
        
          
            sql="select * from reservation where WhatPlane="+num+" and SitNumber="+sitnum;
        	 
        	
        	
              pstmt = conn.prepareStatement(sql);
           
          
         
            rs = pstmt.executeQuery();
            articleList = new ArrayList<selectTicketDataBean>();
            do{
            if (rs.next()) {
            	sitnum2=(String)rs.getString("SitNumber");
            	if(sitnum2.contains(sitnum)){
            		return sitnum;
            	}
            	else{
            		return "0";
            	}
            	
 			   
            }}
        while(rs.next());
	
            
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
            if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
        
        if(sitnum2.contains(sitnum)){
    		
    		return sitnum;
    	}
    	else{
    		return "0";
    	}

    }
    
    public List<selectTicketDataBean> selectTicketInfo(String StartDate, String StartArea, String ArrivalArea, int PersonCount)
            throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        selectTicketDataBean article=null;
        List<selectTicketDataBean> articleList=null;
        String sql="";
        try {
            conn = getConnection();
         
        
          
        	  sql="select * from airplane where PlaneDate=? and StartArea=? and ArrivalArea=? and PresentPersonnel>=? ";
        	 
        	  pstmt.setString(1, StartDate);
        	  pstmt.setString(2, StartArea);
        	  pstmt.setString(3, ArrivalArea);
        	  pstmt.setInt(4, PersonCount);
              pstmt = conn.prepareStatement(sql);
           
          
         
            rs = pstmt.executeQuery();
            articleList = new ArrayList<selectTicketDataBean>();
            do{
            if (rs.next()) {
            	 article = new selectTicketDataBean();
                 
                 article.setAirPlaneNumber(rs.getInt("AirPlaneNumber")); 
              
 			    article.setStartTime((String)rs.getString("StartTime")); 
 			    article.setArrivalTime((String)rs.getString("ArrivalTime")); 
 			    article.setPlaneDate((String)rs.getString("PlaneDate")); 
 			    article.setStartArea((String)rs.getString("StartArea")); 
 			    article.setArrivalArea((String)rs.getString("ArrivalArea")); 
 			    article.setCount(rs.getInt("PresentPersonnel")); 
 			    article.setTotalNumber(rs.getInt("TotalNumber")); 
 	   			  article.setprice(rs.getInt("price"));
 	   			 article.setnum(rs.getInt("WhatPlane"));
 			    articleList.add(article);
            }}
        while(rs.next());
	
            
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
            if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
		return articleList;
    }
    
    
    
    public List<selectTicketDataBean> selectTicketInfo2(int num)
            throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        selectTicketDataBean article=null;
        List<selectTicketDataBean> articleList=null;
     
        String sql="";
        try {
            conn = getConnection();
         
        
       
            sql="select * from airplane where WhatPlane="+num;
        	 
        	
        	
              pstmt = conn.prepareStatement(sql);
           
          
             
            rs = pstmt.executeQuery();
            articleList = new ArrayList<selectTicketDataBean>();
            do{
            if (rs.next()) {
            	 article = new selectTicketDataBean();
                 
                 article.setAirPlaneNumber(rs.getInt("AirPlaneNumber")); 
 			    article.setStartTime((String)rs.getString("StartTime")); 
 			    article.setArrivalTime((String)rs.getString("ArrivalTime")); 
 			    article.setPlaneDate((String)rs.getString("PlaneDate")); 
 			    article.setStartArea((String)rs.getString("StartArea")); 
 			    article.setArrivalArea((String)rs.getString("ArrivalArea")); 
 			    article.setCount(rs.getInt("PresentPersonnel")); 
 			    article.setTotalNumber(rs.getInt("TotalNumber")); 
 	   			  article.setprice(rs.getInt("price"));
 	   			 article.setnum(rs.getInt("WhatPlane"));
 	   		
 			    articleList.add(article);
            }}
        while(rs.next());
	
            
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
            if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
		return articleList;
    }
    
    public List<selectTicketDataBean> selectTicketInfo2(String id)
            throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        selectTicketDataBean article=null;
        List<selectTicketDataBean> articleList=null;
     
        String sql="";
        try {
            conn = getConnection();
         
        
          
            sql="select * from reservation left join airplane on reservation.WhatPlane=airplane.WhatPlane where UserId="+id;
        	 
        	
        	
              pstmt = conn.prepareStatement(sql);
           
          
         
            rs = pstmt.executeQuery();
            articleList = new ArrayList<selectTicketDataBean>();
            do{
            if (rs.next()) {
            	articleList = new ArrayList();
                article = new selectTicketDataBean();
                article.setAirPlaneNumber(rs.getInt("AirPlaneNumber"));
                article.setStartTime(rs.getString("StartTime"));
                article.setArrivalTime(rs.getString("ArrivalTime"));
                article.setPlaneDate(rs.getString("PlaneDate"));
                article.setStartArea(rs.getString("StartArea"));
                article.setArrivalArea(rs.getString("ArrivalArea"));
                article.setCount(rs.getInt("PresentPersonnel"));
                article.setTotalNumber(rs.getInt("TotalNumber"));
                article.setSitNumber(rs.getString("SitNumber"));
                article.setnum(rs.getInt("WhatPlane"));
                article.setprice(rs.getInt("Money"));
                article.setcheckbuy(rs.getInt("checkbuy"));
                articleList.add(article);
            }}
        while(rs.next());
	
            
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
            if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
		return articleList;
    }

    public void insertReservation(String userid,String sitn,String whatPlane,String AirPlaneNumber) 
            throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
		ResultSet rs = null;
		String s1,s2,s3;
		int Money1=0,Money2=0,Money3=0;
		int sitn1 = 0;
		int sitn2=0;
		int sitn3=0;
		String[] array = sitn.split("num");
		if(sitn.length()==15){
		s1=sitn.substring(1,2);
		s2=sitn.substring(6,7);
		s3=sitn.substring(11,12);
		sitn1=Integer.parseInt(s1);
		sitn2=Integer.parseInt(s2);
		sitn3=Integer.parseInt(s3);
    }
		else{
			println("siterror");
		}
		
		if( sitn1 <= 20 ){
			Money1=Money1*2;
			
		}
		else{
			
			Money1=100000;
		}
		if( sitn2 <= 20 ){
			Money2=Money2*2;
			
		}
		else{
			
			Money2=100000;
		}
		if( sitn3 <= 20 ){
			Money3=Money3*2;
			
		}
		else{
			
			Money3=100000;
		}
		
		
		
        String sql="";
        String sql2="";
        String sql3="";
        int x = 0,y=0,present=0;
        try {
            conn = getConnection();

            
		   
            sql = "insert into reservation(Userid,SitNumber,WhatPlane,Money,checkbuy) values(?,?,?,?,0)";
		    
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userid);	
            pstmt.setString(2, sitn);
            pstmt.setString(3,whatPlane);
            
			pstmt.setInt(4, Money1+Money2+Money3);
           
			
			pstmt.executeUpdate();
			
			sql3="select count(*) from "+AirPlaneNumber+"sit where resev=0 and whatplane=? ";
			 pstmt = conn.prepareStatement(sql3);
			 pstmt.setString(1, whatPlane);	
			rs = pstmt.executeQuery();
			 if (rs.next()) {
	               x= rs.getInt(1);
	              
				}
			 
			 sql3="select TotalNumber from airplane where WhatPlane=?";
			 pstmt = conn.prepareStatement(sql3);
			 pstmt.setString(1, whatPlane);	
				rs = pstmt.executeQuery();
				
				 if (rs.next()) {
		               y= rs.getInt("TotalNumber");
					}
				 present=y-x; 
				
			sql="update airplane set PresentPersonnel=? where WhatPlane=?";
			 pstmt = conn.prepareStatement(sql);
			 pstmt.setInt(1, present);
			 pstmt.setString(2, whatPlane);
			 pstmt.executeUpdate();
			 
			 
			sql2="update "+AirPlaneNumber+"sit set resev=0 where sitnumber=? and whatplane=?";
		    
		    for(int i=1;i<=array.length;i++){
           	String a=array[i-1];
           	 pstmt = conn.prepareStatement(sql2);
                pstmt.setString(1, a);	
                pstmt.setString(2, whatPlane);	
                pstmt.executeUpdate();
           }
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
			if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
    }
    public List<selectTicketDataBean> selectTicketInfo6(String id)
		    throws Exception {
		
		   	    Connection conn = null;
		        PreparedStatement pstmt = null;
		        ResultSet rs = null;
		        selectTicketDataBean article=null;
		        String sql1 = "";
		        String sql2 = "";
		        List<selectTicketDataBean> articleList = null;
		        
		        try {
		        	conn = getConnection();
		       	 	sql1 = "select UserId from reservation where UserId=?";
		       	 	sql2 = "select r.WhatPlane, UserId, SitNumber, AirPlaneNumber, StartTime,PresentPersonnel, ArrivalTime, PlaneDate, TotalNumber, StartArea, ArrivalArea, price,checkbuy from airplane a, reservation r where a.WhatPlane = r.WhatPlane and UserId = ? and (checkbuy is NULL or checkbuy = 0)";
		       	 	
	    	            
		       	 
		       	 	pstmt = conn.prepareStatement(sql1);
		       	 	pstmt.setString(1, id);	
	    	        rs = pstmt.executeQuery();
	    	      
	    	            if(rs.next()){
	    	            pstmt = conn.prepareStatement(sql2);
	    	            pstmt.setString(1, id);	
	    	            
	    	            rs = pstmt.executeQuery();
	    	            
	    	            articleList = new ArrayList<selectTicketDataBean>();
	    	            
	    	            while (rs.next()) {
	    	            	article = new selectTicketDataBean();
	    	            	
	    	            	article.setUserId((String)rs.getString("UserId")); 
	    	            	article.setSitNumber((String)rs.getString("SitNumber")); 
	    	            	article.setAirPlaneNumber(rs.getInt("AirPlaneNumber")); 
	    	            	article.setStartTime((String)rs.getString("StartTime")); 
	    	            	article.setArrivalTime((String)rs.getString("ArrivalTime")); 
	    	            	article.setPlaneDate((String)rs.getString("PlaneDate")); 
	    	            	article.setStartArea((String)rs.getString("StartArea")); 
	    	            	article.setArrivalArea((String)rs.getString("ArrivalArea")); 
	    	            	article.setCount(rs.getInt("PresentPersonnel")); 
	    	            	article.setTotalNumber(rs.getInt("TotalNumber")); 
		 	   			  	article.setprice(rs.getInt("price"));
		 	   			  	article.setnum(rs.getInt("WhatPlane"));
		 	   			  	article.setcheckbuy(rs.getInt("checkbuy"));
		 	   			articleList.add(article);
				    }
	    	            }
		        }catch(Exception ex) {
		            ex.printStackTrace();
		        }finally {
		            if (rs != null) 
		            	try { rs.close(); } catch(SQLException ex) {}
		            if (pstmt != null) 
		            	try { pstmt.close(); } catch(SQLException ex) {}
		            if (conn != null) 
		            	try { conn.close(); } catch(SQLException ex) {}
		        }
				return articleList;
		    }
    public void insertReservation2(String userid,String sitn,String whatPlane,int Check,String AirPlaneNumber) 
            throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
		ResultSet rs = null;
		String s1,s2,s3;
		int Money1=0,Money2=0,Money3=0;
		int sitn1 = 0;
		int sitn2=0;
		int sitn3=0;
		String[] array = sitn.split("num");
		if(sitn.length()==15){
		s1=sitn.substring(1,2);
		s2=sitn.substring(6,7);
		s3=sitn.substring(11,12);
		sitn1=Integer.parseInt(s1);
		sitn2=Integer.parseInt(s2);
		sitn3=Integer.parseInt(s3);
    }
		else{
			println("siterror");
		}
		
		if( sitn1 <= 20 ){
			Money1=Money1*2;
			
		}
		else{
			
			Money1=100000;
		}
		if( sitn2 <= 20 ){
			Money2=Money2*2;
			
		}
		else{
			
			Money2=100000;
		}
		if( sitn3 <= 20 ){
			Money3=Money3*2;
			
		}
		else{
			
			Money3=100000;
		}
		
		
		int x=0,y=0,present=0;
        String sql="";
        String sql2="";
        String sql3="";
        try {
            conn = getConnection();

		
		   
            sql = "insert into reservation(Userid,SitNumber,WhatPlane,Money,checkbuy) values(?,?,?,?,?)";
            

            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userid);	
            pstmt.setString(2, sitn);
            pstmt.setString(3,whatPlane);
            pstmt.setInt(5, Check);
			pstmt.setInt(4, Money1+Money2+Money3);
           
			
			pstmt.executeUpdate();
			
			
			sql3="select count(*) from "+AirPlaneNumber+"sit where resev=0 and whatplane=? ";
			 pstmt = conn.prepareStatement(sql3);
			 pstmt.setString(1, whatPlane);	
			rs = pstmt.executeQuery();
			 if (rs.next()) {
	               x= rs.getInt(1);
	              
				}
			 
			 sql3="select TotalNumber from airplane where WhatPlane=?";
			 pstmt = conn.prepareStatement(sql3);
			 pstmt.setString(1, whatPlane);	
				rs = pstmt.executeQuery();
				
				 if (rs.next()) {
		               y= rs.getInt("TotalNumber");
					}
				 present=y-x; 
				
			sql="update airplane set PresentPersonnel=? where WhatPlane=?";
			 pstmt = conn.prepareStatement(sql);
			 pstmt.setInt(1, present);
			 pstmt.setString(2, whatPlane);
			 pstmt.executeUpdate();
			 
			 
			sql2="update "+AirPlaneNumber+"sit set resev=0 where sitnumber=? and whatplane=?";
		    
		    for(int i=1;i<=array.length;i++){
            	String a=array[i-1];
            	 pstmt = conn.prepareStatement(sql2);
                 pstmt.setString(1, a);	
                 pstmt.setString(2, whatPlane);	
                 pstmt.executeUpdate();
            }
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
			if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
    }

	private void println(String string) {
		// TODO Auto-generated method stub
		
	}
	    
	public List<selectTicketDataBean> selectTicketInfo3()
		    throws Exception {
		   	    Connection conn = null;
		        PreparedStatement pstmt = null;
		        ResultSet rs = null;
		        selectTicketDataBean article=null;
		        String sql = "";
		        List<selectTicketDataBean> articleList = null;
		        
		        try {
		        	conn = getConnection();
		       	 
		       	 	sql = "select r.WhatPlane, UserId, SitNumber, AirPlaneNumber, StartTime,PresentPersonnel, ArrivalTime, PlaneDate, TotalNumber, StartArea, ArrivalArea, price from airplane a, reservation r where a.WhatPlane = r.WhatPlane";
	    	            pstmt = conn.prepareStatement(sql);
	    	            rs = pstmt.executeQuery();
	    	            
	    	            articleList = new ArrayList<selectTicketDataBean>();

	    	            while (rs.next()) {
	    	            	article = new selectTicketDataBean();
	    	            	
	    	            	article.setUserId((String)rs.getString("UserId")); 
	    	            	article.setSitNumber((String)rs.getString("SitNumber")); 
	    	            	article.setAirPlaneNumber(rs.getInt("AirPlaneNumber")); 
	    	            	article.setStartTime((String)rs.getString("StartTime")); 
	    	            	article.setArrivalTime((String)rs.getString("ArrivalTime")); 
	    	            	article.setPlaneDate((String)rs.getString("PlaneDate")); 
	    	            	article.setStartArea((String)rs.getString("StartArea")); 
	    	            	article.setArrivalArea((String)rs.getString("ArrivalArea")); 
	    	            	article.setCount(rs.getInt("PresentPersonnel")); 
	    	            	article.setTotalNumber(rs.getInt("TotalNumber")); 
		 	   			  	article.setprice(rs.getInt("price"));
		 	   			  	article.setnum(rs.getInt("WhatPlane"));
		 	   			  	article.setWhatPlane(rs.getInt("WhatPlane"));
		 	   			articleList.add(article);
				    }
	    	            
		        }catch(Exception ex) {
		            ex.printStackTrace();
		        }finally {
		            if (rs != null) 
		            	try { rs.close(); } catch(SQLException ex) {}
		            if (pstmt != null) 
		            	try { pstmt.close(); } catch(SQLException ex) {}
		            if (conn != null) 
		            	try { conn.close(); } catch(SQLException ex) {}
		        }
				return articleList;
		    }
	public List<selectTicketDataBean> selectTicketInfo4(String id)
		    throws Exception {
		
		   	    Connection conn = null;
		        PreparedStatement pstmt = null;
		        ResultSet rs = null;
		        selectTicketDataBean article=null;
		        String sql1 = "";
		        String sql2 = "";
		        List<selectTicketDataBean> articleList = null;
		        
		        try {
		        	conn = getConnection();
		       	 	sql1 = "select UserId from reservation where UserId=?";
		       	 	sql2 = "select r.WhatPlane, UserId, SitNumber, AirPlaneNumber, StartTime,PresentPersonnel, ArrivalTime, PlaneDate, TotalNumber, StartArea, ArrivalArea, price,checkbuy from airplane a, reservation r where a.WhatPlane = r.WhatPlane and UserId = ? and checkbuy = 1";
	    	            
		       	 
		       	 	pstmt = conn.prepareStatement(sql1);
		       	 	pstmt.setString(1, id);	
	    	        rs = pstmt.executeQuery();
	    	      
	    	            if(rs.next()){
	    	            pstmt = conn.prepareStatement(sql2);
	    	            pstmt.setString(1, id);	
	    	            
	    	            rs = pstmt.executeQuery();
	    	            
	    	            articleList = new ArrayList<selectTicketDataBean>();
	    	            
	    	            while (rs.next()) {
	    	            	article = new selectTicketDataBean();
	    	            	
	    	            	article.setUserId((String)rs.getString("UserId")); 
	    	            	article.setSitNumber((String)rs.getString("SitNumber")); 
	    	            	article.setAirPlaneNumber(rs.getInt("AirPlaneNumber")); 
	    	            	article.setStartTime((String)rs.getString("StartTime")); 
	    	            	article.setArrivalTime((String)rs.getString("ArrivalTime")); 
	    	            	article.setPlaneDate((String)rs.getString("PlaneDate")); 
	    	            	article.setStartArea((String)rs.getString("StartArea")); 
	    	            	article.setArrivalArea((String)rs.getString("ArrivalArea")); 
	    	            	article.setCount(rs.getInt("PresentPersonnel")); 
	    	            	article.setTotalNumber(rs.getInt("TotalNumber")); 
		 	   			  	article.setprice(rs.getInt("price"));
		 	   			  	article.setnum(rs.getInt("WhatPlane"));
		 	   			  	article.setcheckbuy(rs.getInt("checkbuy"));
		 	   			articleList.add(article);
				    }
	    	            }
		        }catch(Exception ex) {
		            ex.printStackTrace();
		        }finally {
		            if (rs != null) 
		            	try { rs.close(); } catch(SQLException ex) {}
		            if (pstmt != null) 
		            	try { pstmt.close(); } catch(SQLException ex) {}
		            if (conn != null) 
		            	try { conn.close(); } catch(SQLException ex) {}
		        }
				return articleList;
		    }
	public List<selectTicketDataBean> selectTicketInfo5()
            throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        selectTicketDataBean article=null;
        List<selectTicketDataBean> articleList=null;
     
        String sql="";
        try {
            conn = getConnection();         
            sql="select * from airplane";
       	
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            
            articleList = new ArrayList<selectTicketDataBean>();
            
            while(rs.next()){
	            
	            	 article = new selectTicketDataBean();
	              
	             	article.setAirPlaneNumber(rs.getInt("AirPlaneNumber")); 
	 			    article.setStartTime((String)rs.getString("StartTime")); 
	 			    article.setArrivalTime((String)rs.getString("ArrivalTime")); 
	 			    article.setPlaneDate((String)rs.getString("PlaneDate")); 
	 			    article.setStartArea((String)rs.getString("StartArea")); 
	 			    article.setArrivalArea((String)rs.getString("ArrivalArea")); 
	 			    article.setPresentPersonnel(rs.getInt("PresentPersonnel")); 
	 			    article.setTotalNumber(rs.getInt("TotalNumber")); 
	 			    article.setprice(rs.getInt("price"));
	 			    article.setWhatPlane(rs.getInt("WhatPlane"));
	 			    articleList.add(article);
	            
            }
	
            
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
            if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
        
		return articleList;
    }
	
	public int createsit(String sitname)
            throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
		ResultSet rs = null;
		
        String sql="";

        try {
            conn = getConnection();


             sql = "create table "+sitname+"sit (SitNumber int(11) not null, SitLevel char(20) not null, whatplane int(11) not null,resev int(11) default 1)";
		    
             
            pstmt = conn.prepareStatement(sql);
         
           
            
          
            
			pstmt.executeUpdate();
        } catch(Exception ex) {
        	
            ex.printStackTrace();
            return 0;
        } finally {
			if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
        return 1;
    }
	
	public HashMap<String, String> selectSitData(String sitname,String whatplane)
            throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        selectTicketDataBean article=null;
        List<selectTicketDataBean> articleList=null;
        HashMap hash=new HashMap();
        Object[] objKey;
        String sitnumber;
        int hashkey=0;
        String sql="";
        try {
            conn = getConnection();
         
        
          
            sql="select * from "+sitname+"sit where whatplane="+whatplane;
        	 
        	
        	
              pstmt = conn.prepareStatement(sql);
           
          
         
            rs = pstmt.executeQuery();
           
            while(rs.next()){
            	
            	sitnumber=(String)rs.getString("SitNumber");
            	
            	hash.put(hashkey,sitnumber);
            	hashkey=hashkey+1;
            	
            
            }
      
            
            objKey=hash.keySet(). toArray();
           
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
            if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
		return hash;
    }
	
	
	public int selectWhatplane(int whatplane)
		    throws Exception {
		   	    Connection conn = null;
		        PreparedStatement pstmt = null;
		        ResultSet rs = null;
		        selectTicketDataBean article=null;
		        String sql = "";
		        int searchWhatplane = 0;
		        
		        try {
		        	conn = getConnection();
		       	 
		       	 	sql = "select whatplane from airplane where whatplane=?";
	    	            pstmt = conn.prepareStatement(sql);
	    	            rs = pstmt.executeQuery();
	    	            
	    	           

	    	            while (rs.next()) {
	    	            	searchWhatplane=(rs.getInt("whatplane"));
				    }
	    	            
		        }catch(Exception ex) {
		            ex.printStackTrace();
		        }finally {
		            if (rs != null) 
		            	try { rs.close(); } catch(SQLException ex) {}
		            if (pstmt != null) 
		            	try { pstmt.close(); } catch(SQLException ex) {}
		            if (conn != null) 
		            	try { conn.close(); } catch(SQLException ex) {}
		        }
				return searchWhatplane;
		    }
	
	public HashMap<String, String> selectSitDataReserv(String sitname,String whatplane)
            throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        selectTicketDataBean article=null;
        List<selectTicketDataBean> articleList=null;
        HashMap hash=new HashMap();
        Object[] objKey;
        String sitnumber;
        int hashkey=0;
        String sql="";
        try {
            conn = getConnection();
         
        
          
            sql="select * from "+sitname+"sit where resev=0 and whatplane="+whatplane;
        	 
        	
        	
              pstmt = conn.prepareStatement(sql);
           
          
         
            rs = pstmt.executeQuery();
           
            while(rs.next()){
            	
            	sitnumber=(String)rs.getString("SitNumber");
            	
            	hash.put(hashkey,sitnumber);
            	hashkey=hashkey+1;
            	
            
            }
      
            
            objKey=hash.keySet(). toArray();
           
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
            if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
		return hash;
    }
	
	
	
	public int insertSitdata(String sitname,HashMap<String, String> sitmap,int whatplane)
            throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
       
        selectTicketDataBean article=null;
        List<selectTicketDataBean> articleList=null;
       
       
        Object[] sitkey=sitmap.keySet(). toArray();
        
        String sql="";
        try {
            conn = getConnection();
         
        
            for(int i=0;i<sitkey.length;i++){
            sql="insert into "+sitname+"sit values(?,?,'"+whatplane+"','1')";
          
            int a=Integer.parseInt(sitmap.get(sitkey[i]));
        	
              pstmt = conn.prepareStatement(sql);
             
      		pstmt.setObject(1, sitmap.get(sitkey[i]));	
      		if(a<=20) {
      			pstmt.setString(2, "�씪�벑�꽍");	
      		}
      		else {
      			pstmt.setString(2, "�씪諛섏꽍");	
      		}
      	
          
        
            pstmt.executeUpdate();
            
            }
        }
           
          catch(Exception ex) {
            ex.printStackTrace();
            return 0;
        } finally {
          
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
        return 1;
	
    }
	
	
	public List<selectTicketDataBean> selectsit(String sitname)
		    throws Exception {
		   	    Connection conn = null;
		        PreparedStatement pstmt = null;
		        ResultSet rs = null;
		        selectTicketDataBean article=null;
		        String sql = "";
		        List<selectTicketDataBean> articleList = null;
		        
		        try {
		        	conn = getConnection();
		       	 
		       	 	sql = "select r.WhatPlane, UserId, SitNumber, AirPlaneNumber, StartTime,PresentPersonnel, ArrivalTime, PlaneDate, TotalNumber, StartArea, ArrivalArea, price from airplane a, reservation r where a.WhatPlane = r.WhatPlane";
	    	            pstmt = conn.prepareStatement(sql);
	    	            rs = pstmt.executeQuery();
	    	            
	    	            articleList = new ArrayList<selectTicketDataBean>();

	    	            while (rs.next()) {
	    	            	article = new selectTicketDataBean();
	    	            	
	    	            	article.setUserId((String)rs.getString("UserId")); 
	    	            	article.setSitNumber((String)rs.getString("SitNumber")); 
	    	            	article.setAirPlaneNumber(rs.getInt("AirPlaneNumber")); 
	    	            	article.setStartTime((String)rs.getString("StartTime")); 
	    	            	article.setArrivalTime((String)rs.getString("ArrivalTime")); 
	    	            	article.setPlaneDate((String)rs.getString("PlaneDate")); 
	    	            	article.setStartArea((String)rs.getString("StartArea")); 
	    	            	article.setArrivalArea((String)rs.getString("ArrivalArea")); 
	    	            	article.setCount(rs.getInt("PresentPersonnel")); 
	    	            	article.setTotalNumber(rs.getInt("TotalNumber")); 
		 	   			  	article.setprice(rs.getInt("price"));
		 	   			  	article.setnum(rs.getInt("WhatPlane"));
		 	   			  	article.setWhatPlane(rs.getInt("WhatPlane"));
		 	   			articleList.add(article);
				    }
	    	            
		        }catch(Exception ex) {
		            ex.printStackTrace();
		        }finally {
		            if (rs != null) 
		            	try { rs.close(); } catch(SQLException ex) {}
		            if (pstmt != null) 
		            	try { pstmt.close(); } catch(SQLException ex) {}
		            if (conn != null) 
		            	try { conn.close(); } catch(SQLException ex) {}
		        }
				return articleList;
		    }
	
	
	    public int getListCount(String id)
	    	    throws Exception {
	    	        Connection conn = null;
	    	        PreparedStatement pstmt = null;
	    	        ResultSet rs = null;

	    	        int x=0;

	    	        try {
	    	        	conn = getConnection();
	    	        	
	    	        	
	    	        	pstmt = conn.prepareStatement("select count(*) from airplane a, reservation r where a.WhatPlane = r.WhatPlane AND UserId = ?");
	    	        	 pstmt.setString(1, id);
	    	        	
	    	        	
	    	            
	    	           
	    	            rs = pstmt.executeQuery();

	    	            if (rs.next()) {
	    	               x= rs.getInt(1);
	    	              
	    				}
	    	        } catch(Exception ex) {
	    	            ex.printStackTrace();
	    	        } finally {
	    	            if (rs != null) 
	    	            	try { rs.close(); } catch(SQLException ex) {}
	    	            if (pstmt != null) 
	    	            	try { pstmt.close(); } catch(SQLException ex) {}
	    	            if (conn != null) 
	    	            	try { conn.close(); } catch(SQLException ex) {}
	    	        }
	    			return x;
	    	    } 
	    
	    
	    public int getListCount1()
	    	    throws Exception {
	    	        Connection conn = null;
	    	        PreparedStatement pstmt = null;
	    	        ResultSet rs = null;

	    	        int x=0;

	    	        try {
	    	        	conn = getConnection();
	    	        	
	    	        	
	    	        		pstmt = conn.prepareStatement("select count(*) from airplane a, reservation r where a.WhatPlane = r.WhatPlane");
	    
	    	        	
	    	            
	    	           
	    	            rs = pstmt.executeQuery();

	    	            if (rs.next()) {
	    	               x= rs.getInt(1);
	    	              
	    				}
	    	        } catch(Exception ex) {
	    	            ex.printStackTrace();
	    	        } finally {
	    	            if (rs != null) 
	    	            	try { rs.close(); } catch(SQLException ex) {}
	    	            if (pstmt != null) 
	    	            	try { pstmt.close(); } catch(SQLException ex) {}
	    	            if (conn != null) 
	    	            	try { conn.close(); } catch(SQLException ex) {}
	    	        }
	    			return x;
	    	    } 
	    public int getListCount2()
	    	    throws Exception {
	    	        Connection conn = null;
	    	        PreparedStatement pstmt = null;
	    	        ResultSet rs = null;

	    	        int x=0;

	    	        try {
	    	        	conn = getConnection();
	    	        	
	    	        	
	    	        		pstmt = conn.prepareStatement("select count(*) from airplane");
	    
	
	    	            rs = pstmt.executeQuery();

	    	            if (rs.next()) {
	    	               x= rs.getInt(1);
	    	              
	    				}
	    	        } catch(Exception ex) {
	    	            ex.printStackTrace();
	    	        } finally {
	    	            if (rs != null) 
	    	            	try { rs.close(); } catch(SQLException ex) {}
	    	            if (pstmt != null) 
	    	            	try { pstmt.close(); } catch(SQLException ex) {}
	    	            if (conn != null) 
	    	            	try { conn.close(); } catch(SQLException ex) {}
	    	        }
	    			return x;
	    	    }
	    public void alterReservation(String userid, String sitn, int whatPlane)
	            throws Exception {
	        Connection conn = null;
	        PreparedStatement pstmt = null;
			ResultSet rs = null;
			
	        String sql="";

	        try {
	            conn = getConnection();


	             sql = "update reservation set checkbuy=0 where Userid=? and WhatPlane=?";
			    

	            pstmt = conn.prepareStatement(sql);
	         
	            pstmt.setString(1, userid);
	       
	            pstmt.setInt(2, whatPlane);
	            
				pstmt.executeUpdate();
	        } catch(Exception ex) {
	            ex.printStackTrace();
	        } finally {
				if (rs != null) try { rs.close(); } catch(SQLException ex) {}
	            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
	            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
	        }
	    }
	    
	    public void insertairPlane(selectTicketDataBean airPlan) 
	            throws Exception {
	        Connection conn = null;
	        PreparedStatement pstmt = null;
			ResultSet rs = null;
			
	        String sql="";

	        try {
	            conn = getConnection();


	            sql = "insert into airplane values(?,?,?,?,?,?,?,?,?,?)";
			    

	            pstmt = conn.prepareStatement(sql);
	            pstmt.setInt(1,airPlan.getAirPlaneNumber());	
	            pstmt.setString(2, airPlan.getStartTime());
	            pstmt.setString(3,airPlan.getArrivalTime());
	            pstmt.setString(4,airPlan.getPlaneDate());
	            pstmt.setInt(5,airPlan.getPresentPersonnel());
	            pstmt.setInt(6,airPlan.getTotalNumber());
	            pstmt.setString(7,airPlan.getStartArea());
	            pstmt.setString(8,airPlan.getArrivalArea());
	            pstmt.setInt(9,airPlan.getWhatPlane());
	            pstmt.setInt(10,airPlan.getprice());
	            
				pstmt.executeUpdate();
	        } catch(Exception ex) {
	            ex.printStackTrace();
	        } finally {
				if (rs != null) try { rs.close(); } catch(SQLException ex) {}
	            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
	            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
	        }
	    }
	    
	    
	  
	    
	    
    
	    public void deleteairPlane(String WhatPlane) 
	            throws Exception {
	        Connection conn = null;
	        PreparedStatement pstmt = null;
			ResultSet rs = null;
			
	        String sql="";

	        try {
	            conn = getConnection();


	            sql = "delete from airplane where WhatPlane=?";
			    

	            pstmt = conn.prepareStatement(sql);
	            pstmt.setString(1,WhatPlane);	

				pstmt.executeUpdate();
	        } catch(Exception ex) {
	            ex.printStackTrace();
	        } finally {
				if (rs != null) try { rs.close(); } catch(SQLException ex) {}
	            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
	            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
	        }
	    }
	    public void deleteairPlane1(String WhatPlane) 
	            throws Exception {
	        Connection conn = null;
	        PreparedStatement pstmt = null;
			ResultSet rs = null;
			
	        String sql="";

	        try {
	            conn = getConnection();


	            sql = "delete from reservation where WhatPlane=?";
			    

	            pstmt = conn.prepareStatement(sql);
	            pstmt.setString(1,WhatPlane);	

				pstmt.executeUpdate();
	        } catch(Exception ex) {
	            ex.printStackTrace();
	        } finally {
				if (rs != null) try { rs.close(); } catch(SQLException ex) {}
	            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
	            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
	        }
	    }
	    public void deleteairPlane3(String SitNumber) 
	            throws Exception {
	        Connection conn = null;
	        PreparedStatement pstmt = null;
			ResultSet rs = null;
			
	        String sql="";

	        try {
	            conn = getConnection();


	            sql = "delete from reservation where SitNumber=?";
			    

	            pstmt = conn.prepareStatement(sql);
	            pstmt.setString(1,SitNumber);	

				pstmt.executeUpdate();
				
				System.out.println(SitNumber);
	        } catch(Exception ex) {
	            ex.printStackTrace();
	        } finally {
				if (rs != null) try { rs.close(); } catch(SQLException ex) {}
	            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
	            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
	        }
	    }
}
