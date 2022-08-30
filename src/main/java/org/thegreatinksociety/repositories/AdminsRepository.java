package org.thegreatinksociety.repositories;

import org.springframework.data.repository.CrudRepository;
import org.thegreatinksociety.entities.Admins;

public interface AdminsRepository extends CrudRepository<Admins, Long> {
    Admins findByAdminUserNameAndPassword(String username, String Password);
}
