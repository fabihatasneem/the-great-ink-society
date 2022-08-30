package org.thegreatinksociety.repositories;

import org.springframework.data.repository.CrudRepository;
import org.thegreatinksociety.entities.Reports;

import java.util.List;

public interface ReportsRepository extends CrudRepository<Reports, Long> {
    List<Reports> findAll();
}
