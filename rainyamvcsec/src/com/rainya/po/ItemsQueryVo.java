package com.rainya.po;

/**
 * @author Administrator
 *
 */
public class ItemsQueryVo {
	/**
	 * 商品属性
	 */
	private Items items;
	/**
	 * 商品扩展属性
	 */
	private ItemsCustom itemsCustom;

	public Items getItems() {
		return items;
	}

	public void setItems(Items items) {
		this.items = items;
	}

	public ItemsCustom getItemsCustom() {
		return itemsCustom;
	}

	public void setItemsCustom(ItemsCustom itemsCustom) {
		this.itemsCustom = itemsCustom;
	}
	
}
