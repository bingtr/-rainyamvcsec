package com.rainya.service;

import java.util.List;

import com.rainya.po.ItemsCustom;
import com.rainya.po.ItemsQueryVo;

public interface ItemsService {
	
	/**
	 * 查询商品列表
	 * @param itemsQueryVo
	 * @return
	 * @throws Exception
	 */
	public List<ItemsCustom> queryItermsList(ItemsQueryVo itemsQueryVo)throws Exception;
	
	/**
	 * 根据商品id查询商品信息
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public ItemsCustom queryItemsById(Integer id)throws Exception;
	
	/**
	 * 根据id更新商品信息
	 * @param id
	 * @param itemsCustom
	 * @throws Exception
	 */
	public void updateItemsById(Integer id,ItemsCustom itemsCustom)throws Exception;
}
