package com.projectstoryseed.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class LoginController {

    @RequestMapping("/")
    public String login(){return "/login";}



    @RequestMapping("/newStoryForm")
    public String newstory(){return "/newStoryForm";}

    @RequestMapping("/storyOverview")
    public String overview(){return "/storyOverview";}

    @RequestMapping("/readStory")
    public String read(){return "/readStory";}
}







//LoginController
//ReadController
//WriteController
//AccountController
//HomeController

//DAO

//MODELS
//AccountDaoImpl
//StoryDaoImpl
//chapter
//comment
//rating
//library
