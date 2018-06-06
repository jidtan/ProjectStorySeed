package com.projectstoryseed.controllers;

import com.projectstoryseed.dao.StoryDao;
import com.projectstoryseed.models.Story;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;

/**
 * Created by JadeMakie on 5/24/2018.
 */
@Controller
public class UserController {

    private Path path;

    @Autowired
    private StoryDao storyDao;


    @RequestMapping("admin/CreateStory")
    public String addStory(Model model){
        Story story=new Story();
//        story.setStoryTitle("The Tower");
//        story.setSummary("sadasdasdasd");
//        story.setStatus("ongoing");

        model.addAttribute("story",story);
        return "/CreateStory";
    }

    @RequestMapping(value ="admin/CreateStory", method = RequestMethod.POST)
    public String addStoryPost(@Valid @ModelAttribute("story") Story story, BindingResult result,
                               HttpServletRequest request){

        if(result.hasErrors()){
            return "/CreateStory";
        }
        storyDao.addStory(story);

        MultipartFile storyImage = story.getStoryImage();
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path= Paths.get(rootDirectory+"\\WEB-INF\\resources\\storyImages\\"+story.getStoryId()+".png");

        if(storyImage != null && !storyImage.isEmpty()){
            try{
                storyImage.transferTo(new File(path.toString()));
            }catch(Exception e){
                e.printStackTrace();
                throw new RuntimeException("StoryImage saving fail",e);

            }
        }

        return "redirect:/home";
    }

    @RequestMapping("admin/writeStory")
    public String writeStory(){return "/writeStory";}
}
