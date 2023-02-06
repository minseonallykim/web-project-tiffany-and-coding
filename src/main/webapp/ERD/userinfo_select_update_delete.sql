--------------------------------userinfo---------------------------------
--회원정보수정
update userinfo set password = 'aaaa1', name = '이름수정', email = 'update@google.com', phone = '010-1234-5678', address = '경기도' where userid='test1';

--회원삭제
delete from userinfo where userid='test2';

--id로 회원찾기
select*from userinfo where userid = 'test3';

--전체회원찾기
select*from userinfo;
