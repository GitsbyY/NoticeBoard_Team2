<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../style.css" rel="stylesheet" type="text/css">
<title>회원가입</title>

<style>
</style>


<script type="text/javascript">
	function loginScreenFnc() {
		window.location.href = "../login/loginForm";
	}
</script>


</head>

<body>

	<div id="dnawaUserJoinBackGround" class="dnawaUserJoinBackGroundClass">

		<div id="danawaUserJoinBody" class="containerLoginContentlogin">

			<form name="formInfo" method="post" class="userJoinForm"
				id="danawaUserJoinBodyForm" action='./join'>
				<div id="header" class="headerLogin">
					<img alt="다나와 이미지" src="/DanawaNoteForMid/img/danawa1.jpg"
						class="danawaImg" onclick="loginScreenFnc()">
					<h2 style="margin: 0;">회원가입</h2>
				</div>
				<div class="wrapUserJoin">
					<!-- 		개인회원div		 -->
					<div class="indiUser">
						<h3>개인회원</h3>
					</div>

					<!-- 		간편가입div		 -->
					<div class="instanceUse">

						<div class="instanceUseTittle">
							<span class="instanceUseTittleText">자주 사용하는 아이디로 간편 가입</span>
						</div>

						<div class="boxSnsJoin">
							<div class="boxSnsLink">
								<a href="" class="linkSns" id="linkKakao"> <img alt="kakao"
									src="../img/kakaologo.jpg"> <span class="titleSns">카카오</span>
								</a>
							</div>

							<div class="boxSnsLink">
								<a href="" class="linkSns" id="linkNaver"> <img alt="naver"
									src="../img/naverlogo.jpg"> <span class="titleSns">네이버</span>
								</a>
							</div>

							<div class="boxSnsLink">
								<a href="" class="linkSns" id="linkEnuri"> <img alt="enuri"
									src="../img/enurilogo.jpg"> <span class="titleSns">에누리</span>
								</a>
							</div>
						</div>
					</div>
					<!-- 		일반 회원가입div		 -->
					<div class="joinTitle">
						<div class="boxTitle">
							<span class="textTitle">일반 회원가입</span>
						</div>
					</div>
					<!-- 		체크박스div		 -->
					<div class="termsWrap">
						<div class="termsWrap">
							<div class="termsCheckbox">
								<input type='checkbox' id='allTerms' name='terms'
									value='selectAll' onclick='selectAllFnc()' /> <label
									for="allTerms">약관 모두 동의하기</label>
									<p class="termsHide"></p>
							</div>
							<div class="termsCheckbox">
								<input type='checkbox' name='terms' value='age' id='ageCheckbox' />
								<label for="ageCheckbox" style="margin-top: 5px;">만 14세 이상입니다. 
									<strong>(필수)</strong></label>
								<p class="termsHide"></p>
							</div>
							<div class="termsCheckbox">
								<input type='checkbox' name='terms' value='useService'
									id='useServiceCheckbox' /> <label for="useServiceCheckbox"
									class="termsButtonLabel"> 서비스 이용 약관 <strong>(필수)</strong>
								</label>
								<p class="termsHide">내용보기</p>
<!-- 								<button type="button" class="termsHide" -->
<!-- 									onclick="shapeChangeFnc()">내용보기</button> -->
							</div>
							<div class="termsCheckbox">
								<input type='checkbox' name='terms' value='privateInfoCollect'
									id='privateInfoCheckbox' /> <label for="privateInfoCheckbox"
									class="termsButtonLabel"> 개인정보 수집 및 이용 <strong>(필수)</strong>
								</label>
								<p class="termsHide">내용보기</p>
