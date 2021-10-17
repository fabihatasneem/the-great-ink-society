package org.thegreatinksociety.webPageControllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GenrePageController {

    @RequestMapping("/genre")
    public String getGenrePage(){
        return "genre";
    }

}
