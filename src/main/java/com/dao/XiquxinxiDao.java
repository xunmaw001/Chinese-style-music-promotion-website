package com.dao;

import com.entity.XiquxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.XiquxinxiVO;
import com.entity.view.XiquxinxiView;


/**
 * 戏曲信息
 * 
 * @author 
 * @email 
 * @date 2020-12-31 09:59:17
 */
public interface XiquxinxiDao extends BaseMapper<XiquxinxiEntity> {
	
	List<XiquxinxiVO> selectListVO(@Param("ew") Wrapper<XiquxinxiEntity> wrapper);
	
	XiquxinxiVO selectVO(@Param("ew") Wrapper<XiquxinxiEntity> wrapper);
	
	List<XiquxinxiView> selectListView(@Param("ew") Wrapper<XiquxinxiEntity> wrapper);

	List<XiquxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<XiquxinxiEntity> wrapper);
	
	XiquxinxiView selectView(@Param("ew") Wrapper<XiquxinxiEntity> wrapper);
	
}
