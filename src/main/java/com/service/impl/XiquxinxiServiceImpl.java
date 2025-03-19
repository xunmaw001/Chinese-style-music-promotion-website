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


import com.dao.XiquxinxiDao;
import com.entity.XiquxinxiEntity;
import com.service.XiquxinxiService;
import com.entity.vo.XiquxinxiVO;
import com.entity.view.XiquxinxiView;

@Service("xiquxinxiService")
public class XiquxinxiServiceImpl extends ServiceImpl<XiquxinxiDao, XiquxinxiEntity> implements XiquxinxiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<XiquxinxiEntity> page = this.selectPage(
                new Query<XiquxinxiEntity>(params).getPage(),
                new EntityWrapper<XiquxinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<XiquxinxiEntity> wrapper) {
		  Page<XiquxinxiView> page =new Query<XiquxinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<XiquxinxiVO> selectListVO(Wrapper<XiquxinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public XiquxinxiVO selectVO(Wrapper<XiquxinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<XiquxinxiView> selectListView(Wrapper<XiquxinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public XiquxinxiView selectView(Wrapper<XiquxinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
