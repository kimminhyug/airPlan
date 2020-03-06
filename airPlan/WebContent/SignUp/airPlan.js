// 로그인 확인
function Check(){
	
}

// 로그인 체크
function loginCheck(){
   if (document.login.id.value == "") {
      alert("아이디를 입력해 주세요");
      document.login.id.focus();
      session.setAttribute("UserId", regBean.getId());
      return;
   }

   if (document.login.passwd.value == "") {
      alert("비밀번호를 입력해 주세요");
      document.login.passwd.focus();
      return;
   }
   document.login.submit();
}
// 회원가입 체크

function InputCheck(){
	if(document.regForm.id.value==""){
		alert("아이디를 입력해 주세요");
		document.regForm.id.focus();
		return;
	}
	if(document.regForm.idDuplication.value!="idCheck"){
		alert("아이디 중복체크를 해주세요.");
		document.regasdaswdForm.id.focus();
		return;
	}
	if(document.regForm.passwd.value==""){
		alert("비밀번호를 입력해 주세요");
		document.regForm.passwd.focus();
		return;
	}
	if(document.regForm.repasswd.value==""){
		alert("비밀번호를 재확인해 주세요");
		document.regForm.repasswd.focus();
		return;
	}
	if(document.regForm.name.value==""){
		alert("이름을 입력해 주세요");
		document.regForm.name.focus();
		return;
	}
	if(document.regForm.birth1.value==""
		|| document.regForm.birth1.value=="년"){
		alert("생년월일을 체크 해주세요.");
		document.regForm.birth1.focus();
		return;
	}
	if(document.regForm.birth2.value==""
		|| document.regForm.birth2.value=="월"){
		alert("생년월일을 체크 해주세요.");
		document.regForm.birth2.focus();
		return;
	}
	if(document.regForm.birth3.value==""
		|| document.regForm.birth3.value=="일"){
		alert("생년월일을 체크 해주세요.");
		document.regForm.birth3.focus();
		return;
	}
	
	if(document.regForm.gender.value==""){
		alert("성별을 체크해주세요.");
		document.regForm.gender.focus();
		return;
	}
	if(document.regForm.phone1.value==""){
		alert("전화번호를 입력해 주세요");
		document.regForm.phone1.focus();
		return;
	}
	if(document.regForm.phone2.value==""){
		alert("전화번호를 입력해 주세요");
		document.regForm.phone2.focus();
		return;
	}
	if(document.regForm.phone3.value==""){
		alert("전화번호를 입력해 주세요");
		document.regForm.phone3.focus();
		return;
	}
	if(document.regForm.email.value==""){
		alert("이메일을 입력해 주세요.");
		document.regForm.email.focus();
		return;
	}
	if(document.regForm.address.value==""){
		alert("주소를 입력해 주세요");
		document.regForm.address.focus();
		return;
	}
	if(document.regForm.passwd.value != document.regForm.repasswd.value){
		alert("비밀번호가 일치하지 않습니다.");
		document.regForm.repasswd.focus();
		return;
	}
	document.regForm.submit();
}
// 아이디찾기 체크
function SelectIdCheck() {
		   if (document.SelectId.name.value=="") {
		      alert("이름을 입력해 주세요");
		      document.SelectId.name.focus();
		      return;
		   }
		   if(document.SelectId.birth1.value==""
			   || document.SelectId.birth1.value=="년"){
				alert("생년월일을 체크 해주세요.");
				document.SelectId.birth1.focus();
				return;
			}
			if(document.SelectId.birth2.value==""
				|| document.SelectId.birth2.value=="월"){
				alert("생년월일을 체크 해주세요.");
				document.SelectId.birth2.focus();
				return;
			}
			if(document.SelectId.birth3.value==""
				|| document.SelectId.birth3.value=="일"){
				alert("생년월일을 체크 해주세요.");
				document.SelectId.birth3.focus();
				return;
			}
			
		   if(document.SelectId.phone1.value==""){
				alert("전화번호를 입력해 주세요");
				document.SelectId.phone1.focus();
				return;
			}
			if(document.SelectId.phone2.value==""){
				alert("전화번호를 입력해 주세요");
				document.SelectId.phone2.focus();
				return;
			}
			if(document.SelectId.phone3.value==""){
				alert("전화번호를 입력해 주세요");
				document.SelectId.phone3.focus();
				return;
			}
		   document.SelectId.submit();
		}

// 비밀번호 찾기 체크
function SelectPwCheck() {

		   if (document.SelectPw.id.value=="") {
		      alert("아이디를 입력해 주세요");
		      document.SelectPw.id.focus();
		      return;
		   }
		   if (document.SelectPw.name.value=="") {
		      alert("이름을 입력해 주세요");
		      document.SelectPw.name.focus();
		      return;
		   }
		   if(document.SelectPw.birth1.value==""
			   || document.SelectPw.birth1.value=="년"){
				alert("생년월일을 체크 해주세요.");
				document.SelectPw.birth1.focus();
				return;
			}
			if(document.SelectPw.birth2.value==""
				|| document.SelectPw.birth2.value=="월"){
				alert("생년월일을 체크 해주세요.");
				document.SelectPw.birth2.focus();
				return;
			}
			if(document.SelectPw.birth3.value==""
				|| document.SelectPw.birth3.value=="일"){
				alert("생년월일을 체크 해주세요.");
				document.SelectPw.birth3.focus();
				return;
			}
		   if(document.SelectPw.phone1.value==""){
				alert("전화번호를 입력해 주세요");
				document.SelectPw.phone1.focus();
				return;
			}
			if(document.SelectPw.phone2.value==""){
				alert("전화번호를 입력해 주세요");
				document.SelectPw.phone2.focus();
				return;
			}
			if(document.SelectPw.phone3.value==""){
				alert("전화번호를 입력해 주세요");
				document.SelectPw.phone3.focus();
				return;
			}
		   document.SelectPw.submit();
		}
