package org.thegreatinksociety.repositories;

import org.springframework.data.repository.CrudRepository;
import org.thegreatinksociety.entities.Chapters;

import java.util.List;

public interface ChaptersRepository extends CrudRepository<Chapters, Long> {
    List<Chapters> findByIdLessThanAndStatusOrderByIdAsc(Long id, int status);

    List<Chapters> findByIdLessThanAndStatus(Long id, int status);

    List<Chapters> findByBook_Id(Long id);

    Chapters findChaptersById(Long id);
}
