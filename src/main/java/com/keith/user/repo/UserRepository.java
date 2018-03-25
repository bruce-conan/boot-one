package com.keith.user.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.keith.user.model.User;

/**
 * 用户持久层操作接口
 *
 * Created by bysocket on 21/07/2017.
 */
public interface UserRepository extends JpaRepository<User, Long> {


}
