/***************userinfo insert**************/
insert into userinfo values('soonhuck1234','1234','이순혁','soonhuck@email.com','01011112222',11);
insert into userinfo values('soonja234','2345','이순자','soonja@email.com','01022223333',22);
insert into userinfo values('junghuck34','3456','이정혁','junghuck@email.com','01033334444',33);
insert into userinfo values('soonhuck4','4567','김순혁','soonhuck@email.com','01044445555',44);
insert into userinfo values('soonja5','5678','김순자','soonja@email.com','01055556666',55);
insert into userinfo values('junghuck6','6789','김정혁','junghuck@email.com','01066667777',66);

/*
이름            널?       유형            
------------- -------- ------------- 
USER_ID       NOT NULL VARCHAR2(100) 
USER_PASSWORD          VARCHAR2(100)  
USER_NAME              VARCHAR2(100) 
USER_EMAIL             VARCHAR2(100) 
USER_PHONE             VARCHAR2(50)  
USER_ADDRESS           VARCHAR2(100)    
*/

desc userinfo;