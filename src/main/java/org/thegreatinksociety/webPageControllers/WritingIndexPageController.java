package org.thegreatinksociety.webPageControllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.thegreatinksociety.global.GlobalVariable;

@Controller
public class WritingIndexPageController {

    @RequestMapping("/writingIndex")
    public String getWritingIndex(Model model) {
        model.addAttribute("coverLink", GlobalVariable.WRITING_BACKGROUND_LINK);
        return "writingIndex";
    }
}
