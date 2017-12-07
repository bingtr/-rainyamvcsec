package com.rainya.service.impl;

import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rainya.mapper.ItemsMapper;
import com.rainya.mapper.ItemsMapperCustom;
import com.rainya.po.Items;
import com.rainya.po.ItemsCustom;
import com.rainya.po.ItemsQueryVo;
import com.rainya.service.ItemsService;

@Service
public class ItemsServiceImpl implements ItemsService {

	@Autowired
	public ItemsMapperCustom itemsMapperCustom;
	
	@Autowired
	public ItemsMapper itemsMapper;
	
	@Override
	public List<ItemsCustom> queryItermsList(ItemsQueryVo itemsQueryVo) throws Exception {
		List<ItemsCustom> list = itemsMapperCustom.findItemsList(itemsQueryVo);
		return list;
	}

	@Override
	public ItemsCustom queryItemsById(Integer id) throws Exception {
		Items items = itemsMapper.selectByPrimaryKey(id);
		ItemsCustom itemsCustom = new ItemsCustom();
		BeanUtils.copyProperties(items, itemsCustom);
		return itemsCustom;
	}

	@Override
	public void updateItemsById(Integer id, ItemsCustom itemsCustom) throws Exception {
		itemsCustom.setId(id);
		itemsMapper.updateByPrimaryKey(itemsCustom);
	}

}
