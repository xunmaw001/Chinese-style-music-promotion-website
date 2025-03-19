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


import com.dao.YinlewenjianDao;
import com.entity.YinlewenjianEntity;
import com.service.YinlewenjianService;
import com.entity.vo.YinlewenjianVO;
import com.entity.view.YinlewenjianView;

@Service("yinlewenjianService")
public class YinlewenjianServiceImpl extends ServiceImpl<YinlewenjianDao, YinlewenjianEntity> implements YinlewenjianService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<YinlewenjianEntity> page = this.selectPage(
                new Query<YinlewenjianEntity>(params).getPage(),
                new EntityWrapper<YinlewenjianEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<YinlewenjianEntity> wrapper) {
		  Page<YinlewenjianView> page =new Query<YinlewenjianView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<YinlewenjianVO> selectListVO(Wrapper<YinlewenjianEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public YinlewenjianVO selectVO(Wrapper<YinlewenjianEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<YinlewenjianView> selectListView(Wrapper<YinlewenjianEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public YinlewenjianView selectView(Wrapper<YinlewenjianEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
