package org.thegreatinksociety.repositories;

import org.springframework.data.repository.CrudRepository;
import org.thegreatinksociety.entities.Subscribers;

import java.util.List;

public interface SubscribersRepository extends CrudRepository<Subscribers, Long> {
    List<Subscribers> findBySubscribedToId(Long userId);

    List<Subscribers> findBySubscriberId(Long userId);
}
