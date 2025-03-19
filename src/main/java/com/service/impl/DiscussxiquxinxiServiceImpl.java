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


import com.dao.DiscussxiquxinxiDao;
import com.entity.DiscussxiquxinxiEntity;
import com.service.DiscussxiquxinxiService;
import com.entity.vo.DiscussxiquxinxiVO;
import com.entity.view.DiscussxiquxinxiView;

@Service("discussxiquxinxiService")
public class DiscussxiquxinxiServiceImpl extends ServiceImpl<DiscussxiquxinxiDao, DiscussxiquxinxiEntity> implements DiscussxiquxinxiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscussxiquxinxiEntity> page = this.selectPage(
                new Query<DiscussxiquxinxiEntity>(params).getPage(),
                new EntityWrapper<DiscussxiquxinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscussxiquxinxiEntity> wrapper) {
		  Page<DiscussxiquxinxiView> page =new Query<DiscussxiquxinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscussxiquxinxiVO> selectListVO(Wrapper<DiscussxiquxinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscussxiquxinxiVO selectVO(Wrapper<DiscussxiquxinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscussxiquxinxiView> selectListView(Wrapper<DiscussxiquxinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscussxiquxinxiView selectView(Wrapper<DiscussxiquxinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
