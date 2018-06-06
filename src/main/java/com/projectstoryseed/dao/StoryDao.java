package com.projectstoryseed.dao;

import com.projectstoryseed.models.Story;

import java.io.IOException;
import java.util.List;


public interface StoryDao {

    void addStory(Story story);

    Story getStoryById(String id) throws IOException;

    List<Story> getStoryList();

    void deleteStory(String id)throws IOException;
}
