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


import com.dao.DiscussshipinzhuanquDao;
import com.entity.DiscussshipinzhuanquEntity;
import com.service.DiscussshipinzhuanquService;
import com.entity.vo.DiscussshipinzhuanquVO;
import com.entity.view.DiscussshipinzhuanquView;

@Service("discussshipinzhuanquService")
public class DiscussshipinzhuanquServiceImpl extends ServiceImpl<DiscussshipinzhuanquDao, DiscussshipinzhuanquEntity> implements DiscussshipinzhuanquService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscussshipinzhuanquEntity> page = this.selectPage(
                new Query<DiscussshipinzhuanquEntity>(params).getPage(),
                new EntityWrapper<DiscussshipinzhuanquEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscussshipinzhuanquEntity> wrapper) {
		  Page<DiscussshipinzhuanquView> page =new Query<DiscussshipinzhuanquView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscussshipinzhuanquVO> selectListVO(Wrapper<DiscussshipinzhuanquEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscussshipinzhuanquVO selectVO(Wrapper<DiscussshipinzhuanquEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscussshipinzhuanquView> selectListView(Wrapper<DiscussshipinzhuanquEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscussshipinzhuanquView selectView(Wrapper<DiscussshipinzhuanquEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
