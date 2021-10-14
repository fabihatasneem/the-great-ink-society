package org.thegreatinksociety.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.thegreatinksociety.global.GlobalVariable;
import org.thegreatinksociety.util.FileUpload;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.*;
import java.util.Collection;

@Controller
public class BookSubmitController {

    @RequestMapping(value = "/submitBook")
    public void submitBook(HttpServletResponse response, HttpServletRequest request, @RequestParam String bookName, @RequestParam String description, @RequestParam String language, @RequestParam String genre) throws IOException, ServletException {
        Collection<Part> parts;
        String path = "F:\\New folder\\";
        parts = request.getParts();
        if (parts != null && parts.size() > 0) {
            Part filePart_recordFile = request.getPart("file");
            FileUpload.upload(filePart_recordFile, path);
        }
        response.sendRedirect(GlobalVariable.localUrl + "/write");
    }

}
