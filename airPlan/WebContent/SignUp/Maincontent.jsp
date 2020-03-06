<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="./css/swiper.min.css">
<link rel="stylesheet" href="./css/mainContentStyle.css">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">

</head>
<body>
<link rel="javascript" href="./js/mainContent.js">
        <div id="mask"></div>
            <div class="window">
          <div class="tik" style=" font-family: 'Do Hyeon', sans-serif;">
		<div class="container-fluid padding">
		<h2 style="font-size: 40px; color:#000;">AirPlan_출발지 선택</h2><a href="#" class="close">닫기X</a>
			<br>
			<div class="col-12">
				<div class="row">
				
				<div class="col-md-2 text-left">
				<img src="image/south-korea.png">　국내
				</div>
				<div class="col-md-2 text-center">
				<a href="javascript:return false;" id="인천" onclick="click_Take_Id_Event(this)" >인천</a>
				</div>
				<div class="col-md-2 text-center">
				<a href="javascript:return false;" id="김포" onclick="click_Take_Id_Event(this)" >김포</a>
				</div>
				<div class="col-md-2 text-center">
				<a href="javascript:return false;" id="제주" onclick="click_Take_Id_Event(this)" >제주</a>
				</div>
				<div class="col-md-2 text-center">
				<a href="javascript:return false;" id="부산" onclick="click_Take_Id_Event(this)" >부산</a>
				</div>
				<div class="col-md-2 text-center">
				</div>
				
				</div>
			</div>
			
			<div class="col-12">	
				<div class="row">
				
<br>
		<div class="col-md-2 text-left">
				<img src="image/japan.png">　일본
				</div>
				<div class="col-md-2 text-center">
				<a href="javascript:return false;" id="도쿄" onclick="click_Take_Id_Event(this)" >도쿄</a>
				</div>
				<div class="col-md-2 text-center">
				<a href="javascript:return false;" id="오사카" onclick="click_Take_Id_Event(this)" >오사카</a>
				</div>
				<div class="col-md-2 text-center">
				<a href="javascript:return false;" id="후쿠오카" onclick="click_Take_Id_Event(this)" >후쿠오카</a>
				</div>
				<div class="col-md-2 text-center">
				<a href="javascript:return false;" id="삿포로" onclick="click_Take_Id_Event(this)"">삿포로</a>
				</div>
				<div class="col-md-2 text-center">
				</div>
				</div>
			</div>
	<br>		
			<div class="col-12">	
				<div class="row">
			<div class="col-md-2 text-left">
				<img src="image/china.png">　중국
				</div>
				<div class="col-md-2 text-center">
				<a href="#_modal" >북경</a>
				</div>
				<div class="col-md-2 text-center">
				<a href="#_modal" >상해</a>
				</div>
				<div class="col-md-2 text-center">
				<a href="#_modal" >청도</a>
				</div>
				<div class="col-md-2 text-center">
				<a href="#_modal" >대련</a>
				</div>
				<div class="col-md-2 text-center">
				　
				</div>
				</div>
			</div>
<br>
			<div class="col-12">	
				<div class="row">
			<div class="col-md-2 text-left">
				<img src="image/hong-kong.png">　아시아
				</div>
				<div class="col-md-2 text-center">
				<a href="#_modal" >홍콩</a>
				</div>
				<div class="col-md-2 text-center">
				<a href="#_modal" >대만</a>
				</div>
				<div class="col-md-2 text-center">
				<a href="#_modal" >다낭</a>
				</div>
				<div class="col-md-2 text-center">
				<a href="#_modal" >방콕</a>
				</div>
				<div class="col-md-2 text-center">
				</div>
			</div>
	</div>
	<br>
	<div class="col-12">	
				<div class="row">
			<div class="col-md-2 text-left">
				<img src="image/united-states-of-america.png">　미국
				</div>
				<div class="col-md-2 text-center">
				<a href="#_modal" >LA</a>
				</div>
				<div class="col-md-2 text-center">
				<a href="#_modal" >라스베가스</a>
				</div>
				<div class="col-md-2 text-center">
				<a href="#_modal" >뉴욕</a>
				</div>
				<div class="col-md-2 text-center">
				<a href="#_modal" >샌프란시스코</a>
				</div>
				<div class="col-md-2 text-center">
				</div>
			</div>
	</div>
		<br>	
		<div class="col-12">	
				<div class="row">
			<div class="col-md-2 text-left">
				<img src="image/european-union.png">　유럽
				</div>
				<div class="col-md-2 text-center">
				<a href="#_modal" >런던</a>
				</div>
				<div class="col-md-2 text-center">
				<a href="#_modal" >파리</a>
				</div>
				<div class="col-md-2 text-center">
				<a href="#_modal" >로마</a>
				</div>
				<div class="col-md-2 text-center">
				<a href="#_modal" >마드리드</a>
				</div>
				<div class="col-md-2 text-center">
				</div>
			</div>
	</div>	
	<br>
	<div class="col-12">	
				<div class="row">
			<div class="col-md-2 text-left">
				　
				</div>
				<div class="col-md-2 text-center">
				<a href="#_modal" >뮌휀</a>
				</div>
				<div class="col-md-2 text-center">
				<a href="#_modal" >암스테르담</a>
				</div>
				<div class="col-md-2 text-center">
				<a href="#_modal" >이스탄불</a>
				</div>
				<div class="col-md-2 text-center">
				<a href="#_modal" >모스크바</a>
				</div>
				<div class="col-md-2 text-center">
				</div>
			</div>
	</div>
	<br>
	<div class="col-12">	
				<div class="row">
			<div class="col-md-2 text-left">
				<img src="image/south-africa.png"> 아프리카
				</div>
				<div class="col-md-2 text-center">
				<a href="#_modal" >카이로</a>
				</div>
				<div class="col-md-2 text-center">
				<a href="#_modal" >나이로바</a>
				</div>
				<div class="col-md-2 text-center">
				<a href="#_modal" >케이프타운</a>
				</div>
				<div class="col-md-4 text-right">
				<button class="btn btn-primary">더 보기</button>
				<a href="#_modal" ></a>
				</div>
			</div>
	</div>
	
	
	</div>
