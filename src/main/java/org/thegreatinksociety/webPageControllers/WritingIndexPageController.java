package org.thegreatinksociety.webPageControllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WritingIndexPageController {

    @RequestMapping("/writingIndex")
    public String getWritingIndex() {
        return "writingIndex";
    }
}
