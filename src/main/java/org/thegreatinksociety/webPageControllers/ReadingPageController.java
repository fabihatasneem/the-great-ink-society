package org.thegreatinksociety.webPageControllers;

import org.apache.poi.xwpf.extractor.XWPFWordExtractor;
import org.apache.poi.xwpf.usermodel.XWPFDocument;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

@Controller
public class ReadingPageController {
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
}
