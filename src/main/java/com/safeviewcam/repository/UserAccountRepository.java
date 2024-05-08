package com.safeviewcam.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.safeviewcam.model.UserAccount;

@Repository
public interface UserAccountRepository extends JpaRepository<UserAccount, String>{

}
