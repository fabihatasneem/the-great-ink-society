package org.thegreatinksociety.repositories;

import org.springframework.data.repository.CrudRepository;
import org.thegreatinksociety.entities.Users;

public interface UsersRepository extends CrudRepository<Users, Long> {

}
