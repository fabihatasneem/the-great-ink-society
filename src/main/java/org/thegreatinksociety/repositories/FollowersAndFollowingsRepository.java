package org.thegreatinksociety.repositories;

import org.springframework.data.repository.CrudRepository;
import org.thegreatinksociety.entities.FollowersAndFollowings;

import java.util.List;

public interface FollowersAndFollowingsRepository extends CrudRepository<FollowersAndFollowings, Long> {
    List<FollowersAndFollowings> findByFollowingId(Long userId);

    List<FollowersAndFollowings> findByFollowerId(Long userId);
}
