package com.sside.quickstart.repository;

import org.springframework.data.repository.PagingAndSortingRepository;

import com.sside.quickstart.entity.User;

public interface UserDao extends PagingAndSortingRepository<User, Long> {
	User findByLoginName(String loginName);
}
