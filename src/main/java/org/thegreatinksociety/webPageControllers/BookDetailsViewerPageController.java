package org.thegreatinksociety.webPageControllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BookDetailsViewerPageController {

    @RequestMapping("/bookDetailsViewer")
    public String getBookDetailsViewerPage(){
        return "bookDetailsViewer";
    }
}
