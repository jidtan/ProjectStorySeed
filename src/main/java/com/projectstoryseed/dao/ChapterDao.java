package com.projectstoryseed.dao;

import com.projectstoryseed.models.Chapter;

import java.util.List;


public interface ChapterDao {

    void addChapter(Chapter chapter);

    Chapter getChapterById(String id);

    List<Chapter> getChapterList();

    void deleteChapter(String id);

}
