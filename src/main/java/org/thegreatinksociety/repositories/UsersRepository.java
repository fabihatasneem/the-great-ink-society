package org.thegreatinksociety.repositories;

import org.springframework.data.repository.CrudRepository;
import org.thegreatinksociety.entities.Users;

public interface UsersRepository extends CrudRepository<Users, Long> {

    Users findByUserNameIsAndPassword(String userName, String password);

    Users findByUserName(String userName);

    Users findUsersById(Long userId);
}
