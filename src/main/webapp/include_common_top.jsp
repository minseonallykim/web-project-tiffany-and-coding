<%@page import="com.itwill.shop.user.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String sUserId = (String)session.getAttribute("sUserId");
User sUser = (User)session.getAttribute("sUser");


%>
<!DOCTYPE html>
<!-- 

int cart_item_count=0;
	String sUserId=(String)session.getAttribute("sUserId");
	if(sUserId!=null){
		CartService cartService=new CartService();
		cart_item_count = cartService.getCartItemByUserId(sUserId).size();
	}

-->
<script type="text/javascript">
function mainsearch(){
	alert("상품 검색");
	console.log(mainsearchform.mainsearchkeyword.value);
	mainsearchform.action = "shop_main.jsp";
	mainsearchform.method='POST';
	mainsearchform.submit();
}
</script>

<div id="menu">
	<ul>
		<!-- 게시판 아이콘 -->	
		<li id="toboard" title="게시판" ><a href="board_list.jsp" ><img src="image/shopmain_board.png" ></a></li>
		<!-- 로그아웃 상태:로그인 아이콘, 로그인 후:로그아웃 아이콘 -->	
		<!-- 로그인 아이콘 -->	
		<%if(sUserId == null){ %>
		<li id="login" title="로그인" ><a href="user_login_form.jsp" ><img src="image/login_icon.png" ></a></li>
		<%} else { %>
		<!-- 로그아웃 아이콘 -->	
		<li id="logout" title="로그아웃" ><a href="user_logout_action.jsp" ><img src="image/logout_icon.png" ></a></li>
		<%} %>
		<!-- 검색 아이콘 -->
		<li id="mainsearch" title="검색">
		<!-- cart_view_...image 카트삭제 이미지로 버튼 만든거 참고 -->
		<form id="mainsearchform" method="post">
			<input type='text' style="border: solid 1px grey; width:200px; height:30px; padding: 0" name='mainsearchkeyword' >
			<input type="hidden" name='searchbtn' value='' >
				<a href='javascript:mainsearch();'><img src='image/mainsearchbtn.png'></a>
		</form>
		</li>
			<!-- 마이페이지 아이콘 -->
			<li id="mypage" title="나의페이지" >
			<a href="user_view.jsp" ><img src="image/shopmain_user.png" ></a></li>
		<!-- 장바구니 아이콘 -->
		<li id="cart" title="장바구니"><a href="cart_view_select_update_qyt_all_check_delete_image.jsp" title="장바구니"><img src="image/shopmain_cart.png" ></a></li>
	</ul>
</div>

<div id="mainlogo">
	<ul>
		<!-- 메인로고 아이콘 -->
		<li id='logo' title='메인로고'><a href="shop_main.jsp" id='maintext'><img src="image/tiffany_logo.png" width="auto" height="100px"></a></li>
	</ul>
</div>