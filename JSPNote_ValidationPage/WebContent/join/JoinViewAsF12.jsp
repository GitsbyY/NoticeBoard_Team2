<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JoinView</title>
	<script type="text/javascript">
	
	</script>
</head>
<body>
	<div id="danawa-member-joinStep-container" class="container content__login content__login--join">
		<!-- search__wrap -->
		<form name="frm_Info" method="post" id="danawa-member-joinStep-form-id" data-gtm-form-interact-id="0">
			<div class="search__wrap">
				<!-- search__tab -->
				<div class="search__tab" role="tablist">
					<button id="danawa-member-joinStep-tap-member" class="search__tab-button search__tab-button--select" role="tab" aria-selected="true">
						<h3 id="danawa-member-joinStep-tap-member-on">개인회원</h3>
					</button>
					<button id="danawa-member-joinStep-tap-company" class="search__tab-button" role="tab" aria-selected="false">
						<h3 id="danawa-member-joinStep-tap-company-on">사업자 회원</h3>
					</button>
				</div>
				<!-- easy join -->
				<div class="easy-join" id="danawa-member-joinStep-easyJoin">
					<div class="box__title"><span class="text__title">자주 사용하는 아이디로 간편 가입</span></div>
					<div class="box__sns-join">
						
							
							
								<div class="box__link">
									<a href="javascript:;" class="link_sns_btn link__sns link__sns--kakao" id="danawa-member-joinStep-sns-kakao">
										<div class="thumb__sns"></div>
										<span class="title__sns">카카오</span>
									</a>
								</div>
								<div class="box__link">
									<a href="javascript:;" class="link_sns_btn link__sns link__sns--naver" id="danawa-member-joinStep-sns-naver">
										<div class="thumb__sns"></div>
										<span class="title__sns">네이버</span>
									</a>
								</div>
								<div class="box__link">
                                    <a href="javascript:;" class="link_sns_btn link__sns link__sns--enuri" id="danawa-member-joinStep-sns-enuri">
                                        <div class="thumb__sns"></div>
                                        <span class="title__sns">에누리</span>
                                    </a>
                                </div>
							
						
					</div>
				</div>
				<!-- //easy join -->
				<!-- join title -->
				<div class="join-title">
					<div class="box__title"><span class="text__title">일반 회원가입</span></div>
				</div>
				<!-- //join title-->
				<!--// search__tab -->
				<!--// notice-text -->
				<div class="terms__wrap">
					<div class="terms">
						<div class="terms__title">
							<!-- 체크박스 모듈 -->
							<div class="terms__checkbox">
								<input type="checkbox" class="input-check" id="danawa-member-joinStep-checkBox-agree-all">
								<label for="danawa-member-joinStep-checkBox-agree-all">약관 모두 동의하기</label>
							</div>
						</div>
						<div class="terms__subtitle">
							<!-- 체크박스 모듈 -->
							<div class="terms__checkbox">
								<input id="danawa-member-joinStep-checkBox-agree-age" class="input-check" type="checkbox">
								<label for="danawa-member-joinStep-checkBox-agree-age">만 14세 이상입니다. <strong>(필수)</strong></label>
							</div>
						</div>
						<div class="terms__subtitle">
							<!-- 체크박스 모듈 -->
							<div class="terms__checkbox">
								<input type="checkbox" class="input-check" id="danawa-member-joinStep-checkBox-agree-service">
								<label for="danawa-member-joinStep-checkBox-agree-service">서비스 이용 약관 <strong>(필수)</strong></label>
							</div>
							<button class="terms__toggle">내용보기</button>
							<div class="terms__desc">
								<!-- 이용약관 설정 -->
								<textarea readonly="readonly" class="textarea_member" id="danawa-member-joinStep-member-agreement" cols="" rows="" title="개인회원 서비스 이용 약관 안내 내용">									
제 1장 총칙

