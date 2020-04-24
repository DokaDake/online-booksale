package com.laver.mbook.service;

import java.util.List;

import com.laver.mbook.domain.Comment;

public interface ICommentService {
	int insert(Comment record);
	
	List<Comment> selectBybid(Integer bid);
}
