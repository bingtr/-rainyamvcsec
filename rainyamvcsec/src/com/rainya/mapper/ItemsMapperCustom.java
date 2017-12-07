package com.rainya.mapper;

import java.util.List;


import com.rainya.po.ItemsCustom;
import com.rainya.po.ItemsQueryVo;

public interface ItemsMapperCustom {
	
    public List<ItemsCustom> findItemsList(ItemsQueryVo itemsQueryVo) throws Exception;
}