package org.thegreatinksociety.repositories;

import org.springframework.data.repository.CrudRepository;
import org.thegreatinksociety.entities.Badges;

import java.util.List;

public interface BadgesRepository extends CrudRepository<Badges, Long> {
    Badges findBadgesById(Long badgeId);
}
