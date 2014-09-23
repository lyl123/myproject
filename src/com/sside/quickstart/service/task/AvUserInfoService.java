package com.sside.quickstart.service.task;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import org.springside.modules.persistence.DynamicSpecifications;
import org.springside.modules.persistence.SearchFilter;
import org.springside.modules.persistence.SearchFilter.Operator;

import com.sside.quickstart.entity.AvUserInfo;
import com.sside.quickstart.repository.AvUserInfoDao;

//Spring Bean的标识.
@Component
// 默认将类中的所有public函数纳入事务管理.
@Transactional(readOnly = true)
public class AvUserInfoService {

	private AvUserInfoDao avUserInfoDao;

	public List<AvUserInfo> getAllAvUserInfo() {
		return (List<AvUserInfo>) avUserInfoDao.findAll();
	}

	public Page<AvUserInfo> getAvUserInfo(Long userId,
			Map<String, Object> filterParams, int pageNumber, int pageSize,
			String sortType) {
		PageRequest pageRequest = buildPageRequest(pageNumber, pageSize,
				sortType);
		//Specification<AvUserInfo> spec = buildSpecification(userId, filterParams);
		return avUserInfoDao.findAll(pageRequest);
		//return avUserInfoDao.findAll(spec, pageRequest);
	}

	/**
	 * 创建分页请求.
	 */
	private PageRequest buildPageRequest(int pageNumber, int pagzSize,
			String sortType) {
		Sort sort = null;
		if ("auto".equals(sortType)) {
			sort = new Sort(Direction.DESC, "id");
		} else if ("title".equals(sortType)) {
			sort = new Sort(Direction.ASC, "title");
		}

		return new PageRequest(pageNumber - 1, pagzSize, sort);
	}

	/**
	 * 创建动态查询条件组合.
	 */
	private Specification<AvUserInfo> buildSpecification(Long userId,
			Map<String, Object> filterParams) {
		Map<String, SearchFilter> filters = SearchFilter.parse(filterParams);
		filters.put("user.id", new SearchFilter("user.id", Operator.EQ, userId));
		Specification<AvUserInfo> spec = DynamicSpecifications.bySearchFilter(
				filters.values(), AvUserInfo.class);
		return spec;
	}

	
	@Autowired
	public void setAvUserInfoDao(AvUserInfoDao avUserInfoDao) {
		this.avUserInfoDao = avUserInfoDao;
	}
}
