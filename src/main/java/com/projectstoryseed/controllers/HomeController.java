package com.projectstoryseed.controllers;

import com.projectstoryseed.dao.StoryDao;
import com.projectstoryseed.models.Story;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


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

    @RequestMapping("/CreateStory1")
    public String createStory1(){return "/CreateStory1";}

    @RequestMapping("/writeStory")
    public String writeStory(){return "/writeStory";}
}
