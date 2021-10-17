package org.thegreatinksociety.webPageControllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class ChapterWritePageController {

    @RequestMapping("/chapterWrite")
    public String getChapterWritePage(HttpSession session, Model model) {

        String bookId = session.getAttribute("bookId") == null ? "0" : session.getAttribute("bookId").toString();
        model.addAttribute("bookId", bookId);

        return "chapterWrite";
    }
}
