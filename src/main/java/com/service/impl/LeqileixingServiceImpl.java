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


import com.dao.LeqileixingDao;
import com.entity.LeqileixingEntity;
import com.service.LeqileixingService;
import com.entity.vo.LeqileixingVO;
import com.entity.view.LeqileixingView;

@Service("leqileixingService")
public class LeqileixingServiceImpl extends ServiceImpl<LeqileixingDao, LeqileixingEntity> implements LeqileixingService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<LeqileixingEntity> page = this.selectPage(
                new Query<LeqileixingEntity>(params).getPage(),
                new EntityWrapper<LeqileixingEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<LeqileixingEntity> wrapper) {
		  Page<LeqileixingView> page =new Query<LeqileixingView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<LeqileixingVO> selectListVO(Wrapper<LeqileixingEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public LeqileixingVO selectVO(Wrapper<LeqileixingEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<LeqileixingView> selectListView(Wrapper<LeqileixingEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public LeqileixingView selectView(Wrapper<LeqileixingEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
