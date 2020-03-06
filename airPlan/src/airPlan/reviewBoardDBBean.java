package airPlan;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.mysql.jdbc.ResultSetMetaData;

public class reviewBoardDBBean {
	
    private static reviewBoardDBBean instance = new reviewBoardDBBean();
    //
    public static reviewBoardDBBean getInstance() {
        return instance;
    }
    
    private reviewBoardDBBean() {}
    
    //而ㅻ꽖�뀡��濡쒕��꽣 Connection媛앹껜瑜� �뼸�뼱�깂
    private Connection getConnection() throws Exception {
        Context initCtx = new InitialContext();
        Context envCtx = (Context) initCtx.lookup("java:comp/env");
        DataSource ds = (DataSource)envCtx.lookup("jdbc/airPlan");
        return ds.getConnection();
    }
 
    //
    public void insertArticle(BoardDataBean article) 
            throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
		ResultSet rs = null;

		int num=article.getNum();
		int ref=article.getRef();
		int re_step=article.getRe_step();
		int re_level=article.getRe_level();
		int number=0;
        String sql="";

        try {
            conn = getConnection();

            pstmt = conn.prepareStatement("select max(num) from reviewBoard");
			rs = pstmt.executeQuery();
			
			if (rs.next())
		      number=rs.getInt(1)+1;
		    else
		      number=1; 
		   
		    if (num!=0) {  
		      sql="update reviewBoard set re_step=re_step+1 ";
		      sql += "where ref= ? and re_step> ?";
              pstmt = conn.prepareStatement(sql);
              pstmt.setInt(1, ref);
			  pstmt.setInt(2, re_step);
			  pstmt.executeUpdate();
			  re_step=re_step+1;
			  re_level=re_level+1;
		     }else{
		  	  ref=number;
			  re_step=0;
			  re_level=0;
		     }	 
            // 荑쇰━瑜� �옉�꽦
            sql = "insert into reviewBoard(writer,email,subject,passwd,reg_date,";
		    sql+="ref,re_step,re_level,content,ip,location) values(?,?,?,?,?,?,?,?,?,?,?)";

            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, article.getWriter());
            pstmt.setString(2, article.getEmail());
            pstmt.setString(3, article.getSubject());
            pstmt.setString(4, article.getPasswd());
			pstmt.setTimestamp(5, article.getReg_date());
            pstmt.setInt(6, ref);
            pstmt.setInt(7, re_step);
            pstmt.setInt(8, re_level);
			pstmt.setString(9, article.getContent());
			pstmt.setString(10, article.getIp());
			pstmt.setString(11, article.getimgLocation());
			
