package org.thegreatinksociety.webPageControllers;

import org.apache.poi.xwpf.extractor.XWPFWordExtractor;
import org.apache.poi.xwpf.usermodel.XWPFDocument;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.thegreatinksociety.entities.Chapters;
import org.thegreatinksociety.global.GlobalFunction;
import org.thegreatinksociety.global.GlobalVariable;
import org.thegreatinksociety.repositories.ChaptersRepository;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.URL;

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

            String fileLink = chapter.getTextFileLink();

            XWPFWordExtractor extractor;
            URL file = new URL(fileLink);
            XWPFDocument document = new XWPFDocument(file.openStream() );
            extractor = new XWPFWordExtractor(document);
            String fileData = extractor.getText();

            String draftDesign = "";
            if (chapter.getStatus() == 0) {
                draftDesign = "<a href=\"" + fileLink + "\"> <u style=\"color:blue\"> CLick here to download your previous version. </u> </a>";
            }

            model.addAttribute("draftDesign", draftDesign);


            model.addAttribute("chapterName", chapter.getChapterName());
            model.addAttribute("paragraph", fileData);
            model.addAttribute("chapterId", chapter.getId());

        }
        String bookId = session.getAttribute("bookId") == null ? "0" : session.getAttribute("bookId").toString();
        model.addAttribute("bookId", bookId);

        GlobalFunction.firebaseConfig(model);

        return "chapterWrite";
    }
}
