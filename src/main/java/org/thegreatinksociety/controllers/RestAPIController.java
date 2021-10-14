package org.thegreatinksociety.controllers;

import org.docx4j.openpackaging.exceptions.Docx4JException;
import org.docx4j.openpackaging.packages.WordprocessingMLPackage;
import org.docx4j.openpackaging.parts.WordprocessingML.MainDocumentPart;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

@RestController
public class RestAPIController {

    @RequestMapping(method = RequestMethod.POST, value = "/uploadChapter")
    public boolean uploadChapter(@RequestParam String chapterName, String description, String chapterWriting) throws Docx4JException, IOException {
        WordprocessingMLPackage wordPackage = WordprocessingMLPackage.createPackage();
        MainDocumentPart mainDocumentPart = wordPackage.getMainDocumentPart();

        String[] texts = chapterWriting.split("\n");
        for (String text : texts) {
            mainDocumentPart.addParagraphOfText(text);
        }
        System.out.println(chapterWriting);
        File demoFile = new File("Demo.txt");
        FileWriter writer = new FileWriter(demoFile);
        writer.write(chapterWriting);
        writer.close();
        File exportFile = new File("welcome2.docx");
        wordPackage.save(exportFile);

        return true;
    }
}
