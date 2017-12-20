<%@ page contentType="text/html;charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("euc-kr");
	String email = request.getParameter("email");
%>
<html>
<head>
<title>회원가입</title>
<link href="../css/login.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../js/login.js"></script>
<script>
	/* 로그인 스크립트 */
	function loginCheck() {
		if (document.loginFrm.email.value == "") {
			alert("이메일를 입력해 주세요.");
			document.loginFrm.email.focus();
			return;
		}
		if (document.loginFrm.pass.value == "") {
			alert("비밀번호를 입력해 주세요.");
			document.loginFrm.pass.focus();
			return;
		}
		document.loginFrm.submit();
	}

	/* 회원가입 스크립트 */
	function cambiar_login() {
		document.querySelector('.cont_forms').className = "cont_forms cont_forms_active_login";
		document.querySelector('.cont_form_login').style.display = "block";
		document.querySelector('.cont_form_sign_up').style.opacity = "0";

		setTimeout(function() {
			document.querySelector('.cont_form_login').style.opacity = "1";
		}, 400);

		setTimeout(
				function() {
					document.querySelector('.cont_form_sign_up').style.display = "none";
				}, 200);
	}

	function cambiar_sign_up(at) {
		document.querySelector('.cont_forms').className = "cont_forms cont_forms_active_sign_up";
		document.querySelector('.cont_form_sign_up').style.display = "block";
		document.querySelector('.cont_form_login').style.opacity = "0";

		setTimeout(function() {
			document.querySelector('.cont_form_sign_up').style.opacity = "1";
		}, 100);

		setTimeout(function() {
			document.querySelector('.cont_form_login').style.display = "none";
		}, 400);
	}
	function ocultar_login_sign_up() {
		document.querySelector('.cont_forms').className = "cont_forms";
		document.querySelector('.cont_form_sign_up').style.opacity = "0";
		document.querySelector('.cont_form_login').style.opacity = "0";
		setTimeout(
				function() {
					document.querySelector('.cont_form_sign_up').style.display = "none";
					document.querySelector('.cont_form_login').style.display = "none";
				}, 500);
	}

	/* 회원가입 액션 */
	function emailCheck(email) {
		frm = document.regFrm;
		if (email == "") {
			frm.email.style.backgroundColor = "#F7F2E0";
			frm.email.style.backgroundImage = "url('20.png')";
			return;
		} else {
			frm.email.style.backgroundImage = "url()";
		}
		var str = document.regFrm.email.value;
		var atPos = str.indexOf('@');
		var atLastPos = str.lastIndexOf('@');
		var dotPos = str.indexOf('.');
		var spacePos = str.indexOf(' ');
		var commaPos = str.indexOf(',');
		var eMailSize = str.length;
		if (atPos > 1 && atPos == atLastPos && dotPos > 3 && spacePos == -1
				&& commaPos == -1 && atPos + 1 < dotPos
				&& dotPos + 1 < eMailSize)
			;
		else {
			alert('E-mail주소 형식이 잘못되었습니다.\n\r다시 입력해 주세요!');
			document.regFrm.email.focus();
			return;
		}
		url = "emailCheck.jsp?email=" + email;
		window.open(url, "emailCheck", "width=500,height=300");
	}

	function idCheck(id) {
		frm = document.regFrm;

		if (id == "") {
			frm.id.style.backgroundColor = "#FBEFEF";
			frm.id.style.backgroundImage = "url('20.png')";
			return;
		} else {
			frm.id.style.backgroundImage = "url()";
		}
		var str = document.regFrm.id.value;
	}
	function passCheck(pass) {
		frm = document.regFrm;
		if (pass == "") {
			frm.pass.style.backgroundColor = "#F2FBEF";
			frm.pass.style.backgroundImage = "url('20.png')";
			return;
		} else {
			frm.pass.style.backgroundImage = "url()";
		}
		var str = document.regFrm.pass.value;
	}
	function repassCheck(repass) {
		frm = document.regFrm;
		if (repass == "") {
			frm.repass.style.backgroundColor = "#F5EFFB";
			frm.repass.style.backgroundImage = "url('20.png')";
			return;
		} else {
			frm.repass.style.backgroundImage = "url()";
		}
		var str = document.regFrm.repass.value;
	}