</div>
</div> 
            
     <div id="mask3"></div>
            <div class="window3">
            <div class="tik" style=" font-family: 'Do Hyeon', sans-serif;">
            	<div class="container-fluid padding">
		<h2 style="font-size: 40px; color:#000;">AirPlan_도착지 선택</h2><a href="#" class="close">닫기X</a>
			<br>
			<div class="col-12">
				<div class="row">
				
				<div class="col-md-2 text-left">
				<img src="image/south-korea.png">　국내
				</div>
				<div class="col-md-2 text-center">
				<a href="javascript:return false;" id="인천" onclick="click_Take_Id_Event2(this)" >인천</a>
				</div>
				<div class="col-md-2 text-center">
				<a href="javascript:return false;" id="김포" onclick="click_Take_Id_Event2(this)" >김포</a>
				</div>
				<div class="col-md-2 text-center">
				<a href="javascript:return false;" id="제주" onclick="click_Take_Id_Event2(this)" >제주</a>
				</div>
				<div class="col-md-2 text-center">
				<a href="javascript:return false;" id="부산" onclick="click_Take_Id_Event2(this)" >부산</a>
				</div>
				<div class="col-md-2 text-center">
				</div>
				
				</div>
			</div>
			
			<div class="col-12">	
				<div class="row">
				
<br>
		<div class="col-md-2 text-left">
				<img src="image/japan.png">　일본
				</div>
				<div class="col-md-2 text-center">
				<a href="javascript:return false;" id="도쿄" onclick="click_Take_Id_Event2(this)" >도쿄</a>
				</div>
				<div class="col-md-2 text-center">
				<a href="javascript:return false;" id="오사카" onclick="click_Take_Id_Event2(this)" >오사카</a>
				</div>
				<div class="col-md-2 text-center">
				<a href="javascript:return false;" id="후쿠오카" onclick="click_Take_Id_Event2(this)" >후쿠오카</a>
				</div>
				<div class="col-md-2 text-center">
				<a href="javascript:return false;" id="삿포로" onclick="click_Take_Id_Event2(this)"">삿포로</a>
				</div>
				<div class="col-md-2 text-center">
				</div>
				</div>
			</div>
	<br>		
			<div class="col-12">	
				<div class="row">
			<div class="col-md-2 text-left">
				<img src="image/china.png">　중국
				</div>
				<div class="col-md-2 text-center">
				<a href="#_modal" >북경</a>
				</div>
				<div class="col-md-2 text-center">
				<a href="#_modal" >상해</a>
				</div>
				<div class="col-md-2 text-center">
				<a href="#_modal" >청도</a>
				</div>
				<div class="col-md-2 text-center">
				<a href="#_modal" >대련</a>
				</div>
				<div class="col-md-2 text-center">
				　
				</div>
				</div>
			</div>
