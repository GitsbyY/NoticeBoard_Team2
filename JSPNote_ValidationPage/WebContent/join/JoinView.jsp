<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JoinView</title>
<script type="text/javascript">

	function selectAllFnc(){
		   if(document.getElementById("allTerms").checked==true){  //id 를 사용하여 하나의 객체만을 호출
		         for(var i=0;i<4;i++) document.getElementsByName("terms")[i].checked=true;   //name 을 사용하여 배열 형태로 담아 호출
		      } else if(document.getElementById("allTerms").checked==false){
		         for(var i=0;i<4;i++) document.getElementsByName("terms")[i].checked=false;  
		      }
		}
	
	function selectAllMarketFnc(){
		   if(document.getElementById("allMarketingTerms").checked==true){  //id 를 사용하여 하나의 객체만을 호출
		         for(var i=0;i<4;i++) document.getElementsByName("MarketTerms")[i].checked=true;   //name 을 사용하여 배열 형태로 담아 호출
		      } else if(document.getElementById("allMarketingTerms").checked==false){
		         for(var i=0;i<4;i++) document.getElementsByName("MarketTerms")[i].checked=false;  
		      }
		}
</script>
</head>
<body>
	<div id="danawaUserJoinBody"
		class="containerLoginContentloginLoin">

		<form name="frmInfo" method="post" id="danawaUserJoinBodyForm">

<!-- 		개인회원div		 -->
			<div class="indiUser">
				<span class="indiUserTittle">개인회원</span>
			</div>
			
			<br>
<!-- 		간편가입div		 -->			
			<div class="instanceUse">
				<span class="instanceUseTittle">자주 사용하는 아이디로 간편 가입</span>
			</div>
				
		
			<br> 
			<img alt="kakao" src="../img/kakaologo.jpg"> 
			<img alt="naver" src="../img/naverlogo.jpg">
			<img alt="enuri" src="../img/enurilogo.jpg"> 
			<br> 
			<a>카카오</a> <a>네이버</a> <a>에누리</a>
			<br>
			
<!-- 		일반 회원가입div		 -->			
			<div class="joiTitle">
				<div class="boxTitle">
					<span class="textTitle">일반 회원가입</span>
				</div>
			</div>
<!-- 		체크박스div		 -->			
			<div class="termsWrap">
				<input type='checkbox' id='allTerms' name='terms' value='selectAll'
					onclick='selectAllFnc()'/> 
				<label>약관 모두 동의하기</label>
				<br/> 
				<input type='checkbox' name='terms' value='age' /> 
				<label>만 14세 이상입니다. <strong>(필수)</strong></label>
				<br/> 
				<input type='checkbox' name='terms' value='useService' /> 
				<label>서비스 이용 약관 <strong>(필수)</strong></label>
				<button class="termsHide">내용보기</button>
				<br/> 
				<input type='checkbox' name='terms' value='privateInfoCollect' />
				<label>개인정보 수집 및 이용 <strong>(필수)</strong></label>
				<button class="termsHide">내용보기</button>
			</div>
						
<!-- 			인풋 안에 버튼을 넣기 위해서는 CSS가 필요하다 -->			
<!-- 		아이디div		 -->
			<div class="joinId">
				<label for="UserJoinId">아이디</label>
 				<input type="text" class="inputUserId" id="UserJoinId" 
 					name="UserId" placeholder="영문 4자 이상, 최대 20자"> 
				<button class="btnDel"><span class="delIcon"></span></button> 
			</div>
			
			<div class="txtErrorArea" style=""> 
 				<p class="errTxtRed" id="UserJoinMessageId" aria-live="assertive"></p>
 			</div> 
<!-- 		비밀번호div		 -->
			<div class="joinPwd">
				<label for="UserJoinPwd">비밀번호</label>
				<input type="password" class="inputUserPwd" id="UserJoinId" 
 					name="UserId" placeholder="숫자, 영문, 특수문자 포함 최소 8자 이상">
 				<button class="btnDel"><span class="delIcon"></span></button>	
			</div>
			
			<div class="txtErrorArea" style="">
				<p class="errTxtRed" id="UserJoinMessagePwd" aria-live="assertive"></p>
			</div>
<!-- 		비밀번호확인div		 -->
			<div class="joinPwdConfirm">
				<label for="UserJoinPwdConfim">비밀번호 확인</label>
				<input class="inputUserPwdConfim" type="password" 
					name="UserPwdConfirm" id="UserJoinPwdConfim" 
					placeholder="숫자, 영문, 특수문자 포함 최소 8자 이상">
				<button class="btnDel"><span class="delIcon"></span></button>	
 			</div>
			
			<div class="txtErrorArea" style="">
				<p class="errTxtRed" id="UserJoinMessagePwdConfirm" aria-live="assertive"></p>
			</div>