<!-- 								<button type="button" class="termsHide" -->
<!-- 									onclick="shapeChangeFnc()">내용보기</button> -->
							</div>
						</div>

						<!-- 			인풋 안에 버튼을 넣기 위해서는 CSS가 필요하다 -->
						<!-- 					아이디 입력부터 닉네임까지 -->
						<div class="joinWrap">
							<!-- 		아이디div		 -->
							<div class="joinId">
								<div class="inputLabel">
									<label for="UserJoinId">아이디</label>
								</div>

								<div class="inputWithButton">

									<input type="text" class="inputUser" id="UserJoinId"
										name="userId" placeholder="영문 4자 이상, 최대 20자" />
									<button type="button" class="btnDel"
										onClick="clearInput('UserJoinId')"></button>
								</div>
							</div>

							<div class="txtErrorArea" style="">
								<p class="errTxtRed" id="UserJoinMessageId"
									aria-live="assertive"></p>
							</div>
							<!-- 		비밀번호div		 -->
							<div class="joinPwd">
								<div class="inputLabel">
									<label for="UserJoinPwd">비밀번호</label>
								</div>
								<div class="inputWithButton">

									<input type="password" class="inputUser" id="UserJoinPwd"
										name="userPwd" placeholder="숫자, 영문, 특수문자 포함 최소 8자 이상" />
									<button type="button" class="btnDel"
										onClick="clearInput('UserJoinPwd')"></button>
								</div>
							</div>

							<div class="txtErrorArea" style="">
								<p class="errTxtRed" id="UserJoinMessagePwd"
									aria-live="assertive"></p>
							</div>
							<!-- 		비밀번호확인div		 -->
							<div class="joinPwdConfirm">
								<div class="inputLabel">
									<label for="UserJoinPwdConfim">비밀번호 확인</label>
								</div>
								<div class="inputWithButton">

									<input class="inputUser" type="password" name="UserPwdConfirm"
										id="UserJoinPwdConfim" placeholder="숫자, 영문, 특수문자 포함 최소 8자 이상" />
									<button type="button" class="btnDel"
										onClick="clearInput('UserJoinPwdConfim')"></button>
								</div>
							</div>

							<div class="txtErrorArea" style="">
								<p class="errTxtRed" id="UserJoinMessagePwdConfirm"
									aria-live="assertive"></p>
							</div>
							<!-- 		이메일div		 -->
							<div class="joinEmail">
								<div class="inputLabel">
									<label for="UserJoinEmail">이메일 주소</label>
								</div>
								<div class="inputWithButton">

									<input class="inputUser" type="text" name="email"
										id="UserJoinEmail" placeholder="이메일 주소 입력" />
									<button type="button" class="btnDel"
										onClick="clearInput('UserJoinEmail')"></button>
								</div>
								<p>가입 완료를 위한 이메일 인증이 진행되니 정확한 이메일 주소를 입력해주시기 바랍니다.</p>
							</div>

							<div class="txtErrorArea" style="">
								<p class="errTxtRed" id="UserJoinMessageEmail"
									aria-live="assertive"></p>
							</div>
							<!-- 		이름div		 -->
							<div class="joinUserName">
								<div class="inputLabel">
									<label for="UserJoinUserName">이름</label>
								</div>
								<div class="inputWithButton">

									<input class="inputUser" type="text" name="userName"
										id="UserJoinUserName" placeholder="이름 입력" />
									<button type="button" class="btnDel"
										onClick="clearInput('UserJoinUserName')"></button>
								</div>
							</div>

							<div class="txtErrorArea" style="">
								<p class="errTxtRed" id="UserJoinMessageUserName"
									aria-live="assertive"></p>
							</div>
							<!-- 		휴대폰번호div		 -->
							<div class="joinPhoneNum">
								<div class="inputLabel">
									<label for="UserPhoneNum">휴대폰 번호</label>
								</div>
								<div class="inputWithButton">

									<input class="inputUser" type="text" name="phoneNum"
										id="UserPhoneNum" placeholder="휴대폰 번호 입력">
									<button type="button" class="btnDel"
										onClick="clearInput('UserPhoneNum')"></button>
								</div>

							</div>

							<div class="txtErrorArea" style="">
								<p class="errTxtRed" id="UserJoinMessageUserPhoneNum"
									aria-live="assertive"></p>
							</div>
							<div>
								<button type="button" class="phoneNumVerify"
									onclick="performVerFnc()">본인인증</button>
							</div>
							<!-- 			인증번호와 이름 -> 본인인증이 완료되었습니다. -->
							<div class="joinVerifiedUser">
								<div class="inputLabel">
									<label for="UserPhoneNumVerifiedNum">인증된 번호</label>
								</div>
								<div class="joinPhoneNumVerifiedNum"
									id="joinUserPhoneNumVerifiedNum">
									<input class="inputUser" type="text" name="userName"
										id="UserPhoneNumVerifiedNum" disabled />
								</div>
								<div class="inputLabel">
									<label for="VerifiedUserName">이름</label>
								</div>
								<div class="joinVerifiedName" id="joinVerifiedUserName">
									<input class="inputUser" type="text" disabled name="userName"
										id="VerifiedUserName" disabled />
								</div>
							</div>
							<!-- 		닉네임div		 -->
							<div class="joinNickname">
								<div class="inputLabel">
									<label for="joinUserNickname">닉네임</label>
								</div>
								<div class="inputWithButton">

									<input class="inputUser" type="text" name="nickName"
										id="joinUserNickname" placeholder="한글 8자, 영문 16자 까지 가능" />
									<button type="button" class="btnDel"
										onClick="clearInput('joinUsernickname')"></button>
								</div>
							</div>

							<div class="txt_error_area" style="">
								<p class="err_txt" id="UserJoinMessageUserNickname"
									aria-live="assertive"></p>
							</div>
						</div>
						<!-- 		회원상태유지 radiodiv		 -->
						<div class="boxLifeUser" id="danawaUserLifeUser">
							<div class="lifeUserTextTitle">회원 상태 유지 기간</div>
							<div class="textInfo">
								선택하신 기간 동안 로그인 활동이 없어도 휴면회원으로 전환되지 <br>않으며, 다나와 서비스를 지속적으로
								이용하실 수 있습니다.
							</div>
							<div class="boxRadio">
								<div class="formRadio">
									<input type="radio" class="radioCheck"
										id="danawaUserLifeUserAgree" name="lifeUserAgree" value="on">
									<label for="danawaUserLifeUserAgree">탈퇴 시까지</label>
								</div>
								<div class="formRadio">
									<input type="radio" class="radioCheck"
										id="danawaUserLifeUserDisagreee" name="lifeUserAgree"
										value="off"> <label for="danawaUserLifeUserDisagreee">1년</label>
								</div>
							</div>
						</div>

						<!-- 		마케팅활용선택div		 -->
						<div class="termsMarketing">
							<!-- 체크박스 모듈 전체선택div -->
							<div class="termsCheckbox">
								<input type="checkbox" id="allMarketingTerms" value='selectAll'
									name="select" onclick='selectAllMarketFnc()'> <label
									for="allMarketingTerms"> 마케팅 활용 및 광고성 정보 수신 동의<span>(선택)</span>
								</label>
								<!-- 					내용보기 -->
								<p class="termsHide" style="margin-left: 100px;">내용보기</p>