제 1 조 (목 적)

								</textarea>
							</div>
						</div>
					</div>
					<div class="terms__subtitle">
						<!-- 체크박스 모듈 -->
						<div class="terms__checkbox">
							<input type="checkbox" class="input-check" id="danawa-member-joinStep-checkBox-agree-privacy">
							<label for="danawa-member-joinStep-checkBox-agree-privacy">개인정보 수집 및 이용 <strong>(필수)</strong></label>
						</div>
						<button class="terms__toggle terms__toggle--hide">내용보기</button>
						<div class="terms__desc">
							<!-- 이용약관 설정 -->
							<div class="agree_textarea_wrap" id="danawa-member-joinStep-guide-textDesc-privacy" style="display: block;" title="개인정보 수집 및 이용 안내 내용">

								<!-- priv_r_tbl -->
								<div class="priv_r_tbl">
									<table summary="개인정보 수집방침 테이블로 구분, 수집/이용항목, 수집/이용 목적 정보 안내">
										<caption class="blind">개인정보 수집방침</caption>
										<colgroup>
											<col class="col_1">
											<col class="col_2">
											<col class="col_3">
											<col class="col_4">
										</colgroup>
										<thead>
										<tr>
											<th colspan="2" scope="col" class="col_1">목적</th>
											<th scope="col" class="col_3">항목</th>
											<th scope="col" class="col_4">보유기간</th>
										</tr>
										</thead>
										<tbody>
										<tr>
											<td colspan="2" class="col_1" id="danawa-member-private-data-purpose">개인 식별, 고지사항 전달, 서비스 관련 상담, 맞춤형 서비스 제공, 민원사항 처리 등</td>
											<td class="col_3" id="danawa-member-private-data-info">ID, 비밀번호, 이메일주소, 이름, 닉네임, 휴대폰번호, 만 14세 이상 여부</td>
											<td class="col_4 col_4_txt">회원 탈퇴 시까지</td>
										</tr>
										<tr>
											<td colspan="2" class="col_1" id="danawa-member-private-second-data-purpose">본인 확인 및 식별, 연령 인증, 맞춤형 서비스 제공</td>
											<td class="col_3" id="danawa-member-private-second-data-info">성명, 생년월일, 성별, 내외국인정보, DI, CI, 통신사정보, 휴대폰번호</td>
											<td class="col_4 col_4_txt" id="danawa-member-private-second-holding-period">회원 탈퇴 시까지</td>
										</tr>
										</tbody>
									</table>
									<p><br>※ 위의 개인정보 제공에 대한 동의를 거부할 권리가 있으나, 거부할 경우 가입에 제한을 받을 수 있습니다.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="join__wrap">
					<input type="hidden" name="hdnMemberType" id="danawa-member-joinStep-memberType" value="G">
					<input type="hidden" id="danawa-member-joinStep-hidden-email" name="memberEmail">
					<input type="hidden" name="url" id="danawa-member-joinStep-encodedRedirectUrl" value="https%3A%2F%2Fwww.danawa.com%2F">

					<div class="join join--id">
						<label for="danawa-member-joinStep-member-id">아이디</label>
						<input class="input-info red_txt" type="text" name="memberId" id="danawa-member-joinStep-member-id" placeholder="영문 4자 이상, 최대 20자" data-gtm-form-interact-field-id="0">
						<button class="btn_del"><span class="ico i_del"></span></button>
					</div>
					<div class="txt_error_area" style="">
						<p class="err_txt red_txt" id="danawa-member-joinStep-message-id" aria-live="assertive"></p>
					</div>
					<div class="join join--pwd">
						<label for="danawa-member-joinStep-member-password">비밀번호</label>
						<input class="input-info" type="password" name="memberPwd" id="danawa-member-joinStep-member-password" placeholder="숫자, 영문, 특수문자 포함 최소 8자 이상" data-gtm-form-interact-field-id="1">
						<button class="btn_del on"><span class="ico i_del"></span></button>
					</div>
					<div class="txt_error_area" style="">
						<p class="err_txt blue_txt" id="danawa-member-joinStep-message-password" aria-live="assertive"></p>
					</div>
					<div class="join join--pwdCk join--error">
						<label for="danawa-member-joinStep-member-passwordConfim">비밀번호 확인</label>
						<input class="input-info red_txt modify_error" type="password" name="memberPwdConfirm" id="danawa-member-joinStep-member-passwordConfim" placeholder="숫자, 영문, 특수문자 포함 최소 8자 이상" data-gtm-form-interact-field-id="2">
						<button class="btn_del"><span class="ico i_del"></span></button>
					</div>
					<div class="txt_error_area" style="">
						<p class="err_txt red_txt" id="danawa-member-joinStep-message-passwordConfirm" aria-live="assertive">비밀번호 확인을 입력해 주세요.</p>
					</div>

					<div class="join join--email">
						<label for="danawa-member-joinStep-member-email-emailFirst">이메일 주소</label>
						<input class="input-info red_txt modify_error" type="text" name="email" id="danawa-member-joinStep-member-email-emailFirst" placeholder="이메일 주소 입력" data-gtm-form-interact-field-id="3">
						<button class="btn_del"><span class="ico i_del"></span></button>
						<p>가입 완료를 위한 이메일 인증이 진행되니 정확한 이메일 주소를 입력해주시기 바랍니다.</p>
					</div>
					<div class="txt_error_area" style="">
						<p class="err_txt red_txt" id="danawa-member-joinStep-message-email" aria-live="assertive"></p>
					</div>

					<div class="box__certify">
						<p class="text__phone">휴대폰번호</p>
						<div class="box__certify-form">
							<div class="box__certify-input">
								<label>
									<input type="text" title="전송된 인증번호 입력" name="cellphone" disabled="">
								</label>
							</div>
							<button type="button" class="button__certify" id="danawa-member-realChk-button-checkPlus" onclick="MEMBER_LOG_UTILS.insightClickEventLog('본인인증_회원가입_PC');">휴대폰 번호로 본인인증 하기</button>
							<p class="text__noti" id="danawa-member-realChk-noti">인증 대기</p>
						</div>
					</div>

					<div class="join join--disable">
						<label for="danawa-member-joinStep-member-name">이름</label>
						<input type="text" disabled="" name="memberName" id="danawa-member-joinStep-member-name">
					</div>
					<div class="txt_error_area" style="">
						<p class="err_txt" id="danawa-member-joinStep-message-name" aria-live="assertive"></p>
					</div>

					<div class="join" style="padding-top: 0; margin-top: 0;">
						<p class="text__nameinfo">본인인증 시 이름은 자동으로 입력됩니다.</p>
					</div>

					<div class="join join--nickname2">
						<label for="danawa-member-joinStep-member-nickname">닉네임</label>
						<input class="input-info" type="text" name="memberNickname" id="danawa-member-joinStep-member-nickname" placeholder="한글 8자, 영문 16자 까지 가능">
						<button class="btn_del"><span class="ico i_del"></span></button>
					</div>
					<div class="txt_error_area" style="">
						<p class="err_txt" id="danawa-member-joinStep-message-nickname" aria-live="assertive"></p>
					</div>
				</div>
				<div id="danawa-member-joinStep-company-self" class="join__wrap join__wrap--business" style="display:none;">
					<div class="join">
						<label for="danawa-member-joinStep-company-name">회사명</label>
						<input class="input-info" type="text" name="joinCompany" id="danawa-member-joinStep-company-name">
					</div>
					<div class="join">
						<label for="danawa-member-joinStep-company-boss">대표자명</label>
						<input class="input-info" type="text" name="joinBoss" id="danawa-member-joinStep-company-boss">
					</div>
					<div class="join">
						<label for="danawa-member-joinStep-company-license">사업자 등록 번호</label>
						<input class="input-info" type="text" name="joinLicense1" id="danawa-member-joinStep-company-license" placeholder="숫자만 입력">
					</div>
				</div>

				<div class="box__lifemember" id="danawa-member-lifeMember">
					<div class="text__title">회원 상태 유지 기간</div>
					<div class="text__info">선택하신 기간 동안 로그인 활동이 없어도 휴면회원으로 전환되지 <br>않으며, 다나와 서비스를 지속적으로 이용하실 수 있습니다.</div>
					<div class="box__radio">
						<div class="form__radio">
							<input type="radio" class="input-check" 
							 id="danawa-member-lifeMemberAgree" name="lifeMemberAgree" 
							  value="on">
							<label for="danawa-member-lifeMemberAgree">탈퇴 시까지</label>
						</div>
						<div class="form__radio">
							<input type="radio" class="input-check" 
							id="danawa-member-lifeMemberDisagree" name="lifeMemberAgree" 
							value="off">
							<label for="danawa-member-lifeMemberDisagree">1년</label>
						</div>
					</div>
				</div>

				<div class="terms__subtitle marketing">
					<!-- 체크박스 모듈 -->
					<div class="terms__checkbox">
						<input type="checkbox" id="danawa-member-joinStep-marketing-checkBox-all-agree">
						<label for="danawa-member-joinStep-marketing-checkBox-all-agree">마케팅 활용 및 광고성 정보 수신 동의<span>(선택)</span></label>
					</div>
					<button class="terms__toggle terms__toggle--hide">내용보기</button>
					<div class="terms__desc">
						<p>고객님께서는 동의를 거부할 수 있으며, 동의하지 않아도 가입이 가능합니다.</p>
					</div>
					<div class="terms__marketing">
						<div class="terms__checkbox">
							<input type="checkbox" id="danawa-member-joinStep-marketing-checkBox-agree-mailing" name="useMailing">
							<label for="danawa-member-joinStep-marketing-checkBox-agree-mailing">이메일</label>
						</div>
						<div class="terms__checkbox">
							<input type="checkbox" id="danawa-member-joinStep-marketing-checkBox-agree-sms" name="useSms">
							<label for="danawa-member-joinStep-marketing-checkBox-agree-sms">SMS</label>
						</div>
					</div>
				</div>

				<button id="danawa-member-joinStep-memberJoin" class="button__join" disabled="disabled">회원가입</button>
			</div>
			<!-- 인증받은 사용자 정보 암호화 데이타입니다. -->
			<input type="hidden" name="enc_data">

			<!-- 업체에서 응답받기 원하는 데이타를 설정하기 위해 사용할 수 있으며, 인증결과 응답시 해당 값을 그대로 송신합니다. 해당 파라미터는 추가하실 수 없습니다. -->
			<input type="hidden" name="param_r1" value="">
			<input type="hidden" name="param_r2" value="">
			<input type="hidden" name="param_r3" value="">

			<!-- 인증타입( value 자동 설정됨 : IPIN, CHECKPLUS) -->
			<input type="hidden" name="niceType">
		</form>
	</div>
</body>


</html>