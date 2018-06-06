package com.projectstoryseed.dao.Imp;
import com.projectstoryseed.dao.StoryDao;
import com.projectstoryseed.models.Story;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


import java.io.IOException;
import java.util.List;


@Repository
@Transactional
public class StoryDaoImpl implements StoryDao {

    @Autowired
    private SessionFactory sessionFactory;

    public void addStory(Story Story){
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(Story);
        session.flush();
    }

//    public Story getStoryById(String id){
//        Session session = sessionFactory.getCurrentSession();
//        Story Story = (Story) session.get(Story.class, id);
//
//        return Story;
//    }

    public Story getStoryById(String storyId) throws IOException{
        Session session = sessionFactory.getCurrentSession();
        Story Story = (Story) session.get(Story.class, storyId);

        for (Story story:getStoryList()){
            if(story.getStoryId().equals(storyId)){
                return story;
            }
        }

        throw new IOException("No story found");
    }


    public List<Story> getStoryList(){
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Story");
        List<Story> stories = query.list();
        session.flush();

        return stories;
    }
    public void deleteStory(String id)throws IOException{
        Session session = sessionFactory.getCurrentSession();
        session.delete(getStoryById(id));
        session.flush();
        throw new IOException("No story found");
    }
}
