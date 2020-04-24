package com.laver.mbook.service;


import com.laver.mbook.domain.Book;
import com.laver.mbook.domain.Cart;

public interface ICartService {
	Cart addGoodsInCart(Book book ,int number,Cart cart);
	
	Cart removeGoodsFromCart(Book book,Cart cart);
	
	Cart calTotalPrice(Cart cart);
	
}
