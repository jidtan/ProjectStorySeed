package com.projectstoryseed.dao.Imp;

import com.projectstoryseed.dao.CommentDao;
import com.projectstoryseed.models.Comment;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


import java.util.List;



@Repository
@Transactional
public class CommentDaoImpl implements CommentDao {

    @Autowired
    private SessionFactory sessionFactory;

    public void addComment(Comment Comment){
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(Comment);
        session.flush();
    }

    public Comment getCommentById(String id){
        Session session = sessionFactory.getCurrentSession();
        Comment Comment = (Comment) session.get(Comment.class, id);

        return Comment;
    }

    public List<Comment> getCommentList(){
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from comment");
        List<Comment> Comments = query.list();
        session.flush();

        return Comments;
    }
    public void deleteComment(String id){
        Session session = sessionFactory.getCurrentSession();
        session.delete(getCommentById(id));
        session.flush();

    }
}

