package airPlan;
import java.sql.Timestamp;

public class BoardDataBean {
	private int num; 
    private String writer;
    private String subject;
    private String email;
    private String content;
    private String passwd;
    private Timestamp reg_date;
    private int readcount;
    private String ip;
    private int ref;
    private int re_step;	
    private int re_level;
    private String imgLocation;
    private String commentWriter;
    private String commentContent;
    private String checknum;
    private String date;
    private String locationtext;
    private String filename;
    private String orignal;
    
    public String getorignal() {
  		return filename;
  	}
  	public void setorignal(String orignal) {
  		this.orignal = orignal;
  	}
    public String getfilename() {
  		return filename;
  	}
  	public void setfilename(String filename) {
  		this.filename = filename;
  	}
    
    public String getlocationtext() {
  		return locationtext;
  	}
  	public void setlocationtext(String locationtext) {
  		this.locationtext = locationtext;
  	}
  	
    public String getdate() {
  		return date;
  	}
  	public void setdate(String date) {
  		this.date = date;
  	}
  	
    public String getchecknum() {
  		return checknum;
  	}
  	public void setchecknum(String checknum) {
  		this.checknum = checknum;
  	}
  	
    public String getcommentContent() {
  		return commentContent;
  	}
  	public void setcommentContent(String commentContent) {
  		this.commentContent = commentContent;
  	}
    public String getcommentWriter() {
  		return commentWriter;
  	}
  	public void setcommentWriter(String commentWriter) {
  		this.commentWriter = commentWriter;
  	}
  	
  	
  	
    public String getimgLocation() {
		return imgLocation;
	}
	public void setimgLocation(String imgLocation) {
		this.imgLocation = imgLocation;
	}
	
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public Timestamp getReg_date() {
		return reg_date;
	}
	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}
	public int getReadcount() {
		return readcount;
	}
	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public int getRef() {
		return ref;
	}
	public void setRef(int ref) {
		this.ref = ref;
	}
	public int getRe_step() {
		return re_step;
	}
	public void setRe_step(int re_step) {
		this.re_step = re_step;
	}
	public int getRe_level() {
		return re_level;
	}
	public void setRe_level(int re_level) {
		this.re_level = re_level;
	} 
}