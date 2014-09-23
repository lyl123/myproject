package com.sside.quickstart.repository;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.sside.quickstart.entity.AvUserInfo;
import com.sside.quickstart.entity.Task;

public interface AvUserInfoDao extends PagingAndSortingRepository<AvUserInfo, Long>,
                                       JpaSpecificationExecutor<AvUserInfo>{

	
}
