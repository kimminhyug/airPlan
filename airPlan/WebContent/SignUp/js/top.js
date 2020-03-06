
	function click_Change_Event() {

		var start = 0;
		start = document.getElementById('start').value;
		arrive = document.getElementById('arrive').value;
		if (start == "출발도시" && arrive == "도착도시") {
			e.preventDefault();
		} else {
			document.getElementById('start').value = arrive;
			document.getElementById('arrive').value = start;
			alert(start);
			alert(arrive);
		}

	}
	function test() {
		//document.getElementById('myPage').innerHTML=("     ");

		//document.all.myPage.style.visibility="hidden";
		//document.all.myPage.style.visibility="visible";
		alert("9월말 구현");
	}

	function choiceArea() {

		//화면의 높이와 너비를 구한다.
		var maskHeight = $(document).height();
		var maskWidth = $(window).width();

		//마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
		$("#mask").css({
			"width" : maskWidth,
			"height" : maskHeight
		});

		//애니메이션 효과 - 일단 0초동안 까맣게 됐다가 60% 불투명도로 간다.

		$("#mask").fadeIn(0);
		$("#mask").fadeTo("slow", 0.6);

		//윈도우 같은 거 띄운다.
		$(".window").show();

	}
	function choiceArea2() {

		//화면의 높이와 너비를 구한다.
		var maskHeight = $(document).height();
		var maskWidth = $(window).width();

		//마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
		$("#mask3").css({
			"width" : maskWidth,
			"height" : maskHeight
		});

		//애니메이션 효과 - 일단 0초동안 까맣게 됐다가 60% 불투명도로 간다.

		$("#mask3").fadeIn(0);
		$("#mask3").fadeTo("slow", 0.6);

		//윈도우 같은 거 띄운다.
		$(".window3").show();

	}

	function choicePeople() {

		//화면의 높이와 너비를 구한다.
		var maskHeight = $(document).height();
		var maskWidth = $(window).width();

		//마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
		$("#mask_People").css({
			"width" : maskWidth,
			"height" : maskHeight
		});

		//애니메이션 효과 - 일단 0초동안 까맣게 됐다가 60% 불투명도로 간다.

		$("#mask_People").fadeIn(0);
		$("#mask_People").fadeTo("slow", 0.6);

		//윈도우 같은 거 띄운다.
		$(".window2").show();

	}

	$(document).ready(function() {
		//검은 막 띄우기
		$(".startMask").click(function(e) {
			e.preventDefault(); //중지
			$("#mask, .window").hide();
			$("#mask_People, .window2").hide();
			$("#mask3, .window3").hide();
			choiceArea();
		});
		$(".startMask3").click(function(e) {
			e.preventDefault();
			$("#mask, .window").hide();
			$("#mask_People, .window2").hide();
			$("#mask3, .window3").hide();
			choiceArea2();
		});

		$(".personeel_Seat").click(function(e) {
			e.preventDefault();
			$("#mask, .window").hide();
			$("#mask_People, .window2").hide();
			$("#mask3, .window3").hide();
			choicePeople();
		});

		//닫기 버튼을 눌렀을 때
		$(".window .close").click(function(e) {
			//링크 기본동작은 작동하지 않도록 한다.
			e.preventDefault();
			$("#mask, .window").hide();

		});
		$(".window3 .close").click(function(e) {
			//링크 기본동작은 작동하지 않도록 한다.
			e.preventDefault();

			$("#mask3, .window3").hide();

		});
		$(".window2 .close").click(function(e) {
			//링크 기본동작은 작동하지 않도록 한다.
			e.preventDefault();

			$("#mask_People, .window2").hide();
		});

		//검은 막을 눌렀을 때
		$("#mask").click(function() {
			$(this).hide();
			$(".window").hide();

		});
		$("#mask_People").click(function() {
			$(this).hide();
			$(".window2").hide();

		});
		$("#mask3").click(function() {
			$(this).hide();
			$(".window3").hide();

		});

	});