/***************userinfo select**************/
/*'guard3'회원의 정보 출력*/
select userid from userinfo where userid='guard3';

/*모든 회원의 정보 출력*/
select * from userinfo;

/***************userinfo update**************/
/*(회원입장) 'guard2' 회원 정보 수정 - 아이디변경 불가 */
update userinfo set password='update',name='업데이트',phone='12121212',email='update@email.com'
where userid='guard2';

/***************userinfo delete**************/
/*guard1의 회원탈퇴-회원정보 모두삭제됨*/
delete from userinfo where userid ='guard1';

commit;