<!-- 		이메일div		 -->
			<div class="joinEmail">
				<label for="UserJoinEmail">이메일 주소</label>
				<input class="inputUserEmail" type="text" name="email" 
					id="UserJoinEmail" placeholder="이메일 주소 입력">
				<button class="btnDel"><span class="delIcon"></span></button>
				<p>가입 완료를 위한 이메일 인증이 진행되니 정확한 이메일 주소를 입력해주시기 바랍니다.</p>
			</div>
			
			<div class="txtErrorArea" style="">
				<p class="errTxtRed" id="UserJoinMessageEmail" aria-live="assertive"></p>
			</div>
<!-- 		이름div		 -->
			<div class="joinUserName">
				<label for="UserJoinUserName">이름</label>
				<input class="inputUserName" type="text" name="userName" 
					id="UserJoinUserName" placeholder="이름 입력">
				<button class="btnDel"><span class="delIcon"></span></button>
			</div>
			
			<div class="txtErrorArea" style="">
				<p class="errTxtRed" id="UserJoinMessageUserName" aria-live="assertive"></p>
			</div>
<!-- 		휴대폰번호div		 -->
			<div class="joinPhoneNum">
				<label for="UserPhoneNum">휴대폰 번호</label>
				<input class="inputUserPhoneNum" type="text" name="phoneNum" 
					id="UserPhoneNum" placeholder="휴대폰 번호 입력">
				<button class="btnDel"><span class="delIcon"></span></button>
			</div>
			
			<div class="txtErrorArea" style="">
				<p class="errTxtRed" id="UserJoinMessageUserPhoneNum" aria-live="assertive"></p>
			</div>
<!-- 		닉네임div		 -->
			<div class="joinNickname">
				<label for="joinUserNickname">닉네임</label>
				<input class="inputUserNickname" type="text" name="nickname" 
					id="joinUsernickname" placeholder="한글 8자, 영문 16자 까지 가능">
				<button class="btnDel"><span class="delIcon"></span></button>
			</div>
			
			<div class="txt_error_area" style="">
				<p class="err_txt" id="UserJoinMessageUserNickname" aria-live="assertive"></p>
			</div>
<!-- 		회원상태유지 radiodiv		 -->
			<div class="boxLifeUser" id="danawaUserLifeUser">
					<div class="textTitle">회원 상태 유지 기간</div>
					<div class="textInfo">선택하신 기간 동안 로그인 활동이 없어도 휴면회원으로 전환되지 <br>않으며, 다나와 서비스를 지속적으로 이용하실 수 있습니다.</div>
					<div class="boxRadio">
						<div class="formRadio">
							<input type="radio" class="radioCheck" id="danawaUserLifeUserAgree" 
								name="lifeUserAgree" value="on">
							<label for="danawaUserLifeUserAgree">탈퇴 시까지</label>
						</div>
						<div class="formRadio">
							<input type="radio" class="radioCheck" id="danawaUserLifeUserDisagreee" 
							name="lifeUserAgree" value="off">
							<label for="danawaUserLifeUserDisagree">1년</label>
						</div>
					</div>
				</div>
<!-- 		마케팅활용선택div		 -->
			<div class="termsMarketing">
					<!-- 체크박스 모듈 전체선택div -->
					<div class="termsCheckbox">
						<input type="checkbox" id="allMarketingTerms" value='selectAll' 
							name="terms" onclick='selectAllMarketFnc()'>
						<label for="marketingCheckBoxAllAgree">
							마케팅 활용 및 광고성 정보 수신 동의<span>(선택)</span>
						</label>
<!-- 					내용보기 -->
						<button class="termsHide">내용보기</button>
						<br>
					</div>
<!-- 					이메일 sms 선택div -->
					<div class="termsMarketing">
						<div class="termsMarketing">
							<input type="checkbox" id="marketingCheckBoxAgreemailing" name="MarketTerms">
							<label for="marketingCheckBoxAgreemailing">이메일</label>
						</div>
						<div class="termsMarketing">
							<input type="checkbox" id="marketingCheckBoxAgreesms" name="MarketTerms">
							<label for="marketingCheckBoxAgreesms">SMS</label>
						</div>
					</div>
					
				</div>
<!-- 		회원가입div		 -->			
				<button id="danawaUserJoinIn" class="buttonJoin" disabled="disabled">회원가입</button>
		
		</form>

	</div>
</body>


</html>