package org.thegreatinksociety.repositories;

import org.springframework.data.repository.CrudRepository;
import org.thegreatinksociety.entities.Language;

import java.util.List;

public interface LanguageRepository extends CrudRepository<Language, Long> {

    List<Language> findAll();

    Language findLanguageById(Long id);

}
