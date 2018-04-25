package com.projectstoryseed.dao;

import com.projectstoryseed.models.Comment;

import java.util.List;


public interface CommentDao {

    void addComment(Comment comment);

    Comment getCommentById(String id);

    List<Comment> getCommentList();

    void deleteComment(String id);
}
