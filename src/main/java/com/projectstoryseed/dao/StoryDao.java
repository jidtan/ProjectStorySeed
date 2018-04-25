package com.projectstoryseed.dao;

import com.projectstoryseed.models.Story;

import java.util.List;


public interface StoryDao {

    void addStory(Story story);

    Story getStoryById(String id);

    List<Story> getStoryList();

    void deleteStory(String id);
}
