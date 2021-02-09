package com.javainuse.repository;

import com.javainuse.entity.Product;
import com.javainuse.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface LoginRepository  extends JpaRepository<User, Long> {
    Optional<User> findByUsernameAndPassword(String userName, String password);
}
