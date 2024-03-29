package com.yedam.java.book.service;

import java.util.List;

public interface BookService {
	public List<BookVO> getBookList();
	public int getNextMaxBookNo();
	public boolean insertBook(BookVO vo);
	public List<BookRentJoinVO> getRentBookStatus();
}
