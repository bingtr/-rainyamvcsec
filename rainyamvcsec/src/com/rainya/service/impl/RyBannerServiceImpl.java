package com.rainya.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rainya.mapper.RyBannerMapper;
import com.rainya.mapper.RyBannerMapperCustom;
import com.rainya.po.RyBanner;
import com.rainya.po.RyBannerExample;
import com.rainya.po.RyBannerExample.Criteria;
import com.rainya.service.RyBannerService;

@Service
public class RyBannerServiceImpl implements RyBannerService {

	@Autowired
	private RyBannerMapper ryBannerMapper;
	
	@Autowired
	private RyBannerMapperCustom ryBannerMapperCustom;
	
	@Override
	public List<RyBanner> queryAllRyBannerList() {
		RyBannerExample example = new RyBannerExample();
		Criteria criteria = example.createCriteria();
		criteria.andStatusEqualTo("1");
		example.setOrderByClause("SHOW_ORDER ASC");
		return ryBannerMapper.selectByExample(example);
	}

}
