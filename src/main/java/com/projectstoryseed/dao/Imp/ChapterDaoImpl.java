package com.projectstoryseed.dao.Imp;

import com.projectstoryseed.dao.ChapterDao;
import com.projectstoryseed.models.Chapter;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Repository
@Transactional
public class ChapterDaoImpl implements ChapterDao {

    @Autowired
    private SessionFactory sessionFactory;

    public void addChapter(Chapter Chapter){
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(Chapter);
        session.flush();
    }

    public Chapter getChapterById(String id){
        Session session = sessionFactory.getCurrentSession();
        Chapter Chapter = (Chapter) session.get(Chapter.class, id);

        return Chapter;
    }

    public List<Chapter> getChapterList(){
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Chapter");
        List<Chapter> Chapters = query.list();
        session.flush();

        return Chapters;
    }
    public void deleteChapter(String id){
        Session session = sessionFactory.getCurrentSession();
        session.delete(getChapterById(id));
        session.flush();

    }
}
