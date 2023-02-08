package com.itwill.shop.order.test;

import com.itwill.shop.order.OrderService;

public class OrderServiceTestMain {

	public static void main(String[] args) throws Exception {
		OrderService orderService = new OrderService();
		
				//주문 1개 삭제
				//orderService.deleteByOrderNo(12); //test 완료
				
				//특정회원의 주문 전체삭제
				//orderService.delete("cmy0"); //test완료
				
				//특정회원의 주문목록
				//System.out.println(orderService.orderList("cmy0"));
				
				//특정회원의 주문+주문아이템 목록
				System.out.println(orderService.orderWithOrderItemList("cmy0"));
				
				//상품에서 직접 주문
				//orderService.create("cmy0", 1, 2); //test 완료
	}

}
