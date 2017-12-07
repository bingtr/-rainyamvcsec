package com.rainya.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rainya.po.RyBanner;
import com.rainya.service.RyBannerService;

@Controller
@RequestMapping("banner")
public class RyBannerController {
	
	private Logger logger = LoggerFactory.getLogger(RyBannerController.class);
	
	@Autowired
	private RyBannerService ryBannerService;
	
	/**
	 * 查询所有的banner
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("loadBanners")
	public @ResponseBody List<RyBanner> loadBanners() throws Exception{
		
		return ryBannerService.queryAllRyBannerList();
	}
}