</script>
</head>
<!-- <body bgcolor="#FFFFCC" onLoad="regFrm.email.focus()"> -->
<div class="cotn_principal">
	<!-- 전체화면 -->
	<div class="cont_centrar">
		<!-- 네모밑에까지 -->
		<div class="cont_login">
			<div class="cont_info_log_sign_up">
				<!-- 로그인 큰상자 -->
				<div class="col_md_login">
					<div class="cont_ba_opcitiy">
						<h2>LOGIN</h2>
						<p>이메일과 비밀번호를 입력해주세요</p>
						<button class="btn_login" onclick="cambiar_login()">LOGIN</button>
					</div>
				</div>
				<div class="col_md_sign_up">
					<div class="cont_ba_opcitiy">
						<h2>SIGN UP</h2>
						<p>회원가입을 해주세요</p>
						<button class="btn_sign_up" onclick="cambiar_sign_up()">SIGN
							UP</button>
						<!-- 회원가입 버튼-->
					</div>
				</div>
			</div>
			<!-- 로그인 큰상자 -->
			<div class="cont_back_info">
				<!-- 중간위치 위에서 측정값 -->
				<div class="cont_img_back_grey">
					<!-- 백그라운드 뒤에 사진 크기 -->
					<img
						src="https://images.unsplash.com/42/U7Fc1sy5SCUDIu4tlJY3_NY_by_PhilippHenzler_philmotion.de.jpg?ixlib=rb-0.3.5&q=50&fm=jpg&crop=entropy&s=7686972873678f32efaf2cd79671673d"
						alt="" />
				</div>
			</div>
			<div class="cont_forms">
				<div class="cont_img_back_">
					<img
						src="https://images.unsplash.com/42/U7Fc1sy5SCUDIu4tlJY3_NY_by_PhilippHenzler_philmotion.de.jpg?ixlib=rb-0.3.5&q=50&fm=jpg&crop=entropy&s=7686972873678f32efaf2cd79671673d"
						alt="" />
				</div>
				<%
					if (email != null) {
				%>
				<b><%=email%></b>님 환영합니다.<br /> <a href="logout.jsp">로그아웃</a>
				<%
					} else {
				%>

				<form name="loginFrm" method="post" action="loginProc.jsp">
					<!-- 클릭후 로그인 상자 -->
					<div class="cont_form_login">
						<!-- 클릭후 로그인 상자 -->
						<a href="#" onclick="ocultar_login_sign_up()"><i
							class="material-icons">&#xE5C4;</i></a>
						<h2>LOGIN</h2>
						<input type="text" placeholder="Email" name="email" value="" /> <input
							type="password" placeholder="Password" name="pass" value="" />
						<button class="btn_login" onclick="loginCheck()">로그인확인</button>
					</div>
				</form>
				<%
					}
				%>
				<form name="regFrm" method="post" action="memberProc.jsp">
					<!-- 클릭후 회원가입 상자 -->
					<div class="cont_form_sign_up">
						<a href="#" onclick="ocultar_login_sign_up()"><i
							class="material-icons">&#xE5C4;</i></a>
						<h2>SIGN UP</h2>
						<input type="text" placeholder="Email" name="email"
							onblur="emailCheck(this.form.email.value)" /> <input type="test"
							placeholder="User" name="id" onblur="idCheck(this.form.id.value)" />
						<input type="password" placeholder="Password" name="pass"
							onblur="passCheck(this.form.pass.value)" /><input
							type="password" placeholder="Confirm Password" name="repass"
							onblur="repassCheck(this.form.repass.value)" />
						<button type="button" class="btn_sign_up" onclick="inputCheck()">회원가입확인</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>