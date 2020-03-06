var adult=1;
var child=0;
var baby=0;
var peopleCount=0;
var radioCheck="일반석"

function click_Take_Id_Event(take_Id) {
	
	var a=0;
	a=take_Id.id; // 아이디값 훔치기
	document.getElementById('start').value=a;
	
     $("#mask, .window").hide();
		
	
}

function click_Take_Id_Event2(take_Id) {
	
	var a=0;
	a=take_Id.id; // 아이디값 훔치기
	document.getElementById('arrive').value=a;
	
     $("#mask3, .window3").hide();
		
	
}




function click_Plus_Event(take_Id) {
	
	var a=0;
	peopleCount=adult+baby+child;
	var basicTool = "/";
	
	a=take_Id.id; // 아이디값 훔치기
	
	
			if (a==1.1){
				adult=adult+1;
				peopleCount=adult+baby+child;
				basicTool="승객"+peopleCount+"명, "+ radioCheck;
				document.getElementById('seatCount').value=basicTool;
				document.getElementById('adultCount').innerHTML=adult;
				
		    	} else if (a==1.2){
				child=child+1;
				peopleCount=adult+baby+child;
				basicTool="승객"+peopleCount+"명, "+radioCheck;
				document.getElementById('seatCount').value=basicTool;
				document.getElementById('childCount').innerHTML=child;
				
				} else if (a==1.3) {
				baby=baby+1;
				peopleCount=adult+baby+child;
				basicTool="승객"+peopleCount+"명, "+radioCheck;
				document.getElementById('seatCount').value=basicTool;
				document.getElementById('babyCount').innerHTML=baby;
				}
	
	
		
	
     
	
}
function click_Minus_Event(take_Id) {
	
	var a=0;
	peopleCount=adult+baby+child;
	var basicTool = "/";
	
	a=take_Id.id; // 아이디값 훔치기
	
	if(peopleCount==1) {
		alert("최소 1명이 선택되어야 합니다.");
		take_Id.stopPropagation();
	} 
			if (a==0.1){
				adult=adult-1;
				peopleCount=adult+child+baby;
				basicTool="승객"+peopleCount+"명, "+radioCheck;
				document.getElementById('seatCount').value=basicTool;
				document.getElementById('adultCount').innerHTML=adult;
				
				
		    	} else if (a==0.2 && child!=0){
				child=child-1;
				peopleCount=adult+baby+child;
				basicTool="승객"+peopleCount+"명, "+radioCheck;
				document.getElementById('seatCount').value=basicTool;
				document.getElementById('childCount').innerHTML=child;
				
				} else if (a==0.3 && baby!=0) {
				baby=baby-1;
				peopleCount=adult+baby+child;
				basicTool="승객"+peopleCount+"명, "+radioCheck;
				document.getElementById('seatCount').value=basicTool;
				document.getElementById('babyCount').innerHTML=baby;
				}
}
function radio_Seat_Event(take_Id){
	
	radioCheck = take_Id.id
	basicTool="승객"+peopleCount+"명, "+radioCheck;
	document.getElementById('seatCount').value=basicTool;
	 
	 
}