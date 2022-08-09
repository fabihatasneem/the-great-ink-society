package org.thegreatinksociety.webPageControllers;

import org.apache.poi.xwpf.extractor.XWPFWordExtractor;
import org.apache.poi.xwpf.usermodel.XWPFDocument;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.thegreatinksociety.entities.Chapters;
import org.thegreatinksociety.entities.Episodes;
import org.thegreatinksociety.entities.Users;
import org.thegreatinksociety.repositories.EpisodesRepository;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileInputStream;

@Controller
public class ListeningPageController {

    @Autowired
    EpisodesRepository episodesRepository;

    @RequestMapping("/listening")
    public String getListeningPage(ModelMap model, @RequestParam Long id, HttpSession session) {

//        Episodes episode = episodesRepository.findEpisodesById(id);
//        Users user = episode.getUser();
//        int isUploader = 0;
//        if (user.getId() == Integer.parseInt(session.getAttribute("userId").toString())) {
//            isUploader = 1;
//        }
//
//        String fileName = episode.getAudioFileName();
//
//        XWPFWordExtractor extractor;
//        File file = new File(fileName);
//        FileInputStream fis = new FileInputStream(file.getAbsolutePath());
//        XWPFDocument document = new XWPFDocument(fis);
//        extractor = new XWPFWordExtractor(document);
//        String fileData = extractor.getText();
//        String text = "";
//        String[] texts = fileData.split("\n");
//        for (String s: texts) {
//            text += "<p>" + s + "</p>";
//        }
//
//        model.addAttribute("bookName", episode.getBook().getBookName());
//        model.addAttribute("chapterName", episode.getChapterName());
//        model.addAttribute("genre", episode.getBook().getGenre().getName());
//        model.addAttribute("creationDate", episode.getCreationDate());
//        model.addAttribute("totalReacts", episode.getNumberOfLikes());
//        model.addAttribute("totalViews", episode.getTotalViews());
//        model.addAttribute("totalComments", episode.getNumberOfComments());
//        model.addAttribute("paragraph", text);
//        model.addAttribute("userFullName", user.getFullName());
//        model.addAttribute("userFollowers", user.getFollowers());
//        model.addAttribute("numberOfAwards", user.getNumberOfAwards());
//        model.addAttribute("numberOfBadges", user.getNumberOfBadges());
//        model.addAttribute("numberOfReacts", user.getWritingLikes());
//        model.addAttribute("userBio", user.getBio());
//
//        model.addAttribute("isWriter", isUploader);
//        model.addAttribute("chapterId", episode.getId());
//        model.addAttribute("bookId", episode.getBook().getId());
//        model.addAttribute("userId", episode.getUser().getId());
//        model.addAttribute("genreId", episode.getBook().getGenre().getId());


        return "listening";
    }
}
