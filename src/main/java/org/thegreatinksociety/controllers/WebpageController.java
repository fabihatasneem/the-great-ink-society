package org.thegreatinksociety.controllers;

import org.apache.poi.xwpf.extractor.XWPFWordExtractor;
import org.apache.poi.xwpf.usermodel.XWPFDocument;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

@Controller
public class WebpageController {

    @RequestMapping("/")
    public String getIndex() {
        return "index";
    }

    @RequestMapping("/podcast")
    public String getPodcastIndex() {
        return "podcastIndex";
    }

    @RequestMapping("/writing")
    public String getWritingIndex() {
        return "writingIndex";
    }

    @RequestMapping("/events")
    public String getEventsPage() {
        return "events";
    }

    @RequestMapping("/genre")
    public String getGenrePage(){
        return "genre";
    }

    @RequestMapping("/myProfile")
    public String getMyProfilePage() {
        return "myProfile";
    }

    @RequestMapping("/userProfile")
    public String getUserProfilePage() {
        return "userProfile";
    }

    @RequestMapping("/bookCreate")
    public String getBookCreatePage() {
        return "bookCreate";
    }

    @RequestMapping("/write")
    public String submitBook() {
        return "write";
    }

    @RequestMapping("/reading")
    public String getReadingPage(ModelMap model) throws IOException {
        XWPFWordExtractor extractor;
        File file = new File("readingDemo.docx");
        FileInputStream fis = new FileInputStream(file.getAbsolutePath());
        XWPFDocument document = new XWPFDocument(fis);
        extractor = new XWPFWordExtractor(document);
        String fileData = extractor.getText();
        String text = "";
        String[] texts = fileData.split("\n");
        for (String s: texts) {
            text += "<p>" + s + "</p>";
        }
        model.addAttribute("paragraph", text);
        return "reading";
    }

    @RequestMapping("/podcastCreate")
    public String getPodcastCreatePage() {
        return "podcastCreate";
    }

    @RequestMapping("/podcastSubmit")
    public String submitPodcast() {
        return "upload";
    }

    @RequestMapping("/listening")
    public String getListeningPage() {
        return "listening";
    }
}
