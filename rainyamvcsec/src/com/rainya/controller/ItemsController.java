package com.rainya.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.rainya.po.Items;
import com.rainya.po.ItemsCustom;
import com.rainya.po.ItemsQueryVo;
import com.rainya.service.ItemsService;

@Controller
@RequestMapping("/items")
public class ItemsController{
	@Autowired
	private ItemsService itemsService;
	
	@RequestMapping("/queryItems")
	public ModelAndView handleRequest(HttpServletRequest arg0, HttpServletResponse arg1) throws Exception {
		List<ItemsCustom> itemsList = new ArrayList<ItemsCustom>();
		
		ItemsQueryVo itemsQueryVo = new ItemsQueryVo();
		Items items = new Items();
		items.setName("笔记本");
		itemsQueryVo.setItems(items);
		itemsList = itemsService.queryItermsList(itemsQueryVo);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("itemsList", itemsList);
		modelAndView.setViewName("items/itemsList");
		return modelAndView;
	}

}
