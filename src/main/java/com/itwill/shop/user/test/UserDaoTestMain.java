package com.itwill.shop.user.test;

import com.itwill.shop.user.User;
import com.itwill.shop.user.UserDao;

public class UserDaoTestMain {

	public static void main(String[] args) throws Exception{
		UserDao userDao=new UserDao();
		//회원 등록
		//System.out.println("1.insert:"+
		//userDao.create(new User("test1", "1111", "스펀지밥","bob1@naver.com","010-1111-2222","강남구")));
		//회원 정보 수정
		//User updateUser = new User("test1", "1111", "스펀지밥", "bob1@naver.com","010-1111-2222","강남구");
		//System.out.println("2.update:"+userDao.update(updateUser));
	    //ID로 회원 검색
     	//System.out.println("3.findUser:"+userDao.findUser("test3"));
		//회원 삭제
		System.out.println("4.remove:"+userDao.delete("test2"));
		//전체 회원 검색
		//System.out.println("5.findUserList:"+userDao.findUserList());
		//ID로 회원 중복 체크
		//System.out.println("6.existedUser:"+userDao.existedUser("test1"));
		//System.out.println("6.existedUser:"+userDao.existedUser("test2"));
		//System.out.println("6.existedUser:"+userDao.existedUser("test3"));
		//System.out.println("7. find user by email"+userDao.findUser("jing3@naver.com"));				
	}

}