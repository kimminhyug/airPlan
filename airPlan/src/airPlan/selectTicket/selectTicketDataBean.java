package airPlan.selectTicket;
import java.sql.Timestamp;
import java.util.List;

public class selectTicketDataBean {
	 private String writer;
	 private int Count;
	 private int num;
	 private String UserId;
	 private String SitNumber;
	 
	 private int AirPlaneNumber;
	 private String StartTime;
	 private String ArrivalTime;
	 private String PlaneDate;
	 private int PresentPersonnel;
	 private int TotalNumber;
	 private String StartArea;
	 private String ArrivalArea;
	 private int WhatPlane;
	 private int price;
	 private int checkbuy;
	 
	 public int getcheckbuy() {
			return checkbuy;
		}
		public void setcheckbuy(int checkbuy) {
			this.checkbuy = checkbuy;
		} 
	 public int getnum() {
		return num;
	}
	public void setnum(int num) {
		this.num = num;
	} 
	public int getCount() {
		return Count;
	}
	public void setCount(int Count) {
		this.Count = Count;
	}
	public String getwriter() {
		return writer;
	}
	public void setwriter(String writer) {
		this.writer = writer;
	} 
	public String getUserId() {
		return UserId;
	}
	public void setUserId(String UserId) {
		this.UserId = UserId;
	} 
	public String getSitNumber() {
		return SitNumber;
	}
	public void setSitNumber(String SitNumber) {
		this.SitNumber = SitNumber;
	}
	
	public int getAirPlaneNumber() {
		return AirPlaneNumber;
	}
	public void setAirPlaneNumber(int airPlaneNumber) {
		AirPlaneNumber = airPlaneNumber;
	}
	public String getStartTime() {
		return StartTime;
	}
	public void setStartTime(String startTime) {
		StartTime = startTime;
	}
	public String getArrivalTime() {
		return ArrivalTime;
	}
	public void setArrivalTime(String arrivalTime) {
		ArrivalTime = arrivalTime;
	}
	public String getPlaneDate() {
		return PlaneDate;
	}
	public void setPlaneDate(String planeDate) {
		PlaneDate = planeDate;
	}
	public int getPresentPersonnel() {
		return PresentPersonnel;
	}
	public void setPresentPersonnel(int presentPersonnel) {
		PresentPersonnel = presentPersonnel;
	}
	public int getTotalNumber() {
		return TotalNumber;
	}
	public void setTotalNumber(int totalNumber) {
		TotalNumber = totalNumber;
	}
	public String getStartArea() {
		return StartArea;
	}
	public void setStartArea(String startArea) {
		StartArea = startArea;
	}
	public String getArrivalArea() {
		return ArrivalArea;
	}
	public void setArrivalArea(String arrivalArea) {
		ArrivalArea = arrivalArea;
	}
	public int getWhatPlane() {
		return WhatPlane;
	}
	public void setWhatPlane(int whatPlane) {
		WhatPlane = whatPlane;
	}
	public int getprice() {
		return price;
	}
	public void setprice(int price) {
		this.price = price;
	} 
}	