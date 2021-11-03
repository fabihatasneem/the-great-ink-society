package org.thegreatinksociety.repositories;

import org.springframework.data.repository.CrudRepository;
import org.thegreatinksociety.entities.Badges;

public interface BadgesRepository extends CrudRepository<Badges, Long> {
    Badges findBadgesById(Long badgeId);
}