<!-- 								<button type="button" class="termsHide">내용보기</button> -->
								<br>
							</div>
							<!-- 					이메일 sms 선택div -->
							<div class="warpTermsMarketingCheckBox">
								<div class="termsMarketingCheckBox">
									<input type="checkbox" id="marketingCheckBoxAgreemailing"
										name="MarketTerms"> <label
										for="marketingCheckBoxAgreemailing">이메일</label>
								</div>
								<div class="termsMarketingCheckBox">
									<input type="checkbox" id="marketingCheckBoxAgreesms"
										name="MarketTerms"> <label
										for="marketingCheckBoxAgreesms">SMS</label>
								</div>
							</div>
						</div>
						<!-- 		회원가입button		 -->
						<button type="submit" id="danawaUserJoinIn" class="buttonJoin"
							disabled="disabled">회원가입</button>
					</div>
					<p style="text-align: center; margin-top: 100px; margin-bottom: 50px;">
					Copyright © <strong>connectwave</strong> Co., Ltd. All Rights
					Reserved.
					</p>
				</div>
				
			</form>

		</div>

	</div>



</body>

<script type="text/javascript">
	function clearInput(inputId) {
		document.getElementById(inputId).value = ""; // 인풋 클리어
	}

	function selectAllFnc() {
		if (document.getElementById("allTerms").checked == true) { //id 를 사용하여 하나의 객체만을 호출
			for (var i = 0; i < 4; i++)
				document.getElementsByName("terms")[i].checked = true; //name 을 사용하여 배열 형태로 담아 호출
		} else if (document.getElementById("allTerms").checked == false) {
			for (var i = 0; i < 4; i++)
				document.getElementsByName("terms")[i].checked = false;
		}
	}

	function selectAllMarketFnc() {
		var marketTerms = document.getElementsByName("MarketTerms");

		if (document.getElementById("allMarketingTerms").checked == true) {
			for (var i = 0; i < marketTerms.length; i++) {
				if (marketTerms[i]) {
					marketTerms[i].checked = true;
				}
			}
		} else if (document.getElementById("allMarketingTerms").checked == false) {
			for (var i = 0; i < marketTerms.length; i++) {
				if (marketTerms[i]) {
					marketTerms[i].checked = false;
				}
			}
		}
	}

	//아이디 div		
	var userId = document.getElementById("UserJoinId");
	var errMsgId = document.getElementById("UserJoinMessageId");
	//비밀번호 div	
	var pwd = document.getElementById("UserJoinPwd");
	var errMsgPwd = document.getElementById("UserJoinMessagePwd");
	//비밀번호확인 div	
	var conPwd = document.getElementById("UserJoinPwdConfim");
	var errMsgConPwd = document.getElementById("UserJoinMessagePwdConfirm");
	//이메일 div	
	var email = document.getElementById("UserJoinEmail");
	var errMsgEmail = document.getElementById("UserJoinMessageEmail");
	//이름 div	
	var uName = document.getElementById("UserJoinUserName");
	var errMsgUname = document.getElementById("UserJoinMessageUserName");
	//폰번호 div	
	var mobile = document.getElementById("UserPhoneNum");
	var errMsgMobile = document.getElementById("UserJoinMessageUserPhoneNum");
	//별명 div	
	var nickName = document.getElementById("joinUserNickname");
	var errMsgNickName = document.getElementById("UserJoinMessageUserNickname");

	//영어 정규식
	// 	var engCheck = /[a-zA-Z]/;
	//영어 정규식 첫글자
	var firstCheck = /^[a-zA-Z].*$/;
	//한글 정규식
	var korCheck = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
	//아이디 영문자 정규식(첫 글자는 영어단어야 한다.)
	//특수문자 반드시 포함
	var pwdCheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-]).{4,20}$/;
	// 	var idCheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-]).{20}$/;
	// 	var idCheck = /^(?=.*[a-zA-Z])[!@#$%^*+=-a-zA-Z]{4,20}$/;
	var idCheck = /^[a-zA-Z][a-zA-Z0-9!@#$%^*+=-]{3,19}$/;
	//email 유효성 검사.
	var emailCheck = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
	//닉네임 유효성 검사
	var nickNameCheck = /^([ㄱ-ㅎ|ㅏ-ㅣ|가-힣]{2,8}|.{4,16})$/;
	//이름 유효성 검사
	var nameCheck = /^[가-힣]{2,5}$/;
	//핸드폰 유효성 검사
	var mobileCheck = /^010|011|017\d{3,4}\d{4}$/;
	// 	var blankCheck =/^""&/;
	//첫글자가 공백이 아닌 것
	// 	var blankCheck = /^\s/;
	//공백이 존재하면 안 된다.
	var blankCheck = /^\S*$/;
	// Function to handle the blur event

	var isValidId = false;
	var isValidPwd = false;
	var isValidConPwd = false;
	var isValidEmail = false;
	var isValidUName = false;
	var isValidMobile = false;
	var isValidNickName = false;

	//		return; -> 을 사용하고 else if를 사용하지 말아보자
	// 	아이디
	function handleBlurEventForId() {
		userId.classList.remove("focusOutline");

		if (userId.value.length == 0) {
			userId.classList.add("errorOutline");
			errMsgId.style.color = "red";
			errMsgId.textContent = "아이디를 입력해주세요.";
			return;
		}

		if (!blankCheck.test(userId.value)) {
			userId.classList.add("errorOutline");
			errMsgId.style.color = "red";
			errMsgId.textContent = "공백은 사용할 수 없습니다.";
			return;
		}

		if (!firstCheck.test(userId.value)) {
			userId.classList.add("errorOutline");
			errMsgId.style.color = "red";
			errMsgId.textContent = "첫글자는 영문이어야 합니다.";
			return;
		}

		if (korCheck.test(userId.value)) {
			userId.classList.add("errorOutline");
			errMsgId.style.color = "red";
			errMsgId.textContent = "한글이 포함되어 있습니다.";
			return;
		}

		if (!idCheck.test(userId.value)) {
			userId.classList.add("errorOutline");
			errMsgId.style.color = "red";
			errMsgId.textContent = "최소 4자, 최대 20자 입니다.";
			return;
		}
		userId.classList.remove("focusOutline");
		errMsgId.textContent = "";
		// All validation checks passed
		isValidId = true;
		updateButtonState();
	}

	function handleFocusEventForId() {
		userId.classList.add("focusOutline");
		userId.classList.remove("errorOutline");
	}
	// 	비밀번호
	function handleBlurEventForPwd() {
		// Function to handle the focus event
		pwd.classList.remove("focusOutline");

		if (pwd.value.length == 0) {
			pwd.classList.add("errorOutline");
			errMsgPwd.style.color = "red";
			errMsgPwd.textContent = "비밀번호를 입력해주세요.";
			return;
		}

		if (!firstCheck.test(pwd.value)) {
			pwd.classList.add("errorOutline");
			errMsgPwd.style.color = "red";
			errMsgPwd.textContent = "첫글자는 영문이어야 합니다.";
			return;
		}

		if (korCheck.test(pwd.value)) {
			pwd.classList.add("errorOutline");
			errMsgPwd.style.color = "red";
			errMsgPwd.textContent = "한글이 포함되어 있습니다.";
			return;
		}

		if (!pwdCheck.test(pwd.value)) {
			pwd.classList.add("errorOutline");
			errMsgPwd.style.color = "red";
			if (pwd.value.length < 8) {
				errMsgPwd.textContent = "최소 8자 이상이어야 합니다.";
			} else {
				errMsgPwd.textContent = "영문과 숫자와 특수문자를 조합해서 입력해 주세요.";
			}
			return;
		}

		pwd.classList.remove("focusOutline");
		errMsgPwd.style.color = "";
		errMsgPwd.textContent = "";
		isValidPwd = true;
		updateButtonState();
	}

	function handleFocusEventForPwd() {
		pwd.classList.add("focusOutline");
		pwd.classList.remove("errorOutline");
	}

	// 	비밀번호 확인
	function handleBlurEventForPwdConfirm() {

		conPwd.classList.remove("focusOutline");

		if (conPwd.value.length == 0) {
			conPwd.classList.add("errorOutline");
			errMsgConPwd.style.color = "red";
			errMsgConPwd.textContent = "비밀번호를 입력해주세요.";
			return;
		}

		if (conPwd.value != pwd.value) {
			conPwd.classList.add("errorOutline");
			errMsgConPwd.style.color = "red";
			errMsgConPwd.textContent = "비밀번호가 일치하지 않습니다.";
			return;
		}

		conPwd.classList.remove("focusOutline");
		errMsgConPwd.textContent = "";
		isValidConPwd = true;
		updateButtonState();
	}

	function handleFocusEventForPwdConfirm() {
		conPwd.classList.add("focusOutline");
		conPwd.classList.remove("errorOutline");
	}
	// 	이메일확인
	function handleBlurEventForEmail() {

		email.classList.remove("focusOutline");
		if (email.value.length == 0) {
			email.classList.add("errorOutline");
			errMsgEmail.style.color = "red";
			errMsgEmail.textContent = "이메일을 입력해 주세요.";
			return;
		}

		if (!emailCheck.test(email.value)) {
			email.classList.add("errorOutline");
			errMsgEmail.style.color = "red";
			errMsgEmail.textContent = "이메일 형식을 확인해 주세요";
			return;
		}
		// Remove the class to reset the outline color
		email.classList.remove("errorOutline");
		errMsgEmail.textContent = ""; // Clear the error message
		isValidEmail = true;
		updateButtonState();

	}

	function handleFocusEventForEmail() {
		email.classList.add("focusOutline");
		email.classList.remove("errorOutline");
	}

	// 	uName / errMsgUname

	function handleBlurEventForuName() {

		uName.classList.remove("focusOutline");

		if (uName.value.length == 0) {
			uName.classList.add("errorOutline");
			errMsgUname.style.color = "red";
			errMsgUname.textContent = "이름을 입력 해 주세요.";
			return;
		}

		if (!blankCheck.test(uName.value)) {
			uName.classList.add("errorOutline");
			errMsgUname.style.color = "red";
			errMsgUname.textContent = "공백은 사용할 수 없습니다.";
			return;
		}

		if (!nameCheck.test(uName.value)) {
			uName.classList.add("errorOutline");
			errMsgUname.style.color = "red";
			errMsgUname.textContent = "이름은 한국어만 가능합니다.";
			return;
		}

		uName.classList.remove("errorOutline");
		errMsgUname.style.color = "";
		errMsgUname.textContent = "";
		isValidUName = true;
		updateButtonState();

	}

	function handleFocusEventForuName() {
		uName.classList.add("focusOutline");
		uName.classList.remove("errorOutline");
	}

	// 	mobile / errMsgMobile

	function handleBlurEventForMobile() {

		mobile.classList.remove("focusOutline");

		if (mobile.value.length == 0) {
			mobile.classList.add("errorOutline");
			errMsgMobile.style.color = "red";
			errMsgMobile.textContent = "번호를 입력해주세요.";
			return;
		}

		if (!blankCheck.test(mobile.value)) {
			mobile.classList.add("errorOutline");
			errMsgMobile.style.color = "red";
			errMsgMobile.textContent = "공백은 사용할 수 없습니다.";
			return;
		}

		if (!mobileCheck.test(mobile.value)) {
			mobile.classList.add("errorOutline");
			errMsgMobile.style.color = "red";
			errMsgMobile.textContent = "번호 형식을 지켜주세요. 010/011/017만 지원합니다.";
			return;
		}

		mobile.classList.remove("errorOutline");
		errMsgMobile.style.color = "";
		errMsgMobile.textContent = "";
		isValidMobile = true;
		updateButtonState();

	}

	function handleFocusEventForMobile() {
		mobile.classList.add("focusOutline");
		mobile.classList.remove("errorOutline");
	}

	// 	nickName / errMsgNickName

	function handleBlurEventForNickName() {

		nickName.classList.remove("focusOutline");

		if (nickName.value.length == 0) {
			nickName.classList.add("errorOutline");
			errMsgNickName.style.color = "red";
			errMsgNickName.textContent = "닉네임을 입력 해 주세요.";
			return;
		}

		if (!blankCheck.test(nickName.value)) {
			nickName.classList.add("errorOutline");
			errMsgNickName.style.color = "red";
			errMsgNickName.textContent = "공백은 사용할 수 없습니다.";
			return;
		}

		if (!nickNameCheck.test(nickName.value)) {
			nickName.classList.add("errorOutline");
			errMsgNickName.style.color = "red";
			errMsgNickName.textContent = "너무 짧습니다. 최소 4자(한글 2자) 이상 입력하세요.";
			return;
		}

		nickName.classList.remove("errorOutline");
		errMsgNickName.style.color = "";
		errMsgNickName.textContent = "";
		isValidNickName = true;
		updateButtonState();

	}

	function handleFocusEventForNickName() {
		nickName.classList.add("focusOutline");
		nickName.classList.remove("errorOutline");
	}

	// Add event listener for when the input field loses focus (blurred)
	userId.addEventListener("blur", handleBlurEventForId);
	// Add event listener for when the input field gains focus
	userId.addEventListener("focus", handleFocusEventForId);

	pwd.addEventListener("blur", handleBlurEventForPwd);
	pwd.addEventListener("focus", handleFocusEventForPwd);

	conPwd.addEventListener("blur", handleBlurEventForPwdConfirm);
	conPwd.addEventListener("focus", handleFocusEventForPwdConfirm);

	email.addEventListener("blur", handleBlurEventForEmail);
	email.addEventListener("focus", handleFocusEventForEmail);

	uName.addEventListener("blur", handleBlurEventForuName);
	uName.addEventListener("focus", handleFocusEventForuName);

	mobile.addEventListener("blur", handleBlurEventForMobile);
	mobile.addEventListener("focus", handleFocusEventForMobile);

	nickName.addEventListener("blur", handleBlurEventForNickName);
	nickName.addEventListener("focus", handleFocusEventForNickName);

	function performVerFnc() {

		if (isValidUName == true && isValidMobile == true) {

			var verifiedUserName = document.getElementById("UserJoinUserName").value;
			var verifiedPhoneNum = document.getElementById("UserPhoneNum").value;

			alert("인증이 완료되었습니다.");

			document.getElementById("UserPhoneNumVerifiedNum").disabled = false;
			document.getElementById("UserPhoneNumVerifiedNum").style.backgroundColor = "#ccc";
			document.getElementById("UserPhoneNumVerifiedNum").value = verifiedPhoneNum;
			document.getElementById("UserPhoneNumVerifiedNum").disabled = true;

			document.getElementById("VerifiedUserName").disabled = false;
			document.getElementById("VerifiedUserName").style.backgroundColor = "#ccc";
			document.getElementById("VerifiedUserName").value = verifiedUserName;
			document.getElementById("VerifiedUserName").disabled = true;

		} else {
			return;
		}

	}

	function isRequiredTermsChecked() {
		var requiredCheckboxes = document.getElementsByName("terms");
		var allRequiredChecked = true;

		for (var i = 0; i < requiredCheckboxes.length; i++) {
			if (!requiredCheckboxes[i].checked) {
				allRequiredChecked = false;
				break;
			}
		}

		return allRequiredChecked;
	}

	// 호출 시 필수 약관 동의 체크만 검사
	function isAllChecked() {
		var allTermsChecked = document.getElementById("allTerms").checked;

		if (allTermsChecked) {
			return isRequiredTermsChecked();
		}

		return false;
	}

	// 회원가입 버튼 
	var joinButton = document.getElementById("danawaUserJoinIn");
	// 모든 필수 약관 동의 체크박스 엘리먼트 가져오기
	var allTermsCheckbox = document.getElementById("allTerms");
	var requiredCheckboxes = document.getElementsByName("terms");
	// 모든 필드 유효성 검사 결과
	var allFieldsValid = false;

	function updateButtonState() {
		var allRequiredChecked = isAllChecked();

		if (isValidId && isValidPwd && isValidConPwd && isValidEmail
				&& isValidUName && isValidMobile && isValidNickName
				&& allRequiredChecked) {
			joinButton.removeAttribute("disabled");
			joinButton.classList.add("activeButton");
		} else {
			joinButton.setAttribute("disabled", "disabled");
			joinButton.classList.remove("activeButton");
		}
	}
</script>

</html>