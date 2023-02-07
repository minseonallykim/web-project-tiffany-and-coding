<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel=stylesheet href="css/style.css" type="text/css">
<link rel=stylesheet href="css/board.css" type="text/css">
<script type="text/javascript">
	function boardCreate(){
		if(f.title.value == ""){
			alert("제목을 입력하세요.");
			f.title.focus();
			return false;
		}
		if (f.writer.value == "") {
			alert("작성자를 입력하세요.");
			f.writer.focus();
			return false;
		}
		if (f.content.value == "") {
			alert("내용을 입력하세요.");
			f.content.focus();
			return false;
		}
		f.action = "board_write_action.jsp";
		f.method = "POST";
		f.submit();
	}
	function boardList(){
		f.action = "board_list.jsp";
		f.submit();
	}
</script>
<title>Tiffany&Co 게시판 글쓰기</title>
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
				<table border=0 cellpadding=0 cellspacing=0>
					<tr>
						<td><br />
							<!-- write Form  -->
							<form name="f" method="post">
								<table border="0" cellpadding="10px" cellspacing="1" width="590" bgcolor="#CCCCCC">
									<tr>
										<td width=100 align=center bgcolor="#000000" style='color:white' height="22">제 목</td>
										<td width=490 bgcolor="ffffff" style="padding-left: 10px" align="left">
										<input type="text" style="width: 100% ;height: 100%" name="title"></td>
									</tr>
									<tr>
										<td width=100 align=center bgcolor="#000000" style='color:white' height="22">작성자</td>
										<td width=490 bgcolor="ffffff" style="padding-left: 10px" align="left">
										<input type="text" style="width: 100% ;height: 100%" name="writer"></td>
									</tr>
									<tr>
										<td width=100 align=center bgcolor="#000000" style='color:white'>내 용</td>
										<td width=490 bgcolor="ffffff" style="padding-left: 10px" align="left">
										<textarea name="content" class="textarea" style="width: 100% ;height: 100%" rows="14"></textarea></td>
									</tr>
								</table>
							</form> <br>
							<table width=590 height=200 border=0 cellpadding=50 cellspacing=0>
								<tr>
									<td align=center><input type="button" value="글쓰기 완료" onClick="boardCreate()"> &nbsp;&nbsp; 
									<input type="button" value="취 소" onClick="boardList()"></td>
								</tr>
							</table></td>
					</tr>
				</table>
			</div>
			<!-- include_content.jsp end-->
			<!-- content end -->
		</div>
		<!--wrapper end-->
		
	</div>
	<!--container end-->
	<div id="footer">
			<!-- include_common_bottom.jsp start-->
			<jsp:include page="include_common_bottom.jsp" />
			<!-- include_common_bottom.jsp end-->
		</div>
</body>
</html>