package org.thegreatinksociety.repositories;

import org.springframework.data.repository.CrudRepository;
import org.thegreatinksociety.entities.Users;

public interface UsersRepository extends CrudRepository<Users, Long> {

    Users findByUserName(String userName);

    Users findUsersById(Long userId);

    Users findByUserNameAndPasswordAndStatus(String userName, String password, int status);

    Users findByUserNameAndStatus(String userName, int status);


}
