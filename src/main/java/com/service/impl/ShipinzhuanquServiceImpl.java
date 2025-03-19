package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.ShipinzhuanquDao;
import com.entity.ShipinzhuanquEntity;
import com.service.ShipinzhuanquService;
import com.entity.vo.ShipinzhuanquVO;
import com.entity.view.ShipinzhuanquView;

@Service("shipinzhuanquService")
public class ShipinzhuanquServiceImpl extends ServiceImpl<ShipinzhuanquDao, ShipinzhuanquEntity> implements ShipinzhuanquService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ShipinzhuanquEntity> page = this.selectPage(
                new Query<ShipinzhuanquEntity>(params).getPage(),
                new EntityWrapper<ShipinzhuanquEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ShipinzhuanquEntity> wrapper) {
		  Page<ShipinzhuanquView> page =new Query<ShipinzhuanquView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ShipinzhuanquVO> selectListVO(Wrapper<ShipinzhuanquEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ShipinzhuanquVO selectVO(Wrapper<ShipinzhuanquEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ShipinzhuanquView> selectListView(Wrapper<ShipinzhuanquEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ShipinzhuanquView selectView(Wrapper<ShipinzhuanquEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
