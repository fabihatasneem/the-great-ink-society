package org.thegreatinksociety.restAPIControllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.thegreatinksociety.entities.Genre;
import org.thegreatinksociety.entities.Reports;
import org.thegreatinksociety.repositories.GenreRepository;
import org.thegreatinksociety.repositories.ReportsRepository;

import java.util.List;

@RestController
public class GetReports {

    @Autowired
    private ReportsRepository reportsRepository;

    @RequestMapping(method = RequestMethod.GET, value = "/getReports")
    public List<Reports> getReports(){
        return reportsRepository.findAll();
    }
}
