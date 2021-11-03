package org.thegreatinksociety.webPageControllers;

import org.apache.poi.xwpf.extractor.XWPFWordExtractor;
import org.apache.poi.xwpf.usermodel.XWPFDocument;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.thegreatinksociety.entities.Chapters;
import org.thegreatinksociety.repositories.ChaptersRepository;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

@Controller
public class ChapterWritePageController {

    @Autowired
    private ChaptersRepository chaptersRepository;

    @RequestMapping("/chapterWrite")
    public String getChapterWritePage(HttpSession session, Model model, HttpServletRequest request) throws IOException {
        Long chapterId;
        Chapters chapter;
        if (request.getParameter("chapterId") != null) {
            chapterId = Long.parseLong(request.getParameter("chapterId"));

            chapter = chaptersRepository.findChaptersById(chapterId);

            String fileName = chapter.getTextFileLink();

            XWPFWordExtractor extractor;
            File file = new File(fileName);
            FileInputStream fis = new FileInputStream(file.getAbsolutePath());
            XWPFDocument document = new XWPFDocument(fis);
            extractor = new XWPFWordExtractor(document);
            String fileData = extractor.getText();


            model.addAttribute("chapterName", chapter.getChapterName());
            model.addAttribute("paragraph", fileData);
            model.addAttribute("chapterId", chapter.getId());
        }
        String bookId = session.getAttribute("bookId") == null ? "0" : session.getAttribute("bookId").toString();
        model.addAttribute("bookId", bookId);

        return "chapterWrite";
    }
}
