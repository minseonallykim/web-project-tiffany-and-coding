<%@page import="com.itwill.shop.user.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
//로그인 된 상태일 때 로그인폼 접근 시 마이페이지로 이동

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Tiffany&coding</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel=stylesheet href="css/styles.css" type="text/css">
<link rel=stylesheet href="css/user.css" type="text/css">
 
<script type="text/javascript">
	function userCreate() {
		f.action = "user_write_form.jsp";
		f.submit();
	}

	function login() {
		if (f.userId.value == "") {
			alert("사용자 아이디를 입력하십시요.");
			f.userId.focus();
			return false;
		}
		if (f.password.value == "") {
			alert("비밀번호를 입력하십시요.");
			f.password.focus();
			return false;
		}
		f.action = "user_login_action.jsp";
		f.submit();
	}
</script>
	<!-- mouse effect start -->
	<jsp:include page="include_mouseffect.jsp"/>
	<!-- mouse effect end -->
</head>
<body bgcolor=#FFFFFF text=#000000 leftmargin=0 topmargin=0
	marginwidth=0 marginheight=0>
	<!-- container start-->
	<div id="container">
		<!-- header start -->
		<div id="header">
			<!-- include_common_top.jsp start-->
			<jsp:include page="include_common_top.jsp" />
			<!-- include_common_top.jsp end-->
		</div>
		<!-- header end -->
		<!-- navigation start-->
		<div id="navigation">
			<!-- include_common_left.jsp start-->
			<jsp:include page="include_common_left.jsp" />
			<!-- include_common_left.jsp end-->
		</div>
		<!-- navigation end-->
		<!-- wrapper start -->
		<div id="wrapper">
			<!-- content start -->
			<!-- include_content.jsp start-->
			<div id="content">

				<table width="400px"  border=0 cellpadding=0 cellspacing=0>
					<tr>
						<td><br />
							<table  border=0 cellpadding=0 cellspacing=0>
								<tr>
									<td bgcolor="#FFFFFF" height="50">&nbsp;&nbsp;<b>로그인</b></td>
								</tr>
							</table> <!-- login Form  -->
							<form name="f" method="post">
								<table border="solid 1px" bordercolor="#EAEAEA"  cellpadding="0" cellspacing="1" bgcolor=#CCCCCC>
									<tr>
										<td width=100 align=center bgcolor="#000000" style='color:white'  height="22">아이디</td>
										<td width=490 align="left" bgcolor="ffffff"	style="padding-left: 10px">
										<input type="text" style="width: 150" name="userId"	value="">&nbsp;&nbsp;
									</tr>
									<tr>
										<td width=100 align=center bgcolor="#000000" style='color:white' height="22">비밀번호</td>
										<td width=490 align="left" bgcolor="ffffff" style="padding-left: 10px">
										<input type="password" style="width: 150" name="password" value="">&nbsp;&nbsp;
									</tr>
								</table>
							</form> <br />
							<table border="0" cellpadding="0" cellspacing="1">
								<tr>
									<td align=center height=150>
									<input type="button" value="로그인" onClick="login();"> &nbsp; 
									<input type="button" value="회원가입" onClick="userCreate()"></td>
								</tr>
							</table></td>
					</tr>
				</table>
			</div>
			<!-- include_content.jsp end-->
			<!-- content end -->
		</div>
		<!--wrapper end-->
		<div id="footer">
			<!-- include_common_bottom.jsp start-->
			<jsp:include page="include_common_bottom.jsp" />
			<!-- include_common_bottom.jsp end-->
		</div>
	</div>
	<!--container end-->
</body>
</html>
