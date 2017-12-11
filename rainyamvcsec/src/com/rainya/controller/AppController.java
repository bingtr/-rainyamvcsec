package com.rainya.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * APP配置项
 * @author zhangbin001
 *
 */
@Controller
@RequestMapping("app")
public class AppController {
	
	private Logger logger = LoggerFactory.getLogger(AppController.class);
	
	/**
	 * 首页加载项
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("index")
	public @ResponseBody Map<String, String> loadBanners(HttpServletRequest request) throws Exception{
		logger.info("加载首页配置"+request.getSession().getServletContext().getContextPath());
		Map<String, String> map = new HashMap<String, String>();
		map.put("appPath", request.getSession().getServletContext().getContextPath());
		return map;
	}
}
