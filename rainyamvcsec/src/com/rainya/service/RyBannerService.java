package com.rainya.service;

import java.util.List;

import com.rainya.po.RyBanner;

public interface RyBannerService {
	/**
	 * 查询所有启用的Banner
	 * @return
	 */
	public List<RyBanner> queryAllRyBannerList();
	
	
}
