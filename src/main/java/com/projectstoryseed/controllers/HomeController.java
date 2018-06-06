package com.projectstoryseed.controllers;

import com.projectstoryseed.dao.StoryDao;
import com.projectstoryseed.models.Story;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;


import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;


@Controller
public class HomeController {


    @Autowired
    public StoryDao storyDao;

    @RequestMapping("/home")
    public String getStories(Model model) {
        List<Story> stories = storyDao.getStoryList();
        model.addAttribute("stories", stories);

        return "/home";
    }


    @RequestMapping("/home/storyOverview/{storyId}")
    public String  viewStoryOverview(@PathVariable String storyId, Model model)throws IOException {
        Story story = storyDao.getStoryById(storyId);
        model.addAttribute(story);

        return "/storyOverview";
    }
}