<br>
			<div class="col-12">	
				<div class="row">
			<div class="col-md-2 text-left">
				<img src="image/hong-kong.png">　아시아
				</div>
				<div class="col-md-2 text-center">
				<a href="#_modal" >홍콩</a>
				</div>
				<div class="col-md-2 text-center">
				<a href="#_modal" >대만</a>
				</div>
				<div class="col-md-2 text-center">
				<a href="#_modal" >다낭</a>
				</div>
				<div class="col-md-2 text-center">
				<a href="#_modal" >방콕</a>
				</div>
				<div class="col-md-2 text-center">
				</div>
			</div>
	</div>
	<br>
	<div class="col-12">	
				<div class="row">
			<div class="col-md-2 text-left">
				<img src="image/united-states-of-america.png">　미국
				</div>
				<div class="col-md-2 text-center">
				<a href="#_modal" >LA</a>
				</div>
				<div class="col-md-2 text-center">
				<a href="#_modal" >라스베가스</a>
				</div>
				<div class="col-md-2 text-center">
				<a href="#_modal" >뉴욕</a>
				</div>
				<div class="col-md-2 text-center">
				<a href="#_modal" >샌프란시스코</a>
				</div>
				<div class="col-md-2 text-center">
				</div>
			</div>
	</div>
		<br>	
		<div class="col-12">	
				<div class="row">
			<div class="col-md-2 text-left">
				<img src="image/european-union.png">　유럽
				</div>
				<div class="col-md-2 text-center">
				<a href="#_modal" >런던</a>
				</div>
				<div class="col-md-2 text-center">
				<a href="#_modal" >파리</a>
				</div>
				<div class="col-md-2 text-center">
				<a href="#_modal" >로마</a>
				</div>
				<div class="col-md-2 text-center">
				<a href="#_modal" >마드리드</a>
				</div>
				<div class="col-md-2 text-center">
				</div>
			</div>
	</div>	
	<br>
	<div class="col-12">	
				<div class="row">
			<div class="col-md-2 text-left">
				　
				</div>
				<div class="col-md-2 text-center">
				<a href="#_modal" >뮌휀</a>
				</div>
				<div class="col-md-2 text-center">
				<a href="#_modal" >암스테르담</a>
				</div>
				<div class="col-md-2 text-center">
				<a href="#_modal" >이스탄불</a>
				</div>
				<div class="col-md-2 text-center">
				<a href="#_modal" >모스크바</a>
				</div>
				<div class="col-md-2 text-center">
				</div>
			</div>
	</div>
	<br>
	<div class="col-12">	
				<div class="row">
			<div class="col-md-2 text-left">
				<img src="image/south-africa.png"> 아프리카
				</div>
				<div class="col-md-2 text-center">
				<a href="#_modal" >카이로</a>
				</div>
				<div class="col-md-2 text-center">
				<a href="#_modal" >나이로바</a>
				</div>
				<div class="col-md-2 text-center">
				<a href="#_modal" >케이프타운</a>
				</div>
				<div class="col-md-4 text-right">
				<button class="btn btn-primary">더 보기</button>
				<a href="#_modal" ></a>
				</div>
			</div>
	</div>
	</div>
	</div>      
 </div>       


	<div id="mask_People"></div>
            <div class="window2">
                 	<h2>인원 &amp; 좌석등급 <p class="exit" style="text-align:center; background:#ffffff; padding:0px;"><a href="#" class="close">닫기X</a></p> </h2>
                 	<div class="people_Count_Choice">
					
						<div class="people_Count">
							<dl class="count_Box">
								<dt>성인<span class="count_Title">만 12세 이상</span></dt>
								<dd>
									<button id="0.1" type="button" class="btn_minus" onclick="click_Minus_Event(this);">마이너스</button>
									<span class="num" id="adultCount">1</span>
									<button id="1.1" type="button" class="btn_plus" onclick="click_Plus_Event(this);">플러스</button>
								</dd>
							</dl>
							<dl class="count_Box">
								<dt>소아<span class="count_Title">만 12세 미만</span></dt>
								<dd>
									<button id="0.2" type="button" class="btn_minus" onclick="click_Minus_Event(this);">마이너스</button> 
									<span class="num" id="childCount">0</span>
									<button id="1.2" type="button" class="btn_plus" onclick="click_Plus_Event(this);">플러스</button>
								</dd>
							</dl>
							<dl class="count_Box">
								<dt>유아<span class="count_Title">24개월 미만</span></dt>
								<dd>
									<button id="0.3" type="button" class="btn_minus" onclick="click_Minus_Event(this);">마이너스</button>
									<span class="num" id="babyCount">0</span>
									<button id="1.3" type="button" class="btn_plus" onclick="click_Plus_Event(this);">플러스</button>
								</dd>
							</dl>
						</div>
						
						<div id="intcabinClassDiv" class="mrt_seat_num">
							<ul>
								<li class="choose_Box">
									<div class="radio_Box">
										<input type="radio" id="normal" name="radioSit" style="width:125px;"checked="checked" onclick="radio_Seat_Event(this);" value=""><label for="radio01"><span class="choose_Radio"></span>일반석</label>
									</div>
									<div class="radio_Box">
										<input type="radio" id="프리미엄석" name="radioSit" style="width:125px;" onclick="radio_Seat_Event(this);" value=""><label for="radio02"><span class="choose_Radio"></span>프리미엄 일반석</label>
									</div>
								</li>
								<li class="choose_Box">
									<div class="radio_Box">
										<input type="radio" id="비즈니스석" name="radioSit" style="width:125px;" onclick="radio_Seat_Event(this);" value=""><label for="radio03"><span class="choose_Radio"></span>비지니스석</label>
									</div>
									<div class="radio_Box">
										<input type="radio" id="일등석" name="radioSit" style="width:125px;" onclick="radio_Seat_Event(this);" value=""><label for="radio04"><span class="choose_Radio"></span>일등석</label>
									</div>
								</li>
							</ul>
						</div>
					
					</div>
                
            </div>
         
</body>
</html>