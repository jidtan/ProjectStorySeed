package com.projectstoryseed.models;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;


@Entity
public class Story {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private String storyId;

    @NotEmpty (message = "Story Title must not be empty")
    private String storyTitle;
    private String likes;
    private String genre;
    private String datereleased;
    private String location;
    private String language;
    private String summary;
    private String tag;
    private String status;

    @Transient
    private MultipartFile storyImage;

    //fk author
    //likes
    //views
    //bookmarks


    public String getStoryId() {
        return storyId;
    }

    public void setStoryId(String storyId) {
        this.storyId = storyId;
    }

    public String getStoryTitle() {
        return storyTitle;
    }

    public void setStoryTitle(String storyTitle) {
        this.storyTitle = storyTitle;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public String getDatereleased() {
        return datereleased;
    }

    public void setDatereleased(String datereleased) {
        this.datereleased = datereleased;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getLikes() {return likes;}

    public void setLikes(String likes) {this.likes = likes;}

    public MultipartFile getStoryImage() {return storyImage;}

    public void setStoryImage(MultipartFile storyImage) {this.storyImage = storyImage;}
}