            pstmt.executeUpdate();
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
			if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
    }
    
    //board�뀒�씠釉붿뿉 ���옣�맂 �쟾泥닿��쓽 �닔瑜� �뼸�뼱�깂(select臾�)<=list.jsp�뿉�꽌 �궗�슜
	public int getArticleCount()
             throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        int x=0;

        try {
            conn = getConnection();
            
            pstmt = conn.prepareStatement("select count(*) from reviewBoard");
            rs = pstmt.executeQuery();

            if (rs.next()) {
               x= rs.getInt(1);
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

	//湲��쓽 紐⑸줉(蹂듭닔媛쒖쓽 湲�)�쓣 媛��졇�샂(select臾�) <=list.jsp�뿉�꽌 �궗�슜
	public List<BoardDataBean> getArticles(int start, int end)
             throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        List<BoardDataBean> articleList=null;
        try {
            conn = getConnection();
            
            pstmt = conn.prepareStatement(
            	"select * from reviewBoard order by ref desc, re_step asc limit ?,? ");
            pstmt.setInt(1, start-1);
			pstmt.setInt(2, end);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                articleList = new ArrayList<BoardDataBean>(end);
                do{
                  BoardDataBean article= new BoardDataBean();
				  article.setNum(rs.getInt("num"));
				  article.setWriter(rs.getString("writer"));
                  article.setEmail(rs.getString("email"));
                  article.setSubject(rs.getString("subject"));
                  article.setPasswd(rs.getString("passwd"));
			      article.setReg_date(rs.getTimestamp("reg_date"));
				  article.setReadcount(rs.getInt("readcount"));
                  article.setRef(rs.getInt("ref"));
                  article.setRe_step(rs.getInt("re_step"));
				  article.setRe_level(rs.getInt("re_level"));
                  article.setContent(rs.getString("content"));
			      article.setIp(rs.getString("ip")); 
			      article.setimgLocation(rs.getString("location")); 
				  
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
 
	//湲��쓽 �궡�슜�쓣 蹂닿린(1媛쒖쓽 湲�)(select臾�)<=content.jsp�럹�씠吏��뿉�꽌 �궗�슜
	public BoardDataBean getArticle(int num)
            throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        BoardDataBean article=null;
        try {
            conn = getConnection();

            pstmt = conn.prepareStatement(
            	"update reviewBoard set readcount=readcount+1 where num = ?");
			pstmt.setInt(1, num);
			pstmt.executeUpdate();

            pstmt = conn.prepareStatement(
            	"select * from reviewBoard where num = ?");
            pstmt.setInt(1, num);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                article = new BoardDataBean();
                article.setNum(rs.getInt("num"));
				article.setWriter(rs.getString("writer"));
                article.setEmail(rs.getString("email"));
                article.setSubject(rs.getString("subject"));
                article.setPasswd(rs.getString("passwd"));
			    article.setReg_date(rs.getTimestamp("reg_date"));
				article.setReadcount(rs.getInt("readcount"));
                article.setRef(rs.getInt("ref"));
                article.setRe_step(rs.getInt("re_step"));
				article.setRe_level(rs.getInt("re_level"));
                article.setContent(rs.getString("content"));
			    article.setIp(rs.getString("ip"));    
			    article.setimgLocation(rs.getString("location")); 
				  
			}
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
            if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
		return article;
    }
    
	//湲� �닔�젙�뤌�뿉�꽌 �궗�슜�븷 湲��쓽 �궡�슜(1媛쒖쓽 湲�)(select臾�)<=updateForm.jsp�뿉�꽌 �궗�슜
    public BoardDataBean updateGetArticle(int num)
          throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        BoardDataBean article=null;
        try {
            conn = getConnection();

            pstmt = conn.prepareStatement(
            	"select * from reviewBoard where num = ?");
            pstmt.setInt(1, num);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                article = new BoardDataBean();
                article.setNum(rs.getInt("num"));
				article.setWriter(rs.getString("writer"));
                article.setEmail(rs.getString("email"));
                article.setSubject(rs.getString("subject"));
                article.setPasswd(rs.getString("passwd"));
			    article.setReg_date(rs.getTimestamp("reg_date"));
				article.setReadcount(rs.getInt("readcount"));
                article.setRef(rs.getInt("ref"));
                article.setRe_step(rs.getInt("re_step"));
				article.setRe_level(rs.getInt("re_level"));
                article.setContent(rs.getString("content"));
			    article.setIp(rs.getString("ip"));     
			}
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
            if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
		return article;
    }

    //湲� �닔�젙泥섎━�뿉�꽌 �궗�슜(update臾�)<=updatePro.jsp�뿉�꽌 �궗�슜
    public int updateArticle(BoardDataBean article)
          throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs= null;

        String dbpasswd="";
        String sql="";
		int x=-1;
        try {
            conn = getConnection();
            
			pstmt = conn.prepareStatement(
            	"select passwd from reviewBoard where num = ?");
            pstmt.setInt(1, article.getNum());
            rs = pstmt.executeQuery();
            
			if(rs.next()){
			  dbpasswd= rs.getString("passwd"); 
			  if(dbpasswd.equals(article.getPasswd())){
                sql="update reviewBoard set writer=?,email=?,subject=?,passwd=?";
			    sql+=",content=? where num=?";
                pstmt = conn.prepareStatement(sql);

                pstmt.setString(1, article.getWriter());
                pstmt.setString(2, article.getEmail());
                pstmt.setString(3, article.getSubject());
                pstmt.setString(4, article.getPasswd());
                pstmt.setString(5, article.getContent());
			    pstmt.setInt(6, article.getNum());
                pstmt.executeUpdate();
				x= 1;
			  }else{
				x= 0;
			  }
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
  //글삭제처리시 사용(delete문)<=deletePro.jsp페이지에서 사용
    public int deleteArticle(int num, String name)
        throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs= null;
        String dbwriter="";
        int x=-1;
        try {
			conn = getConnection();

            pstmt = conn.prepareStatement(
            	"select writer from reviewBoard where num = ?");
            pstmt.setInt(1, num);
            rs = pstmt.executeQuery();
            
			if(rs.next()){
				dbwriter= rs.getString("writer"); 
				if(dbwriter.equals(name) || name.equals("airPlan")){
					pstmt = conn.prepareStatement(
            	      "delete from reviewBoard where num=?");
                    pstmt.setInt(1, num);
                    pstmt.executeUpdate();
					x= 1; //글삭제 성공
				}else
					x= 0; //글삭제 실패
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


    
    
    public List<BoardDataBean> selectArticle(String num, String ab)
            throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        BoardDataBean article=null;
        List<BoardDataBean> articleList=null;
        String sql="";
        try {
            conn = getConnection();
         
          if(ab.equals("title")) {
        	  sql="select * from reviewBoard where subject like ?";
              
              pstmt = conn.prepareStatement(
              	sql);
              pstmt.setString(1, "%"+num+"%");
          }
          else if(ab.equals("content")){
        	  	sql="select * from reviewBoard where content like ?";
              
              pstmt = conn.prepareStatement(
              	sql);
              pstmt.setString(1, "%"+num+"%");
          }
          else if(ab.equals("writer")){
        	  sql="select * from reviewBoard where writer like ?";
              
              pstmt = conn.prepareStatement(
              	sql);
              pstmt.setString(1, "%"+num+"%");
          }
          else if(ab.equals("all")) {
        	  sql="select * from reviewBoard where writer like ? or subject like ? or content like ?";
              
              pstmt = conn.prepareStatement(
              	sql);
              pstmt.setString(1, "%"+num+"%");
              pstmt.setString(2, "%"+num+"%");
              pstmt.setString(3, "%"+num+"%");
            
          }
          else {
        	  sql="select * from reviewBoard";
              
              pstmt = conn.prepareStatement(
              	sql);
           
          }
         
            rs = pstmt.executeQuery();
            articleList = new ArrayList<BoardDataBean>();
            do{
            if (rs.next()) {
                article = new BoardDataBean();
                article.setNum(rs.getInt("num"));
				article.setWriter(rs.getString("writer"));
                article.setEmail(rs.getString("email"));
                article.setSubject(rs.getString("subject"));
                article.setPasswd(rs.getString("passwd"));
			    article.setReg_date(rs.getTimestamp("reg_date"));
				article.setReadcount(rs.getInt("readcount"));
                article.setRef(rs.getInt("ref"));
                article.setRe_step(rs.getInt("re_step"));
				article.setRe_level(rs.getInt("re_level"));
                article.setContent(rs.getString("content"));
			    article.setIp(rs.getString("ip"));   
			    article.setimgLocation(rs.getString("location")); 
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
    
    
    
    public int getCommentArticleCount()
            throws Exception {
       Connection conn = null;
       PreparedStatement pstmt = null;
       ResultSet rs = null;

       int x=0;

       try {
           conn = getConnection();
           
           pstmt = conn.prepareStatement("select count(*) from comment");
           rs = pstmt.executeQuery();

           if (rs.next()) {
              x= rs.getInt(1);
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
    
    
    
    public List<BoardDataBean> getCommentArticles(int start, int end)
            throws Exception {
       Connection conn = null;
       PreparedStatement pstmt = null;
       ResultSet rs = null;
       List<BoardDataBean> articleList=null;
       try {
           conn = getConnection();
           
           pstmt = conn.prepareStatement(
           	"select * from comment order by writeDate desc, writer asc limit ?,? ");
           pstmt.setInt(1, start-1);
			pstmt.setInt(2, end);
           rs = pstmt.executeQuery();

           if (rs.next()) {
               articleList = new ArrayList<BoardDataBean>(end);
               do{
                 BoardDataBean article= new BoardDataBean();
				  article.setchecknum((rs.getString("num")));
				  article.setcommentWriter(rs.getString("writer"));
                 article.setcommentContent(rs.getString("content"));
                 article.setReg_date(rs.getTimestamp("writeDate"));          
			  
				  
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

    
    
    public  List<BoardDataBean> getcommentArticle(int num)
            throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        BoardDataBean article=null;
        List<BoardDataBean> articleList=null;
        try {
            conn = getConnection();

           
            pstmt = conn.prepareStatement(
            	"select * from comment where num = ? order by writeDate desc, writer asc");
            pstmt.setInt(1, num);
            rs = pstmt.executeQuery();
         
           

         
            
            if (rs.next()) {
       	 articleList = new ArrayList<BoardDataBean>();
       	 
       	 do {
           
            	 int rowcount = rs.getRow();
   	            
                 article = new BoardDataBean();
              
                 article.setchecknum(rs.getString("num"));
                 article.setcommentContent(rs.getString("content"));
 				article.setcommentWriter(rs.getString("writer"));
                 article.setReg_date(rs.getTimestamp("writeDate"));
                 
 			    articleList.add(article);
 			 
             
       	 }
       	while(rs.next());
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
    
    
    
    
    public void insertCommentArticle(BoardDataBean article) 
            throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
		ResultSet rs = null;
		

		
		
		int number=0;
        String sql="";

        try {
            conn = getConnection();

		
		   
            sql = "insert into comment(num,writer,content,writeDate) values(?,?,?,?)";
		    

            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, article.getchecknum());
            pstmt.setString(2, article.getcommentWriter());
            pstmt.setString(3,article.getcommentContent());
            
			pstmt.setTimestamp(4, article.getReg_date());
           
			
			pstmt.executeUpdate();
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
			if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
    }
    
    
    public int deletecommentArticle(String num, String name, String coomentdate, String loginid)
            throws Exception {
            Connection conn = null;
            PreparedStatement pstmt = null;
            ResultSet rs= null;
         
            int x=-1;
            try {
    			conn = getConnection();
    				if(loginid.equals(name) || loginid.equals("airPlan")) {
    					pstmt = conn.prepareStatement(
                	      "delete from comment where num=? and writeDate=?");
                        pstmt.setString(1, num);
                        pstmt.setString(2, coomentdate);
                        pstmt.executeUpdate();
    					x= 1; //글삭제 성공
    				}else
    					x= 0; //글삭제 실패
    			
            } catch(Exception ex) {
                ex.printStackTrace();
            } finally {
                if (rs != null) try { rs.close(); } catch(SQLException ex) {}
                if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
                if (conn != null) try { conn.close(); } catch(SQLException ex) {}
            }
    		return x;
        }
    
    
    
    
    
    public  List<BoardDataBean> getimgArticle(int num)
            throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        BoardDataBean article=null;
        List<BoardDataBean> articleList=null;
        try {
            conn = getConnection();

           
            pstmt = conn.prepareStatement(
            	"select location from reviewBoard where num = ?");
            pstmt.setInt(1, num);
            rs = pstmt.executeQuery();
         
           

         
            
            if (rs.next()) {
       	 articleList = new ArrayList<BoardDataBean>();
       	 
       	 do {
           
            	 int rowcount = rs.getRow();
   	            
                 article = new BoardDataBean();
              
                
                 article.setlocationtext(rs.getString("location"));
                 article.setfilename(rs.getString("filename"));
                 article.setorignal(rs.getString("orignal"));
 		
                 
 			    articleList.add(article);
 			 
             
       	 }
       	while(rs.next());
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
    public List<BoardDataBean> getArticles2()
            throws Exception {
       Connection conn = null;
       PreparedStatement pstmt = null;
       ResultSet rs = null;
       List<BoardDataBean> articleList=null;
       try {
           conn = getConnection();
           
           pstmt = conn.prepareStatement(
           	"select * from reviewBoard order by ref desc, re_step asc limit 5 ");
           rs = pstmt.executeQuery();

           if (rs.next()) {
               articleList = new ArrayList<BoardDataBean>();
               do{ 
                 BoardDataBean article= new BoardDataBean();
                 
				 article.setNum(rs.getInt("num"));
				 article.setWriter(rs.getString("writer"));
                 article.setEmail(rs.getString("email"));
                 article.setSubject(rs.getString("subject"));
                 article.setPasswd(rs.getString("passwd"));
			     article.setReg_date(rs.getTimestamp("reg_date"));
				 article.setReadcount(rs.getInt("readcount"));
                 article.setRef(rs.getInt("ref"));
                 article.setRe_step(rs.getInt("re_step"));
                 article.setRe_level(rs.getInt("re_level"));
                 article.setContent(rs.getString("content"));
                 article.setIp(rs.getString("ip")); 
			     article.setimgLocation(rs.getString("location")); 				
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
    

}